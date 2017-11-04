package net.ssmc.services;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;

import net.cms.ssmc.dao.PartnerDao;
import net.cms.ssmc.model.Partner;
import net.ssmc.dao.RegisteredAccountDao;
import net.ssmc.enums.dtable.DTableParam;
import net.ssmc.enums.dtable.DTableResponse;
import net.ssmc.model.Helper;
import net.ssmc.model.RegisteredAccount;
import net.ssmc.utils.AppUtils;

public class RegisteredAccountsServices {
	
	@Autowired
	private RegisteredAccountDao registeredAccountDao;
	@Autowired
	private ObjectMapper objectMapper;
	@Autowired
	private PartnerDao partnerDao;
	
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
	
	public ObjectNode registerAccountAndPartner(RegisteredAccount account){
		ObjectNode node = objectMapper.createObjectNode();	
		switch (account.getType()) {
		case PARTNER:
			node.put(Helper.STATUS, "ERROR");
			if(account.getPartnerAccount().length() < 6){
				node.put(Helper.MESSAGE, "Partner Id is required. Enter at least six(6) characters.");
				return node;
			}else if(account.getEmail().isEmpty() || !AppUtils.isValidEmailAddress(account.getEmail())){
				node.put(Helper.MESSAGE,  "Partner email is required.");
				return node;
			}else if(account.getNumber() < 0){
				node.put(Helper.MESSAGE, "Partner contact is required.");
				return node;
			}
			break;
		case PATIENT:
			node.put(Helper.STATUS, "ERROR");
			if(account.getEmail().isEmpty() || !AppUtils.isValidEmailAddress(account.getEmail())){
				node.put(Helper.MESSAGE,  "Patient email is required/invalid.");
				return node;
			}else if(account.getFirstName().isEmpty()){
				node.put(Helper.MESSAGE,  "Patient first name is required.");
				return node;
			}else if(account.getLastName().isEmpty()){
				node.put(Helper.MESSAGE,  "Patient last name is required.");
				return node;
			}else if(account.getNumber() < 0){
				node.put(Helper.MESSAGE, "Patient contact is required.");
				return node;
			}else if(account.getBirthday().isEmpty()){
				node.put(Helper.MESSAGE, "Patient birthday is required.");
				return node;
			}
			break;
		default:
			break;
		}
		
		registeredAccountDao.create(account);
		
		return node;
	}
	
	public List<Partner> retrievePartners(){
		return partnerDao.retrievePartners();
	}
}