package net.ssmc.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
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
import net.ssmc.model.Role;
import oracle.net.aso.b;

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
		final String INSERT = "INSERT INTO registered_account (email, password, number, firstname, lastname, datecreated, middlename, status) VALUES (?,?,?,?,?,?,?,?)";
		GeneratedKeyHolder holder = new GeneratedKeyHolder();
		jdbcTemplate.update(new PreparedStatementCreator() {
		    @Override
		    public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
		        PreparedStatement statement = con.prepareStatement(INSERT, Statement.RETURN_GENERATED_KEYS);
		        statement.setString(1, account.getEmail());
		        statement.setString(2, account.getPassword());
		        statement.setLong(3, account.getNumber());
		        statement.setString(4, account.getFirstName());
		        statement.setString(5, account.getLastName());
		        statement.setTimestamp(6, new Timestamp(System.currentTimeMillis()));
		        statement.setString(7, account.getMiddleName());
		        statement.setBoolean(8, account.isStatus());
		        return statement;
		    }
		}, holder);
		long primaryKey = holder.getKey().longValue();
		return primaryKey;
	}

	@Override
	public RegisteredAccount findOne(long id) {
		final String FINDONE = "SELECT * FROM registered_account WHERE ID=?";
		return jdbcTemplate.queryForObject(FINDONE, new Object[]{id}, new BeanPropertyRowMapper<RegisteredAccount>(RegisteredAccount.class));
	}

	@Override
	public List<RegisteredAccount> findAll(Map<String, String> request) {
		String sortBy = request.get(DTableParam.SORTVAL.getName()).toUpperCase();
		RegisterAccounts sortCol = RegisterAccounts.values()[Integer.parseInt(request.get(DTableParam.SORTKEY.getName()))];
		final String FINDALL = "SELECT * FROM registered_account "+queryFilter(request)+" ORDER BY "+sortCol+" "+sortBy+" LIMIT "+request.get(DTableParam.START.getName())+", "+request.get(DTableParam.LENGTH.getName()); 
		System.out.println(FINDALL);
		
		return jdbcTemplate.query(FINDALL, new BeanPropertyRowMapper<RegisteredAccount>(RegisteredAccount.class));
	}

	
	
	private String queryFilter(Map<String, String> request){
		StringBuilder builder = new StringBuilder();
		String email = request.get(RegisterAccounts.EMAIL.toString().toLowerCase()).trim();
		String firstName = request.get(RegisterAccounts.FIRSTNAME.toString().toLowerCase()).trim();
		String lastName = request.get(RegisterAccounts.LASTNAME.toString().toLowerCase()).trim();
		String status = request.get(RegisterAccounts.STATUS.toString().toLowerCase()).trim();
		String dateCreated = request.get(RegisterAccounts.DATECREATED.toString().toLowerCase()).trim();
		String dateLastLogin = request.get(RegisterAccounts.DATELASTLOGIN.toString().toLowerCase()).trim();
		
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
		if(!dateCreated.isEmpty()){
			builder.append("DATECREATED LIKE '%"+dateCreated+"%' AND ");
		}
		if(!dateLastLogin.isEmpty()){
			builder.append("DATELASTLOGIN LIKE '%"+dateLastLogin+"%' AND ");
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
				 ps.setBoolean(8, account.isStatus());
			}
			@Override
			public int getBatchSize() {
				return registeredAccounts.size();
			}
		  });
	}
	
	
}
