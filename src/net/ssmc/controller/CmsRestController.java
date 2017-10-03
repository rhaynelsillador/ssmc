package net.ssmc.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import net.cms.ssmc.model.AboutUs;
import net.cms.ssmc.model.Control;
import net.cms.ssmc.model.Faq;
import net.cms.ssmc.model.FaqTemp;
import net.cms.ssmc.model.Header;
import net.cms.ssmc.model.Service;
import net.cms.ssmc.services.AboutUsServices;
import net.cms.ssmc.services.ControlServices;
import net.cms.ssmc.services.FaqServices;
import net.cms.ssmc.services.FaqTempServices;
import net.cms.ssmc.services.HeaderServices;
import net.cms.ssmc.services.ImageServices;
import net.cms.ssmc.services.ServiceServices;
import net.ssmc.enums.Access;
import net.ssmc.enums.Module;
import net.ssmc.interceptor.AppicationAudit;
import net.ssmc.model.Image;
import net.ssmc.model.User;

@RestController
public class CmsRestController {
	
	@Autowired
	private HttpServletRequest httpServletRequest;
	@Autowired
	private FaqServices faqServices;
	@Autowired
	private AboutUsServices aboutUsServices;
	@Autowired
	private ControlServices controlServices;
	@Autowired
	private HeaderServices headerServices;
	@Autowired
	private ServiceServices serviceServices;
	@Autowired
	private ImageServices imageServices;
	@Autowired
	private FaqTempServices faqTempServices;
	
	@AppicationAudit(module = Module.FAQ, access = Access.RETRIEVE)
	@RequestMapping(path="/FaqList", method = {RequestMethod.GET, RequestMethod.POST, RequestMethod.OPTIONS}, produces="application/json")
	public @ResponseBody Map<String, Object> accountList(@RequestParam Map<String, String> request) {
		try {
			HttpSession session = httpServletRequest.getSession(true);
			return faqServices.retrieveAllFaq(session, request);
		} catch (Exception e) {
			Map<String, Object> data = new HashMap<>();
			data.put("rows", null);
			return data;
		}	
	}
	
	@AppicationAudit(module = Module.FAQ, access = Access.RETRIEVE)
	@RequestMapping(path="/AddUpdateFaq", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody Map<String, Object> addUpdateUser(@RequestBody FaqTemp faq) {
		HttpSession session = httpServletRequest.getSession(true);
		Map<String, Object> map = new HashMap<>();
//		if(session.getAttribute("faq").toString().equalsIgnoreCase("temp")){
			map = faqTempServices.createUpdateFaq(session, faq);
//		}else{
//		map = faqServices.createUpdateFaq(session, faq);
//		}
		System.out.println(map);
		return map;
	}
	
	@AppicationAudit(module = Module.FAQ, access = Access.UPDATE)
	@RequestMapping(path="/ChangeStatusFaq", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody Map<String, Object> changeStatusFaq(@RequestBody Faq faq) {
		HttpSession session = httpServletRequest.getSession(true);
		Map<String, Object> map = faqServices.changeStatusFaq(session, faq);
		return map;
	}
	
	@AppicationAudit(module = Module.FAQ, access = Access.UPDATE)
	@RequestMapping(path="/DeleteFaq", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody Map<String, Object> deleteFaq(@RequestBody Faq faq) {
		HttpSession session = httpServletRequest.getSession(true);
		Map<String, Object> map = faqServices.deleteFaq(session, faq);	
		return map;
	}
	
	@AppicationAudit(module = Module.ABOUTUS, access = Access.RETRIEVE)
	@RequestMapping(path="/AboutUsList", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody Map<String, Object> aboutUsList(@RequestParam Map<String, String> request){
		return aboutUsServices.getAllAboutUs(request);
	}
	
	@AppicationAudit(module = Module.ABOUTUS, access = Access.UPDATE)
	@RequestMapping(path="/AboutUsUpdate", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody Map<String, Object> aboutUsUpdate(@RequestBody AboutUs aboutUs){
		HttpSession session = httpServletRequest.getSession(true);
		return aboutUsServices.addUpdateAboutUs(session, aboutUs);
	}
	
	@AppicationAudit(module = Module.ABOUTUS, access = Access.DELETE)
	@RequestMapping(path="/AboutUsDelete", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody Map<String, Object> aboutUsDelete(@RequestBody AboutUs aboutUs){
		HttpSession session = httpServletRequest.getSession(true);
		return aboutUsServices.deleteAboutUs(session, aboutUs);
	}
	
	@AppicationAudit(module = Module.HEADER, access = Access.RETRIEVE)
	@RequestMapping(path="/HeaderList", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody Map<String, Object> headerList(@RequestParam Map<String, String> request){
		return headerServices.getAllHeaders(request);
	}
	
	@AppicationAudit(module = Module.HEADER, access = Access.UPDATE)
	@RequestMapping(path="/HeaderAddUpdate", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody Map<String, Object> headerAddUpdate(@RequestBody Header header){
		HttpSession session = httpServletRequest.getSession(true);
		return headerServices.createUpdateHeader(session, header);
	}
	
	@AppicationAudit(module = Module.HEADER, access = Access.UPDATE)
	@RequestMapping(path="/HeaderDelete", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody Map<String, Object> headerDelete(@RequestBody Header header){
		HttpSession session = httpServletRequest.getSession(true);
		return headerServices.deleteHeader(session, header);
	}
	
	@AppicationAudit(module = Module.SERVICE, access = Access.RETRIEVE)
	@RequestMapping(path="/ServicesList", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody Map<String, Object> servicesList(@RequestParam Map<String, String> request){
		return serviceServices.getAllServices(request);
	}
	
	@AppicationAudit(module = Module.SERVICE, access = Access.UPDATE)
	@RequestMapping(path="/ServicesAddUpdate", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody Map<String, Object> servicesAddUpdate(@RequestBody Service service){
		HttpSession session = httpServletRequest.getSession(true);
		return serviceServices.createUpdateService(session, service);
	}
	
	@AppicationAudit(module = Module.SERVICE, access = Access.DELETE)
	@RequestMapping(path="/ServicesDelete", method = {RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody Map<String, Object> dervicesDelete(@RequestBody Service service){
		HttpSession session = httpServletRequest.getSession(true);
		return serviceServices.deleteService(session, service);
	}
	
	@AppicationAudit(module = Module.SERVICE, access = Access.UPDATE)
	@RequestMapping(path="/ImageList", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody Map<String, Object> imageList(@RequestParam Map<String, String> request){
		HttpSession session = httpServletRequest.getSession(true);
		return imageServices.getAllImages(session, request);
	}
	
	@AppicationAudit(module = Module.SERVICE, access = Access.UPDATE)
	@RequestMapping(path="/DeleteImage", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody Map<String, Object> deleteImage(@RequestBody Image image){
		HttpSession session = httpServletRequest.getSession(true);
		return imageServices.deleteImage(session, image);
	}
	
	@AppicationAudit(module = Module.SERVICE, access = Access.UPDATE)
	@RequestMapping(path="/UpdateImage", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody Map<String, Object> updateImage(@RequestBody Image image){
		HttpSession session = httpServletRequest.getSession(true);
		return imageServices.updateImage(session, image);
	}
	
	@AppicationAudit(module = Module.FAQ, access = Access.UPDATE)
	@RequestMapping(path="/FaqTempList", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody Map<String, Object> faqTempList(@RequestParam Map<String, String> request) {
		HttpSession session = httpServletRequest.getSession(true);
		Map<String, Object> map = faqTempServices.retrieveAllFaqTemp(session, request);
		return map;
	}
	
	@AppicationAudit(module = Module.ALL, access = Access.ALL)
	@RequestMapping(path="/IsApproved", method = {RequestMethod.GET, RequestMethod.POST})
	public Map<String, Object> approved(@RequestBody Control control){
		HttpSession session = httpServletRequest.getSession(true);
		return controlServices.approve(session, control);
	}
	
	@AppicationAudit(module = Module.FAQ, access = Access.UPDATE)
	@RequestMapping(path="/FaqApproval", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody Map<String, Object> faqApproval(@RequestParam Map<String, String> request) {
		
		return controlServices.approvedFaqTemp(httpServletRequest, request);
	}
}
