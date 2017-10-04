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

import net.cms.ssmc.dao.FaqDao;
import net.cms.ssmc.model.Faq;
import net.cms.ssmc.model.FaqTemp;

public class FaqDaoImpl implements FaqDao{

	private final String SQL = "SELECT * FROM faq ";
	private static final String DELETEBYID = "DELETE FROM faq WHERE id= ? ";
	private static final String SQLCOUNT = "SELECT COUNT(id) FROM faq ";
	private static final String SQLUPDATE = "UPDATE faq SET title =?, type=?, question=?, answer=?, dateupdated=? WHERE id= ? ";
	private static final String SQLUPDATESTATUS = "UPDATE faq SET status=?, dateupdated=? WHERE id= ? ";
	private static final String SQLCREATE = "INSERT INTO faq (question, answer, dateadded, dateupdated, status, type, title) VALUES (?,?,?,?,?,?,?)";
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public long count() {
		return jdbcTemplate.queryForObject(SQLCOUNT, Long.class);
	}
	
	@Override
	public long create(FaqTemp faq) {
		GeneratedKeyHolder holder = new GeneratedKeyHolder();
		jdbcTemplate.update(new PreparedStatementCreator() {
		    @Override
		    public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
		        PreparedStatement statement = con.prepareStatement(SQLCREATE, Statement.RETURN_GENERATED_KEYS);
		        statement.setString(1, faq.getQuestion());
		        statement.setString(2, faq.getAnswer());
		        statement.setTimestamp(3, new Timestamp(System.currentTimeMillis()));
		        statement.setTimestamp(4, new Timestamp(System.currentTimeMillis()));
		        statement.setBoolean(5, true);
		        statement.setString(6, faq.getType().toString());
		        statement.setString(7, faq.getTitle());
		        return statement;
		    }
		}, holder);

		long primaryKey = holder.getKey().longValue();
		return primaryKey;
	}

	@Override
	public Faq retrieve(int id) {
		return jdbcTemplate.queryForObject(SQL+" WHERE id = ?", new Object[]{id}, new BeanPropertyRowMapper<Faq>(Faq.class));
	}

	@Override
	public List<Faq> retrieveAll(Map<String, String> request) {
		int start = Integer.parseInt(request.get("current"));
		int end = Integer.parseInt(request.get("rowCount"));
		return jdbcTemplate.query(SQL+" LIMIT "+((start-1)*end)+", "+(end), new BeanPropertyRowMapper<Faq>(Faq.class));
	}

	@Override
	public void update(FaqTemp faq) {
		jdbcTemplate.update(SQLUPDATE, new Object[] {
				faq.getTitle(),
				faq.getType().toString(),
				faq.getQuestion(),
				faq.getAnswer(),
				new Timestamp(System.currentTimeMillis()),
				faq.getMainid()
		});
	}

	@Override
	public void updateStatus(Faq faq) {
		jdbcTemplate.update(SQLUPDATESTATUS, new Object[] {
			faq.isStatus() ? false : true,
			new Timestamp(System.currentTimeMillis()),
			faq.getId()
		});
	}

	@Override
	public void delete(int id) {
		jdbcTemplate.update(DELETEBYID, new Object[] {id});
	}

	

}
