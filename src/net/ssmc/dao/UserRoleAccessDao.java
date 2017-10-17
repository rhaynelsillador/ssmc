package net.ssmc.dao;

import java.util.List;
import java.util.Map;

import net.ssmc.model.Role;
import net.ssmc.model.User;

public interface UserRoleAccessDao {
	
	List<Role> retrieve(long userId, String roleName);
	void deleteByUserId(int id);
	void create(User user);
}
