package net.ssmc.dao.impl;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import net.ssmc.dao.AnalyticsDao;
import net.ssmc.model.BrowseCount;

public class AnalyticsDaoImpl implements AnalyticsDao {

	private final static String QUERY = "SELECT count(id) as count, SUBSTRING(date, 1, 16) as date  FROM analitycs GROUP BY SUBSTRING(date, 1, 16) ORDER BY SUBSTRING(date, 1, 16) DESC LIMIT 60";
	private final static String COUNTACTIVE = "SELECT count(id) FROM analitycs WHERE date > ? GROUP BY ip";
	private final static String COUNTACTIVEHISTORY = "SELECT count(id) as count, SUBSTRING(date, 1, 15) as date FROM analitycs GROUP BY SUBSTRING(date, 1, 15) ORDER BY SUBSTRING(date, 1, 15) DESC LIMIT 50	";
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public List<BrowseCount> findAll() {
		return jdbcTemplate.query(QUERY, new BeanPropertyRowMapper<BrowseCount>(BrowseCount.class));
	}

	@Override
	public long countCurrentOnline() throws Exception{
		Calendar cal = Calendar.getInstance();	
		cal.setTime(new Date());
		cal.add(Calendar.MINUTE, -10);
		long fiveMnsBack = cal.getTimeInMillis();
		System.out.println(new Timestamp(System.currentTimeMillis()));
		System.out.println(new Timestamp(fiveMnsBack));
		return jdbcTemplate.queryForObject(COUNTACTIVE, new Object[]{new Timestamp(fiveMnsBack)}, Long.class);
	}
	
	@Override
	public List<BrowseCount> countCurrentOnlineHistory() {
		return jdbcTemplate.query(COUNTACTIVEHISTORY, new BeanPropertyRowMapper<BrowseCount>(BrowseCount.class));
	}

}
