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
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.node.ObjectNode;

import net.cms.ssmc.model.ContactInformation;
import net.cms.ssmc.services.ContactInformationServices;
import net.ssmc.dao.RegisteredAccountDao;
import net.ssmc.enums.Access;
import net.ssmc.enums.Module;
import net.ssmc.interceptor.AppicationAudit;
import net.ssmc.model.City;
import net.ssmc.model.ContactUs;
import net.ssmc.model.ExamResult;
import net.ssmc.model.RegisteredAccount;
import net.ssmc.model.Role;
import net.ssmc.model.RoleAccess;
import net.ssmc.model.User;
import net.ssmc.model.form.UserChangePasswordForm;
import net.ssmc.services.CityServices;
import net.ssmc.services.ClinicServices;
import net.ssmc.services.ContactUsServices;
import net.ssmc.services.ExamResultServices;
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
	private CityServices cityServices;
	@Autowired
	private RegisteredAccountDao registeredAccountDao;
	@Autowired
	private ContactInformationServices contactInformationServices;
	@Autowired
	private ExamResultServices examResultServices;
	
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
		return userServices.accountApprover(user);
	}
	
	@RequestMapping(path="/AddUpdateUser", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody Map<String, Object> addUpdateUser(@RequestBody User user) {
		return userServices.createUpdateUser(user);
	}
	
	@AppicationAudit(module = Module.ROLE, access = Access.RETRIEVE)
	@RequestMapping(path="/RoleList", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody Map<String, Object> roleList( @RequestParam Map<String, String> request){
		return roleServices.retrieveRoles(request);
	}
	
	@AppicationAudit(module = Module.USER, access = Access.CREATE)
	@RequestMapping(path="/UserRoles", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody List<RoleAccess> userRoles(@RequestBody User user){
		return roleServices.userRolesAdd(user);
	}
	
	@AppicationAudit(module = Module.ROLE, access = Access.UPDATE)
	@RequestMapping(path="/RoleSaveUpdates", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody Map<String, Object> roleSaveUpdates(@RequestBody List<Role> roles){
		HttpSession session = httpServletRequest.getSession(true);
		System.out.println("roles ::  "+roles);
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
	
	@RequestMapping(path="/ContactInformationUpdate", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody ObjectNode contactInformationUpdate(@RequestBody List<ContactInformation> contactInformations){
		return contactInformationServices.updateContactInformation(contactInformations);
	}
	
	@RequestMapping(path="/ContactInformationList", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody List<ContactInformation> contactInformationList(){
		return contactInformationServices.getAllContactInformation();
	}
	
	@RequestMapping(path="/UploadTestResult", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody ObjectNode uploadTestResult(@RequestParam("name") String name, @RequestParam("dateExamined") String dateExamined, 
			@RequestParam("description") String description, @RequestParam("accountId") long accountId, @RequestParam("fileToUpload") MultipartFile fileToUpload){
		System.out.println(examResultServices);
		return examResultServices.saveUploadTestResult(name, dateExamined, description, accountId, fileToUpload);
	}
	
	@RequestMapping(path="/DeleteTestResult", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody ObjectNode deleteTestResult(@RequestBody ExamResult examResult){
		System.out.println(examResultServices);
		return examResultServices.deleteTestResult(examResult.getId());
	}
	
	@RequestMapping(path="/UpdateUserPassword", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody ObjectNode updateUserPassword(@RequestBody UserChangePasswordForm form){
		return userServices.updateUserPassword(form);
	}
	
	
}
