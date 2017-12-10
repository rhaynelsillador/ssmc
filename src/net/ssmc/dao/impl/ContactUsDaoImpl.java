package net.ssmc.dao.impl;

import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.sun.jmx.snmp.Timestamp;

import net.ssmc.dao.ContactUsDao;
import net.ssmc.enums.InquiryStatus;
import net.ssmc.model.ContactUs;
import net.ssmc.utils.ApplicationUtils;
import net.ssmc.utils.DataTableHelper;

public class ContactUsDaoImpl implements ContactUsDao{
	
	private final String SQL 				= "SELECT * FROM CONTACTUS WHERE status <> 'DELETED' ";
	private static final String SQLCOUNT 	= "SELECT COUNT(id) FROM CONTACTUS WHERE status <> 'DELETED' ";
	private static final String SQLCOUNTLASTMONTH = "SELECT COUNT(id) FROM CONTACTUS WHERE dateadded >= ?";
	private static final String SQLCOUNTLASTMONTHPERDAY = "SELECT COUNT(id) FROM CONTACTUS WHERE dateadded BETWEEN ? AND ?";
	private static final String SQLCOUNTUNIQUELASTMONTHPERDAYPERDAY = "SELECT COUNT(id) as id FROM CONTACTUS WHERE dateadded BETWEEN ? AND ? GROUP BY email";
	private static final String SQLCOUNTUNIQUELASTMONTH = "SELECT COUNT(id) as id FROM CONTACTUS WHERE dateadded >= ? GROUP BY email";
	private static final String INSERT 		= "INSERT INTO CONTACTUS (subject, message, email, dateadded) VALUES (?, ?, ?, ?)";
	private static final String UPDATESTATUS= "UPDATE CONTACTUS SET status = ?, userid=? WHERE id= ? ";
	private static final String DELETEBYID 	= "DELETE FROM CONTACTUS WHERE id= ? ";
	private static final String FINDONE 	= "SELECT * FROM CONTACTUS WHERE id = ?";
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	@Autowired
	private DataTableHelper dataTableHelper;
	
	@Override
	public long count() {
		return jdbcTemplate.queryForObject(SQLCOUNT, Long.class);
	}

	@Override
	public void create(ContactUs contactUs) {
		jdbcTemplate.update(INSERT, new Object[] {
			contactUs.getSubject(),
			contactUs.getMessage(),
			contactUs.getEmail(),
			contactUs.getDateAdded()
		});
	}

	@Override
	public List<ContactUs> retrieveAll(Map<String, String> request) {
		int start = Integer.parseInt(request.get("current"));
		int end = Integer.parseInt(request.get("rowCount"));
		String SQL = this.SQL + " " + dataTableHelper.sort(request) + " LIMIT "+((start-1)*end)+", "+(end);
		
		
		System.out.println(SQL);
		
		return jdbcTemplate.query(SQL, new BeanPropertyRowMapper<ContactUs>(ContactUs.class));
	}

	@Override
	public void delete(int id) {
		jdbcTemplate.update(DELETEBYID, new Object[] {id});
	}

	@Override
	
	public void update(InquiryStatus status, long id, long userId) {
		jdbcTemplate.update(UPDATESTATUS, new Object[] {status.toString(), userId, id});
		
	}

	@Override
	public List<ContactUs> retrieveAll(int limit) {
		return jdbcTemplate.query(SQL + " LIMIT "+limit, new BeanPropertyRowMapper<ContactUs>(ContactUs.class));
	}

	@Override
	public ContactUs findOne(long id) {
		return jdbcTemplate.queryForObject(FINDONE, new Object[] {id}, new BeanPropertyRowMapper<ContactUs>(ContactUs.class));
	}

	@Override
	public long countLastMonth() {
		Calendar cal = Calendar.getInstance();	
		cal.setTime(new Date());
		cal.add(Calendar.MONTH, -1);
		return jdbcTemplate.queryForObject(SQLCOUNTLASTMONTH, new Object[] {new Timestamp(cal.getTimeInMillis())}, Long.class);
	}

	@Override
	public long countLastMonthPerDay(Date date) {
		return jdbcTemplate.queryForObject(SQLCOUNTLASTMONTHPERDAY, new Object[] {ApplicationUtils.DATEF.format(date)+" 00:00:00", ApplicationUtils.DATEF.format(date)+" 23:59:59"}, Long.class);
	}
	
	@Override
	public List<ContactUs> countUniqueLastMonth() {
		Calendar cal = Calendar.getInstance();	
		cal.setTime(new Date());
		cal.add(Calendar.MONTH, -1);
		return jdbcTemplate.query(SQLCOUNTUNIQUELASTMONTH, new Object[] {new Timestamp(cal.getTimeInMillis())}, new BeanPropertyRowMapper<ContactUs>(ContactUs.class));
	}
	
	@Override
	public List<ContactUs> countUniqueLastMonthPerDay(Date date) {
		return jdbcTemplate.query(SQLCOUNTUNIQUELASTMONTHPERDAYPERDAY, new Object[] {ApplicationUtils.DATEF.format(date)+" 00:00:00", ApplicationUtils.DATEF.format(date)+" 23:59:59"}, new BeanPropertyRowMapper<ContactUs>(ContactUs.class));
	}
	
}
