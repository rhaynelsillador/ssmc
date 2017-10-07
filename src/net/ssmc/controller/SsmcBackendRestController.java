package net.ssmc.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import net.ssmc.dao.RegisteredAccountDao;
import net.ssmc.enums.Access;
import net.ssmc.enums.Module;
import net.ssmc.interceptor.AppicationAudit;
import net.ssmc.model.City;
import net.ssmc.model.ContactUs;
import net.ssmc.model.PendingApproval;
import net.ssmc.model.RegisteredAccount;
import net.ssmc.model.Role;
import net.ssmc.model.RoleAccess;
import net.ssmc.model.User;
import net.ssmc.services.CityServices;
import net.ssmc.services.ClinicServices;
import net.ssmc.services.ContactUsServices;
import net.ssmc.services.DashboardServices;
import net.ssmc.services.RegisteredAccountsServices;
import net.ssmc.services.RoleServices;
import net.ssmc.services.UserServices;

@RestController
@CrossOrigin
public class SsmcBackendRestController {
	
	@Autowired
	private UserServices userServices;
	@Autowired
	private ClinicServices clinicServices;
	@Autowired
	private HttpServletRequest httpServletRequest;
	@Autowired
	private RoleServices roleServices;
	@Autowired
	private ContactUsServices contactUsServices;
	@Autowired
	private RegisteredAccountsServices registeredAccountsServices;
	@Autowired
	private CityServices cityServices;
	@Autowired
	private RegisteredAccountDao registeredAccountDao;
	
	private static long random = System.currentTimeMillis();
	
	@RequestMapping(path="/AccountAuthentication", method = RequestMethod.POST, produces="application/json")
	public @ResponseBody Map<String, Object> accountAuthentication(@RequestParam Map<String, String> request) {
		HttpSession session = httpServletRequest.getSession(true);
		return userServices.login(session, request);
	}
	
	@RequestMapping(path="/AccountList", method = {RequestMethod.GET, RequestMethod.POST, RequestMethod.OPTIONS}, produces="application/json")
	public @ResponseBody Map<String, Object> accountList(@RequestParam Map<String, String> request) {
		try {
			HttpSession session = httpServletRequest.getSession(true);
			return userServices.retrieveAllUsers(session, request);
		} catch (Exception e) {
			Map<String, Object> data = new HashMap<>();
			data.put("rows", null);
			return data;
		}
	}
	
	@RequestMapping(path="/AccountApprover", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody Map<String, Object> accountApprover(@RequestBody User user) {
		HttpSession session = httpServletRequest.getSession(true);
		System.out.println(user);
		return userServices.accountApprover(session, user);
	}
	
	@RequestMapping(path="/AddUpdateUser", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody Map<String, Object> addUpdateUser(@RequestBody User user) {
		HttpSession session = httpServletRequest.getSession(true);
		System.out.println(user);
		return userServices.createUpdateUser(session, user);
	}
	
	@AppicationAudit(module = Module.ROLE, access = Access.RETRIEVE)
	@RequestMapping(path="/RoleList", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody Map<String, Object> roleList( @RequestParam Map<String, String> request){
		return roleServices.retrieveRoles(request);
	}
	
	@AppicationAudit(module = Module.USER, access = Access.CREATE)
	@RequestMapping(path="/UserRoles", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody List<RoleAccess> userRoles(@RequestBody Role role){
		return roleServices.userRolesAdd(role);
	}
	
	@AppicationAudit(module = Module.ROLE, access = Access.UPDATE)
	@RequestMapping(path="/RoleSaveUpdates", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody Map<String, Object> roleSaveUpdates(@RequestBody List<Role> roles){
		HttpSession session = httpServletRequest.getSession(true);
		return roleServices.saveRoleUpdates(session, roles);
	}
	
	@RequestMapping(path="/ClinicList", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody Map<String, Object> clinicList(@RequestParam Map<String, String> request) {
		HttpSession session = httpServletRequest.getSession(true);
		return clinicServices.retrieveClinics(session, request);
	}
	
	
	@RequestMapping(path="/AddUpdateClinic", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody Map<String, Object> addClinic(@RequestBody Map<String, String> request) {
		HttpSession session = httpServletRequest.getSession(true);
		return clinicServices.createClinic(session, request);
	}
	
	@RequestMapping(path="/ContactUsMessageList", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody Map<String, Object> contactUsMessageList(@RequestParam Map<String, String> request) {
		HttpSession session = httpServletRequest.getSession(true);
		return contactUsServices.getAllMessages(session, request);
	}
	
	@RequestMapping(path="/ContactUsMessage", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody Map<String, Object> ContactUsMessage(@RequestParam Map<String, String> request) {
		HttpSession session = httpServletRequest.getSession(true);
		return contactUsServices.getAllMessages();
	}
	
	@RequestMapping(path="/UpdateContacUsMessageStatus", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public Map<String, Object> updateContacUsMessageStatus(@RequestBody ContactUs contactUs) {
		return contactUsServices.updateContactUsStatus(httpServletRequest, contactUs.getId());
	}
	
	@RequestMapping(path="/DeleteContactUsMessage", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody Map<String, Object> deleteContactUsInquiry(@RequestBody ContactUs contactUs){
		return contactUsServices.deleteContactUsInquiry(httpServletRequest, contactUs);
	}
	
//	@RequestMapping(path="/PendingApprovalList", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
//	public @ResponseBody List<PendingApproval> pendingApprovalList() {
//		return dashboardServices.getAllPendingApproval(httpServletRequest);
//	}
	
	@RequestMapping(path="/CityList", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody Map<String, Object> city(@RequestParam Map<String, String> request){
		HttpSession session = httpServletRequest.getSession(true);
		return cityServices.retrieveClinics(session, request);
	}
	
	@RequestMapping(path="/CityAddUpdate", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody Map<String, Object> cityAddUpdate(@RequestBody City city){
		HttpSession session = httpServletRequest.getSession(true);
		return cityServices.createCity(session, city);
	}
	
	@RequestMapping(path="/CityDelete", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody Map<String, Object> cityDelete(@RequestBody City city){
		return cityServices.deleteCity(httpServletRequest, city);
	}
	
	@RequestMapping(path="/RegisteredAccountsList", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody Map<String, Object> registeredAccountsList(@RequestParam Map<String, String> request){
		return registeredAccountsServices.getAllRegisteredAccounts(request);
	}
	
	@RequestMapping(path="/LoadUserData", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody String loadUserData(){
		new Thread(new Runnable() {
		
		@Override
		public void run() {
			List<RegisteredAccount> registeredAccounts = new ArrayList<>();
			for (int i = 0; i < 100000; i++) {
				random++;
				RegisteredAccount account = new RegisteredAccount();
				account.setEmail("Rhaynel-"+random);
				account.setFirstName("Sillador"+random);
				account.setLastName("Silaldor"+random);
				account.setMiddleName("M");
				account.setStatus(true);
				account.setPassword("PASSWORD"+random);
				account.setNumber(1111);
				
				System.out.println(i + " :: " + random);
				registeredAccounts.add(account);
			}
			System.out.println("INSERTING...");
			registeredAccountDao.create(registeredAccounts);
			System.out.println("DONE...");
		}
		
			
		}).start();
		return "LOADING...";
	}
	
	
}
