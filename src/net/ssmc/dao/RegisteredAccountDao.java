package net.ssmc.dao;

import java.util.List;
import java.util.Map;

import net.ssmc.model.RegisteredAccount;

public interface RegisteredAccountDao {

	void create(RegisteredAccount account);
	RegisteredAccount findOne(long id);
	List<RegisteredAccount> findAll(Map<String, String> request);
	
}
