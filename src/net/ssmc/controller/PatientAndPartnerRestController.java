package net.ssmc.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.node.ObjectNode;

import net.cms.ssmc.model.Partner;
import net.ssmc.model.RegisteredAccount;
import net.ssmc.services.RegisteredAccountsServices;

@RestController
public class PatientAndPartnerRestController {

	@Autowired
	private RegisteredAccountsServices registeredAccountsServices;

	@RequestMapping(path="/RegisteredAccountsList", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody Map<String, Object> registeredAccountsList(@RequestParam Map<String, String> request){
		return registeredAccountsServices.getAllRegisteredAccounts(request);
	}
	
	@RequestMapping(path="/RegisteredAccountInfoData", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody RegisteredAccount registeredAccountInfoData(@RequestBody RegisteredAccount registeredAccount){
		return registeredAccountsServices.getAccountInformation(registeredAccount.getId());
	}
	
	@RequestMapping(path="/RegisteredAccountAndPartner", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody ObjectNode registeredAccountAndPartner(@RequestBody RegisteredAccount registeredAccount){
		return registeredAccountsServices.registerAccountAndPartner(registeredAccount);
	}
	
	
	@RequestMapping(path="/RetrievePartnersData", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody List<Partner> retrievePartners(@RequestBody RegisteredAccount registeredAccount){
		return registeredAccountsServices.retrievePartners();
	}
	
	
}
