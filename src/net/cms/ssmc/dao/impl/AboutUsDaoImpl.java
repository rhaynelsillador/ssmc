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

import net.cms.ssmc.dao.AboutUsDao;
import net.cms.ssmc.model.AboutUs;
import net.ssmc.utils.DataTableHelper;

public class AboutUsDaoImpl implements AboutUsDao {

	private final String SQL 				= "SELECT * FROM ABOUTUS ";
	private static final String FINDONE		= "SELECT * FROM ABOUTUS WHERE id = ?";
	private static final String SQLCOUNT 	= "SELECT COUNT(id) FROM ABOUTUS ";
	private static final String INSERT 		= "INSERT INTO ABOUTUS (name, content, dateadded, dateupdated, type) VALUES (?, ?, ?, ?, ?)";
	private static final String DELETEBYID 	= "DELETE FROM ABOUTUS WHERE id= ? ";
	private static final String UPDATE	 	= "UPDATE ABOUTUS SET name= ?, content = ?, type=?, dateupdated = ? WHERE id= ? ";
	private static final String UPDATESORTER = "UPDATE ABOUTUS SET sorter= ? WHERE id= ?";
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public long count() {
		return jdbcTemplate.queryForObject(SQLCOUNT, Long.class);
	}
	
	@Override
	public long create(AboutUs aboutUs) {
		GeneratedKeyHolder holder = new GeneratedKeyHolder();
		jdbcTemplate.update(new PreparedStatementCreator() {
		    @Override
		    public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
		        PreparedStatement statement = con.prepareStatement(INSERT, Statement.RETURN_GENERATED_KEYS);
		        statement.setString(1, aboutUs.getName());
		        statement.setString(2, aboutUs.getContent());
		        statement.setTimestamp(3, new Timestamp(System.currentTimeMillis()));
		        statement.setTimestamp(4, new Timestamp(System.currentTimeMillis()));
		        statement.setString(5, aboutUs.getType().toString());
		        return statement;
		    }
		}, holder);

		long primaryKey = holder.getKey().longValue();
		return primaryKey;
	}

	@Override
	public List<AboutUs> retrieveAll() {
		return jdbcTemplate.query(SQL + " ORDER BY SORTER ASC", new BeanPropertyRowMapper<AboutUs>(AboutUs.class));
	}
	
	@Override
	public List<AboutUs> retrieveAll(Map<String, String> request) {
		int start = Integer.parseInt(request.get("current"));
		int end = Integer.parseInt(request.get("rowCount"));
		String SQL = this.SQL + " " + DataTableHelper.sort(request) + " LIMIT "+((start-1)*end)+", "+(end);
		return jdbcTemplate.query(SQL, new BeanPropertyRowMapper<AboutUs>(AboutUs.class));
	}

	@Override
	public AboutUs retrieve(int id) throws Exception{
		return jdbcTemplate.queryForObject(FINDONE, new Object[]{id}, new BeanPropertyRowMapper<AboutUs>(AboutUs.class));
	}

	@Override
	public void update(AboutUs aboutUs, int id) {
		jdbcTemplate.update(UPDATE, new Object[] {
			aboutUs.getName(),
			aboutUs.getContent(),
			aboutUs.getType().toString(),
			new Timestamp(System.currentTimeMillis()),
			id
		});
	}

	@Override
	public void delete(int id) {
		jdbcTemplate.update(DELETEBYID, new Object[] {id});
	}

	@Override
	public void updateSorter(List<AboutUs> aboutUs) {
		int index = 0;
		for (AboutUs aboutUs2 : aboutUs) {
			index = index + 1;
			jdbcTemplate.update(UPDATESORTER, new Object[] {index, aboutUs2.getId()});
		}
		
	}

}
