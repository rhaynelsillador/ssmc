package net.ssmc.dao;

import java.util.List;
import java.util.Map;

import net.ssmc.model.RegisteredAccount;

public interface RegisteredAccountDao {

	void create(List<RegisteredAccount> registeredAccounts);
	
	long count(Map<String, String> request);
	long create(RegisteredAccount account);
	RegisteredAccount findOne(long id) throws Exception;
	List<RegisteredAccount> findAll(Map<String, String> request);
	
	List<Long> totalRegisterThisMonth();
	List<Long> totalLoginThisMonth();
	
}
