package net.ssmc.dao;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;

import net.ssmc.model.User;

public interface UserDao {
	
	long count(Map<String, String> request) throws JsonParseException, JsonMappingException, IOException;
	void create(User user);
	User retrieve(int id);
	List<User> retrieveAll(Map<String, String> request) throws JsonParseException, JsonMappingException, IOException;
	User retrieve(String username);
	User login(String username, String password) throws Exception;
	void update(User user);
	int countApprover();
	void updateApprover(User user);
	void updateUserPassword(int id, String password);
}
