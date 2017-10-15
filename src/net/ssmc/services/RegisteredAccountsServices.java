package net.ssmc.services;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import net.ssmc.dao.RegisteredAccountDao;
import net.ssmc.enums.dtable.DTableParam;
import net.ssmc.enums.dtable.DTableResponse;
import net.ssmc.model.RegisteredAccount;

public class RegisteredAccountsServices {
	
	@Autowired
	private RegisteredAccountDao registeredAccountDao;
	
	public Map<String, Object> getAllRegisteredAccounts(Map<String, String> request){
		Map<String, Object> dtable = new HashMap<>();
		List<RegisteredAccount> registeredAccounts = registeredAccountDao.findAll(request);
		long recordsTotal = registeredAccountDao.count(request);
		dtable.put(DTableResponse.DATA.getName(), registeredAccounts);
		dtable.put(DTableResponse.DRAW.getName(), request.get(DTableParam.DRAW));
		dtable.put(DTableResponse.RECORDFILTERED.getName(), recordsTotal);
		dtable.put(DTableResponse.RECORDSTOTAL.getName(), recordsTotal);
		return dtable;
	}
	
	public RegisteredAccount getAccountInformation(long id){
		try {
			return registeredAccountDao.findOne(id);
		} catch (Exception e) {
			return null;
		}
	}
	
}