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

import net.cms.ssmc.dao.FaqTempDao;
import net.cms.ssmc.model.FaqTemp;

public class FaqTempDaoImpl implements FaqTempDao{

	private static final String SQLCOUNT = "SELECT COUNT(id) FROM faq_temp ";
	private static final String FINDALL = "SELECT * FROM faq_temp ";
	private static final String FINDONE = "SELECT * FROM faq_temp WHERE ID=?";
	private static final String FINDONEBYMAIN = "SELECT * FROM faq_temp WHERE mainid=?";
	
	private static final String SQLUPDATE = "UPDATE faq_temp SET title =?, type=?, question=?, answer=?, dateupdated=? WHERE id= ? ";
	private static final String SQLCREATE = "INSERT INTO faq_temp (question, answer, dateadded, dateupdated, status, type, title, mainid, author) VALUES (?,?,?,?,?,?,?,?,?)";
	private static final String SQLDELETE = "DELETE FROM FAQ_TEMP WHERE ID = ?";
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public long count() {
		return jdbcTemplate.queryForObject(SQLCOUNT, Long.class);
	}
	@Override
	public List<FaqTemp> findAll(Map<String, String> request) {
		int start = Integer.parseInt(request.get("current"));
		int end = Integer.parseInt(request.get("rowCount"));
		return jdbcTemplate.query(FINDALL+" LIMIT "+((start-1)*end)+", "+(end), new BeanPropertyRowMapper<FaqTemp>(FaqTemp.class));
	}
	@Override
	public FaqTemp findOne(long id) throws Exception{
		System.out.println(id);
		return jdbcTemplate.queryForObject(FINDONE, new Object[]{id}, new BeanPropertyRowMapper<FaqTemp>(FaqTemp.class));
	}
	
	@Override
	public FaqTemp findOneByMain(long id) throws Exception{
		return jdbcTemplate.queryForObject(FINDONEBYMAIN, new Object[]{id}, new BeanPropertyRowMapper<FaqTemp>(FaqTemp.class));
	}
	
	@Override
	public void update(FaqTemp faqTemp) {
		
		System.out.println(faqTemp);
		
		jdbcTemplate.update(SQLUPDATE, new Object[] {
				faqTemp.getTitle(),
				faqTemp.getType().toString(),
				faqTemp.getQuestion(),
				faqTemp.getAnswer(),
				new Timestamp(System.currentTimeMillis()),
				faqTemp.getId()
		});
	}
	
	@Override
	public long create(FaqTemp faqTemp, long mainId, long userId) {
		GeneratedKeyHolder holder = new GeneratedKeyHolder();
		jdbcTemplate.update(new PreparedStatementCreator() {
		    @Override
		    public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
		        PreparedStatement statement = con.prepareStatement(SQLCREATE, Statement.RETURN_GENERATED_KEYS);
		        statement.setString(1, faqTemp.getQuestion());
		        statement.setString(2, faqTemp.getAnswer());
		        statement.setTimestamp(3, new Timestamp(System.currentTimeMillis()));
		        statement.setTimestamp(4, new Timestamp(System.currentTimeMillis()));
		        statement.setBoolean(5, true);
		        statement.setString(6, faqTemp.getType().toString());
		        statement.setString(7, faqTemp.getTitle());
		        statement.setLong(8, mainId);
		        statement.setLong(9, userId);
		        return statement;
		    }
		}, holder);

		long primaryKey = holder.getKey().longValue();
		return primaryKey;
	}
	@Override
	public void delete(long id) {
		jdbcTemplate.update(SQLDELETE, new Object[] {id});
	}

}
