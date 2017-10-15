package net.ssmc.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import net.ssmc.dao.ExamResultDao;
import net.ssmc.model.ExamResult;

public class ExamResultDaoImpl implements ExamResultDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	private final String FINDALL = "SELECT *, (SELECT COUNT(ID) FROM result WHERE examresultid=ER.ID) as result FROM examresult AS ER WHERE accountid=?";
	
	@Override
	public void create(ExamResult examResult) {
		
	}

	@Override
	public List<ExamResult> findByAccount(long accountId) {
		return jdbcTemplate.query(FINDALL, new Object[]{accountId}, new BeanPropertyRowMapper<ExamResult>(ExamResult.class));
	}

}
