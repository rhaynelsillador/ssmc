package net.ssmc.dao.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.support.GeneratedKeyHolder;

import net.ssmc.dao.RegisteredAccountDao;
import net.ssmc.enums.dtable.DTableParam;
import net.ssmc.enums.dtable.RegisterAccounts;
import net.ssmc.model.RegisteredAccount;
import net.ssmc.utils.AES;
import net.ssmc.utils.Settings;

public class RegisteredAccountDaoImpl implements RegisteredAccountDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	
	@Override
	public long count(Map<String, String> request) {
		final String FINDALL = "SELECT COUNT(ID) FROM registered_account "+queryFilter(request); 
		return jdbcTemplate.queryForObject(FINDALL, Long.class);
	}

	@Override
	public long create(RegisteredAccount account) {
		final String INSERT = "INSERT INTO registered_account (email, password, number, firstname, lastname, datecreated, middlename, status, date, birthday, gender, address, type, partnerid, partneraccount) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		GeneratedKeyHolder holder = new GeneratedKeyHolder();
		jdbcTemplate.update(new PreparedStatementCreator() {
		    @Override
		    public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
		        PreparedStatement statement = con.prepareStatement(INSERT, Statement.RETURN_GENERATED_KEYS);
		        statement.setString(1, account.getEmail());
		        statement.setString(2, AES.encrypt(Settings.DEFAULTPASSWPRD));
		        statement.setLong(3, account.getNumber());
		        statement.setString(4, account.getFirstName());
		        statement.setString(5, account.getLastName());
		        statement.setTimestamp(6, new Timestamp(System.currentTimeMillis()));
		        statement.setString(7, account.getMiddleName());
		        statement.setInt(8, 1);
		        statement.setDate(9, new Date(System.currentTimeMillis()));
		        statement.setString(10, account.getBirthday());
		        statement.setString(11, account.getGender().toString());
		        statement.setString(12, account.getAddress());
		        statement.setString(13, account.getType().toString());
		        statement.setLong(14, account.getPartnerId());
		        statement.setString(15, account.getPartnerAccount());
		        return statement;
		    }
		}, holder);
		long primaryKey = holder.getKey().longValue();
		return primaryKey;
	}

	@Override
	public RegisteredAccount findOne(long id) throws Exception{
		final String FINDONE = "SELECT * FROM registered_account WHERE ID=?";
		return jdbcTemplate.queryForObject(FINDONE, new Object[]{id}, new BeanPropertyRowMapper<RegisteredAccount>(RegisteredAccount.class));
	}

	@Override
	public List<RegisteredAccount> findAll(Map<String, String> request) {
		String sortBy = request.get(DTableParam.SORTVAL.getName()).toUpperCase();
		RegisterAccounts sortCol = RegisterAccounts.values()[Integer.parseInt(request.get(DTableParam.SORTKEY.getName()))];
		final String FINDALL = "SELECT RA.*, P.name as partner FROM registered_account as RA LEFT JOIN partner as P ON P.id=RA.partnerid "+queryFilter(request)+" ORDER BY "+sortCol+" "+sortBy+" LIMIT "+request.get(DTableParam.START.getName())+", "+request.get(DTableParam.LENGTH.getName()); 
		System.out.println(FINDALL);
		
		return jdbcTemplate.query(FINDALL, new BeanPropertyRowMapper<RegisteredAccount>(RegisteredAccount.class));
	}

	
	
	private String queryFilter(Map<String, String> request){
		System.out.println(request);
		StringBuilder builder = new StringBuilder();
		String email = request.get(RegisterAccounts.EMAIL.toString().toLowerCase()).trim();
		String firstName = request.get(RegisterAccounts.FIRSTNAME.toString().toLowerCase()).trim();
		String lastName = request.get(RegisterAccounts.LASTNAME.toString().toLowerCase()).trim();
		String status = request.get(RegisterAccounts.STATUS.toString().toLowerCase()).trim();
		String dateCreatedFrom = request.get("DATECREATEDFROM".toLowerCase()).trim();
		String dateCreatedTo = request.get("DATECREATEDTO".toLowerCase()).trim();
		String dateLastLoginFrom = request.get("DATELASTLOGINFROM".toLowerCase()).trim();
		String dateLastLoginTo = request.get("DATELASTLOGINTO".toLowerCase()).trim();
		
		System.out.println(dateCreatedFrom);
		
		if(!email.isEmpty()){
			builder.append("EMAIL LIKE '%"+email+"%' AND ");
		}
		if(!firstName.isEmpty()){
			builder.append("FIRSTNAME LIKE '%"+firstName+"%' AND ");
		}
		if(!lastName.isEmpty()){
			builder.append("LASTNAME LIKE '%"+lastName+"%' AND ");
		}
		if(!status.isEmpty()){
			builder.append("STATUS = "+status+" AND ");
		}
		if(!dateCreatedFrom.isEmpty() && !dateCreatedTo.isEmpty()){
			builder.append("DATECREATED BETWEEN '"+dateCreatedFrom+"' AND '"+dateCreatedTo+"' AND ");
		}else if(!dateCreatedFrom.isEmpty()){
			builder.append("DATECREATED > '"+dateCreatedFrom+"' AND ");
		}else if(!dateCreatedTo.isEmpty()){
			builder.append("DATECREATED < '"+dateCreatedTo+"' AND ");
		}
		
		if(!dateLastLoginFrom.isEmpty() && !dateLastLoginTo.isEmpty()){
			builder.append("DATELASTLOGIN BETWEEN '"+dateLastLoginFrom+"' AND '"+dateLastLoginTo+"' AND ");
		}else if(!dateLastLoginFrom.isEmpty()){
			builder.append("DATELASTLOGIN > '"+dateCreatedFrom+"' AND ");
		}else if(!dateLastLoginFrom.isEmpty()){
			builder.append("DATELASTLOGIN < '"+dateCreatedFrom+"' AND ");
		}
		if(!builder.toString().isEmpty()){
			return "WHERE "+(builder.toString().substring(0, builder.toString().length()-4)); 
		}
		return builder.toString();
		
	}

	@Override
	public void create(List<RegisteredAccount> registeredAccounts) {
		final String INSERT = "INSERT INTO registered_account (email, password, number, firstname, lastname, datecreated, middlename, status) VALUES (?,?,?,?,?,?,?,?)";
		jdbcTemplate.batchUpdate(INSERT, new BatchPreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement ps, int i) throws SQLException {
				RegisteredAccount account = registeredAccounts.get(i);
				ps.setString(1, account.getEmail());
				 ps.setString(2, account.getPassword());
				 ps.setLong(3, account.getNumber());
				 ps.setString(4, account.getFirstName());
				 ps.setString(5, account.getLastName());
				 ps.setTimestamp(6, new Timestamp(System.currentTimeMillis()));
				 ps.setString(7, account.getMiddleName());
				 ps.setInt(8, account.getStatus());
			}
			@Override
			public int getBatchSize() {
				return registeredAccounts.size();
			}
		  });
	}

	@Override
	public List<Long> totalRegisterThisMonth() {
		Calendar cal = Calendar.getInstance();	
		cal.setTime(new java.util.Date());
		cal.add(Calendar.MONTH, -1);
		final String FINDALL = "SELECT COUNT(ID) FROM registered_account WHERE date >= ? GROUP BY date "; 
		return jdbcTemplate.queryForList(FINDALL, new Object[]{new Date(cal.getTimeInMillis())}, Long.class);
	}

	@Override
	public List<Long> totalLoginThisMonth() {
		Calendar cal = Calendar.getInstance();	
		cal.setTime(new java.util.Date());
		cal.add(Calendar.MONTH, -1);
		final String FINDALL = "SELECT COUNT(ID) FROM registered_account WHERE datelastlogin >= ? GROUP BY SUBSTRING(datelastlogin, 1, 10) "; 
		System.out.println(FINDALL + " :: " + cal.getTimeInMillis());
		return jdbcTemplate.queryForList(FINDALL, new Object[]{cal.getTimeInMillis()}, Long.class);
	}

//	@Override
//	public long totalRegisterPerdayThisMonth() {
//		Calendar cal = Calendar.getInstance();	
//		cal.setTime(new java.util.Date());
//		cal.add(Calendar.MONTH, -1);
//		final String FINDALL = "SELECT COUNT(ID) FROM registered_account WHERE datelastlogin >= ?"; 
//		return jdbcTemplate.queryForObject(FINDALL, new Object[]{new Date(cal.getTimeInMillis())}, Long.class);
//	}
//
//	@Override
//	public long totalLoginPerdayThisMonth() {
//		// TODO Auto-generated method stub
//		return 0;
//	}
//	
	
}
