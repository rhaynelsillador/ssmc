package net.ssmc.dao.impl;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import net.ssmc.dao.UserDao;
import net.ssmc.dao.mapper.UserMapper;
import net.ssmc.model.User;
import net.ssmc.model.form.UserForm;
import net.ssmc.utils.AES;
import net.ssmc.utils.Settings;

public class UserDaoImpl implements UserDao{

	private String sql = "SELECT * FROM USER ";
	private static final String SQLCOUNT = "SELECT COUNT(id) FROM USER ";
	private static final String SQLCOUNTAPPROVER = "SELECT COUNT(id) FROM USER WHERE approver = true";
	private static final String UPDATE = "UPDATE USER SET firstname =?, lastname = ?, mobile = ?, phone=?, email=?, birthday=? WHERE id=?";
	private static final String CREATE = "INSERT INTO USER (username, password, firstname, lastname, mobile, phone, email, birthday, datelastlogin, roleid,datecreated) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
	private static final String UPDATEAPPROVER = "UPDATE USER SET approver =? WHERE id=?";
	private static final String UPDATEPASSWORD = "UPDATE USER SET password =? WHERE id=?";
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	@Autowired
	private ObjectMapper objectMapper;
	
	@Override
	public long count(Map<String, String> request) throws JsonParseException, JsonMappingException, IOException {
		UserForm userForm = objectMapper.readValue(request.get("form"), UserForm.class);
        return jdbcTemplate.queryForObject(SQLCOUNT + filterGenerator(userForm), Long.class);
	}
	
	@Override
	public User retrieve(int id) {
		final String SQL = this.sql+" INNER JOIN role ON role.id=user.roleid WHERE USER.id = ? ";
		return jdbcTemplate.queryForObject(SQL, new Object[]{id}, new UserMapper());
	}

	@Override
	public User retrieve(String username) {
		return null;
	}

	@Override
	public User login(String username, String password) throws Exception{
		System.out.println(password);
		final String SQL = this.sql+" INNER JOIN role ON role.id=user.roleid WHERE username = ? and password = ? ";
		return jdbcTemplate.queryForObject(SQL, new Object[]{username, password}, new UserMapper());
	}

	@Override
	public void create(User user) {
		Timestamp today = new Timestamp(System.currentTimeMillis());
		jdbcTemplate.update(CREATE, new Object[] {
				user.getUsername(),
				AES.encrypt(Settings.DEFAULTPASSWPRD),
				user.getFirstName(),
				user.getLastName(),
				user.getMobile(),
				user.getPhone(),
				user.getEmail(),
				user.getBirthday(),
				today,
				1,
				today
		});
	}

	@Override
	public List<User> retrieveAll(Map<String, String> request) throws JsonParseException, JsonMappingException, IOException {
		UserForm userForm = objectMapper.readValue(request.get("form"), UserForm.class);
		int start = Integer.parseInt(request.get("current"));
		int end = Integer.parseInt(request.get("rowCount"));
		final String SQL = this.sql +" as U INNER JOIN role as R on R.id=U.roleid "+filterGenerator(userForm)+" LIMIT "+((start-1)*end)+", "+(end);
		System.out.println(SQL);
		return jdbcTemplate.query(SQL, new UserMapper());
	}

	@Override
	public void update(User user) {
		jdbcTemplate.update(UPDATE, new Object[] {
				user.getFirstName(),
				user.getLastName(),
				user.getMobile(),
				user.getPhone(),
				user.getEmail(),
				user.getBirthday(),
				user.getId()
		});
	}

	@Override
	public int countApprover() {
		return jdbcTemplate.queryForObject(SQLCOUNTAPPROVER, Integer.class);
	}

	@Override
	public void updateApprover(User user) {
		jdbcTemplate.update(UPDATEAPPROVER, new Object[] {
			user.isApprover(),
			user.getId()
		});
	}
	
	private String filterGenerator(UserForm userForm){
		String filter = "";

		if(!userForm.getUsername().isEmpty()){
			filter += " USERNAME LIKE '%"+userForm.getUsername()+"%' AND ";
		}

		if(!userForm.getFirstName().isEmpty()){
			filter += " FIRSTNAME LIKE '%"+userForm.getFirstName()+"%' AND ";
		}
		if(!userForm.getLastName().isEmpty()){
			filter += " LASTNAME LIKE '%"+userForm.getLastName()+"%' AND ";
		}
		if(!userForm.getMobile().isEmpty()){
			filter += " MOBILE LIKE '%"+userForm.getMobile()+"%' AND ";
		}
		if(!userForm.getPhone().isEmpty()){
			filter += " PHONE LIKE '%"+userForm.getPhone()+"%' AND ";
		}
		if(!userForm.getEmail().isEmpty()){
			filter += " EMAIL LIKE '%"+userForm.getEmail()+"%' AND ";
		}
		if(userForm.getBirthday() != null){
			filter += " BIRTHDAY = '"+userForm.getBirthday()+"' AND ";
		}
		if(!userForm.getLastLoginDateFrom().isEmpty() && !userForm.getLastLoginDateTo().isEmpty()){
			filter += " DATELASTLOGIN BETWEEN '"+userForm.getLastLoginDateFrom()+"' AND '"+userForm.getLastLoginDateTo()+"' AND ";
		}else if(!userForm.getLastLoginDateFrom().isEmpty()){
			filter += " DATELASTLOGIN = '"+userForm.getLastLoginDateFrom()+"' AND ";
		}else if(!userForm.getLastLoginDateTo().isEmpty()){
			filter += " DATELASTLOGIN = '"+userForm.getLastLoginDateTo()+"' AND ";
		}
		
		if(!filter.isEmpty()){
			filter = " WHERE " + filter.substring(0, filter.length()-4);
		}
		
		return filter;
	}

	@Override
	public void updateUserPassword(int id, String password) {
		jdbcTemplate.update(UPDATEPASSWORD, new Object[] {password, id});
	}
	
}
