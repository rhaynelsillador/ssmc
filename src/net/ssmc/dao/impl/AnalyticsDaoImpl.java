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
import net.ssmc.utils.ApplicationUtils;

public class AnalyticsDaoImpl implements AnalyticsDao {

	private final static String QUERY = "SELECT count(id) as count, SUBSTRING(date, 1, 16) as date  FROM analitycs GROUP BY SUBSTRING(date, 1, 16) ORDER BY SUBSTRING(date, 1, 16) DESC LIMIT 60";
	private final static String COUNTACTIVE = "SELECT count(id) FROM analitycs WHERE date > ? GROUP BY ip";
	private final static String COUNTACTIVEHISTORY = "SELECT count(id) as count, CONCAT(SUBSTRING(date, 1, 10),' 00:00:00') as date FROM analitycs GROUP BY SUBSTRING(date, 1, 10) ORDER BY SUBSTRING(date, 1, 15) DESC LIMIT 30	";
	private final static String COUNTLASMONTH = "SELECT COUNT(id) FROM analitycs WHERE date > ?";
	private final static String SQLCOUNTLASTMONTHPERDAY = "SELECT COUNT(id) FROM analitycs WHERE date BETWEEN ? AND ?";
	
	private static final String SQLCOUNTUNIQUELASTMONTHPERDAYPERDAY = "SELECT COUNT(id) as count FROM analitycs WHERE date BETWEEN ? AND ? GROUP BY ip";
	private static final String SQLCOUNTUNIQUELASTMONTH = "SELECT COUNT(id) as count FROM analitycs WHERE date >= ? GROUP BY ip";
	
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
		return jdbcTemplate.query(COUNTACTIVEHISTORY, new Object[]{}, new BeanPropertyRowMapper<BrowseCount>(BrowseCount.class));
	}
	
	@Override
	public long countLastMonth() {
		Calendar cal = Calendar.getInstance();	
		cal.setTime(new Date());
		cal.add(Calendar.MONTH, -1);
		return jdbcTemplate.queryForObject(COUNTLASMONTH, new Object[]{new Timestamp(cal.getTimeInMillis())}, Long.class);
	}

	@Override
	public long countLastMonthPerDay(Date date) {
		return jdbcTemplate.queryForObject(SQLCOUNTLASTMONTHPERDAY, new Object[] {ApplicationUtils.DATEF.format(date)+" 00:00:00", ApplicationUtils.DATEF.format(date)+" 23:59:59"}, Long.class);
	}

	@Override
	public List<BrowseCount> countUniqueLastMonth() {
		Calendar cal = Calendar.getInstance();	
		cal.setTime(new Date());
		cal.add(Calendar.MONTH, -1);
		return jdbcTemplate.query(SQLCOUNTUNIQUELASTMONTH, new Object[]{new Timestamp(cal.getTimeInMillis())}, new BeanPropertyRowMapper<BrowseCount>(BrowseCount.class));
	}
	
	@Override
	public List<BrowseCount> countUniqueLastMonthPerDay(Date date) {
		return jdbcTemplate.query(SQLCOUNTUNIQUELASTMONTHPERDAYPERDAY, new Object[] {ApplicationUtils.DATEF.format(date)+" 00:00:00", ApplicationUtils.DATEF.format(date)+" 23:59:59"}, new BeanPropertyRowMapper<BrowseCount>(BrowseCount.class));
	}
}
