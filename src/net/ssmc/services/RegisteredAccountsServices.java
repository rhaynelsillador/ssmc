package net.ssmc.services;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import net.ssmc.dao.RegisteredAccountDao;
import net.ssmc.model.RegisteredAccount;

public class RegisteredAccountsServices {
	
	@Autowired
	private RegisteredAccountDao registeredAccountDao;
	
	public Map<String, List<RegisteredAccount>> getAllRegisteredAccounts(Map<String, String> request){
		Map<String, List<RegisteredAccount>> response = new HashMap<>();
		List<RegisteredAccount> registeredAccounts = registeredAccountDao.findAll(request);
		if(registeredAccounts == null){
			response.put("data", new ArrayList<>());
		}else
			response.put("data", registeredAccounts);
		return response;
	}
	
}
