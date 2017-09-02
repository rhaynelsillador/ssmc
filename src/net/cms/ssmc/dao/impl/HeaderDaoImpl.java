package net.cms.ssmc.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.support.GeneratedKeyHolder;

import net.cms.ssmc.dao.HeaderDao;
import net.cms.ssmc.model.Header;
import net.ssmc.enums.App;
import net.ssmc.utils.DataTableHelper;

public class HeaderDaoImpl implements HeaderDao {

	private final String SQL 				= "SELECT * FROM HEADER ";
	private static final String FINDONE		= "SELECT * FROM HEADER WHERE id = ?";
	private static final String FINDACTIVEONE = "SELECT * FROM HEADER WHERE type = ? AND status = ?";
	private static final String SQLCOUNT 	= "SELECT COUNT(id) FROM HEADER ";
	private static final String INSERT 		= "INSERT INTO HEADER (name, title, content, type, dateadded, dateupdated, page) VALUES (?, ?, ?, ?, ?, ?, ?)";
	private static final String DELETEBYID 	= "DELETE FROM HEADER WHERE id= ? ";
	private static final String UPDATE	 	= "UPDATE HEADER SET name= ?, title = ?, content = ?, type=?, dateupdated = ?, page=? WHERE id= ? ";
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public long count() {
		return jdbcTemplate.queryForObject(SQLCOUNT, Long.class);
	}
	
	@Override
	public long create(Header header) {
		GeneratedKeyHolder holder = new GeneratedKeyHolder();
		jdbcTemplate.update(new PreparedStatementCreator() {
		    @Override
		    public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
		        PreparedStatement statement = con.prepareStatement(INSERT, Statement.RETURN_GENERATED_KEYS);
		        statement.setString(1, header.getName());
		        statement.setString(2, header.getTitle());
		        statement.setString(3, header.getContent());
		        statement.setString(4, header.getType().toString());
		        statement.setTimestamp(5, new Timestamp(System.currentTimeMillis()));
		        statement.setTimestamp(6, new Timestamp(System.currentTimeMillis()));
		        statement.setString(7, header.getPage().toString());
		        return statement;
		    }
		}, holder);

		long primaryKey = holder.getKey().longValue();
		return primaryKey;
	}

	@Override
	public void update(Header header, int id) {
		jdbcTemplate.update(UPDATE, new Object[] {
				header.getName(),
				header.getTitle(),
				header.getContent(),
				header.getType().toString(),
				new Timestamp(System.currentTimeMillis()),
				header.getPage().toString(),
				id
			});
	}

	@Override
	public List<Header> retrieveAll(Map<String, String> request) {
		int start = Integer.parseInt(request.get("current"));
		int end = Integer.parseInt(request.get("rowCount"));
		String SQL = this.SQL + " " + DataTableHelper.sort(request) + " LIMIT "+((start-1)*end)+", "+(end);
		return jdbcTemplate.query(SQL, new BeanPropertyRowMapper<Header>(Header.class));
	}

	@Override
	public Header retrieve(int id) {
		return jdbcTemplate.queryForObject(FINDONE, new Object[]{id}, new BeanPropertyRowMapper<Header>(Header.class));
	}

	@Override
	public Header retrieveActive(App app) {
		return jdbcTemplate.queryForObject(FINDACTIVEONE, new Object[]{app.toString(), true}, new BeanPropertyRowMapper<Header>(Header.class));
	}

	@Override
	public void delete(int id) {
		jdbcTemplate.update(DELETEBYID, new Object[] {id});
	}

	

}
