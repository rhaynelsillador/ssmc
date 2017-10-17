package net.ssmc.services;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;

import net.ssmc.dao.UserDao;
import net.ssmc.dao.UserRoleAccessDao;
import net.ssmc.enums.Status;
import net.ssmc.enums.TransactionType;
import net.ssmc.model.Helper;
import net.ssmc.model.Role;
import net.ssmc.model.User;
import net.ssmc.utils.AES;

public class UserServices {

	@Autowired
	private UserDao userDao;
	@Autowired
	private UserRoleAccessDao userRoleAccessDao;
	@Autowired
	private HttpServletRequest httpServletRequest;
	@Autowired
	private Gson gson;
	
	public Map<String, Object> login(HttpSession session, Map<String, String> request){
		Map<String, Object> response = new HashMap<>();
		User user = null;
		
		try {
			user = userDao.login(request.get("username"), AES.encrypt(request.get("password")));
			List<Role> roles = userRoleAccessDao.retrieve(user.getId(), user.getRoleName());
			session.setAttribute("roleAccess", roles);
			System.out.println(gson.toJson(roles));
			session.setAttribute("roleAccessJson", gson.toJson(roles));
		} catch (Exception e) {
		}
		
		if(user == null){
			response.put(Helper.STATUS, Status.ERROR);
			response.put(Helper.MESSAGE, "Invalid username and password!");
		}else{
			
			session.setAttribute("user", user);
			
			response.put(Helper.STATUS, Status.OK);
			response.put(Helper.MESSAGE, "Successfully login.");
		}
		return response;
	}
	
	public Map<String, Object> retrieveAllUsers(HttpSession session, @RequestParam Map<String, String> request){
		Map<String, Object> data = new HashMap<>();
		List<User> users = null;
		try {
			users = userDao.retrieveAll(request);
			if(users == null){
				users = new ArrayList<>();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		long total = 0;
		try {
			total = userDao.count(request);
		} catch (IOException e) {
			e.printStackTrace();
		}
		data.put("rows", users);
		data.put("current", request.get("current"));
		data.put("rowCount", request.get("rowCount"));
		data.put("total", total);
		return data;
	}
	
	public User getUser(int id){
		return userDao.retrieve(id);
	}

	public Map<String, Object> createUpdateUser(User user) {
		TransactionType transactionType = (TransactionType) httpServletRequest.getSession().getAttribute("TRANSACTION");
		Map<String, Object> response = new HashMap<>();
		response.put(Helper.STATUS, Status.ERROR);
		
		if(user.getId() <= 0 && transactionType == TransactionType.UPDATE){
			response.put(Helper.MESSAGE, "Invalid Account");
			return response;
		}if((user.getUsername() == null || user.getUsername().isEmpty()) && transactionType == TransactionType.ADD){
			response.put(Helper.MESSAGE, "Invalid Account");
			return response;
		}else if(user.getFirstName().isEmpty()){
			response.put(Helper.MESSAGE, "Invalid first name");
			return response;
		}else if(user.getLastName().isEmpty()){
			response.put(Helper.MESSAGE, "Invalid last name");
			return response;
		}else if(user.getEmail().isEmpty()){
			response.put(Helper.MESSAGE, "Invalid email");
			return response;
		}else if(user.getBirthday() == null){
			response.put(Helper.MESSAGE, "Invalid birtday");
			return response;
		}
		
		if(transactionType == TransactionType.ADD){
			try {
				userDao.create(user);
				userRoleAccessDao.create(user);
				response.put(Helper.STATUS, Status.SUCCESS);
				response.put(Helper.MESSAGE, "Add success");
			} catch (Exception e) {
				response.put(Helper.STATUS, Status.ERROR);
				response.put(Helper.MESSAGE, "Add has an error.");
			}
			
			return response;
		}else if(transactionType == TransactionType.UPDATE){
			try {
				userDao.update(user);
				userRoleAccessDao.deleteByUserId(user.getId());
				userRoleAccessDao.create(user);
				response.put(Helper.STATUS, Status.SUCCESS);
				response.put(Helper.MESSAGE, "Update success");
			} catch (Exception e) {
				e.printStackTrace();
				response.put(Helper.STATUS, Status.ERROR);
				response.put(Helper.MESSAGE, "Update has an error.");
			}
			
			return response;
			
		}
		
		return response;
	}

	public Map<String, Object> accountApprover(User user) {
		
		Map<String, Object> response = new HashMap<>();
		if(user.isApprover())
			user.setApprover(false);
		else
			user.setApprover(true);
		try {
			userDao.updateApprover(user);
			response.put(Helper.STATUS, Status.SUCCESS);
			response.put(Helper.MESSAGE, "Update success");
		} catch (Exception e) {
			response.put(Helper.STATUS, Status.ERROR);
			response.put(Helper.MESSAGE, "Update has an error.");
		}
		return response;
	}
	
}
