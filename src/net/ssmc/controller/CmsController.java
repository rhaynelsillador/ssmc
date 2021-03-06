package net.ssmc.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import net.cms.ssmc.model.AboutUs;
import net.cms.ssmc.model.Service;
import net.cms.ssmc.services.AboutUsServices;
import net.cms.ssmc.services.FaqServices;
import net.cms.ssmc.services.FaqTempServices;
import net.cms.ssmc.services.HeaderServices;
import net.cms.ssmc.services.ServiceServices;
import net.ssmc.enums.Access;
import net.ssmc.enums.App;
import net.ssmc.enums.Module;
import net.ssmc.enums.TransactionType;
import net.ssmc.interceptor.AppicationAudit;
import net.ssmc.model.Clinic;
import net.ssmc.services.CityServices;
import net.ssmc.services.ClinicServices;

@Controller
public class CmsController {
	
	@Autowired
	private HttpServletRequest httpServletRequest;
	@Autowired
	private FaqServices faqServices;
	@Autowired
	private AboutUsServices aboutUsServices;
	@Autowired
	private HeaderServices headerServices;
	@Autowired
	private ServiceServices serviceServices;
	@Autowired
	private FaqTempServices faqTempServices;
	@Autowired
	private ClinicServices clinicServices;
	@Autowired
	private CityServices cityServices;
	
	@AppicationAudit(module = Module.CLINIC, access = Access.RETRIEVE)
	@RequestMapping(path="/Clinic", method = RequestMethod.GET, produces="application/json")
	public String clinic(ModelMap map){
		map.addAttribute("username", "rhaynel");
		return "backend/Clinic";
	}
	
	@AppicationAudit(module = Module.CLINIC, access = Access.UPDATE)
	@RequestMapping(path="/ClinicUpdate", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public String addClinic(ModelMap map, @RequestParam Map<String, String> request) {
		HttpSession session = httpServletRequest.getSession(true);
		Clinic clinic = clinicServices.getClinic(session, Long.parseLong(request.get("id")));
		
		map.addAttribute("username", "rhaynel");
		map.addAttribute("cities", cityServices.retrieveCity());
		map.addAttribute("clinic", clinic);
		map.addAttribute("title", clinic.getName());
		session.setAttribute("clinicId", request.get("id"));
		session.setAttribute("TRANSACTION", TransactionType.UPDATE);
		return "backend/ClinicUpdate";
	}
	
	@AppicationAudit(module = Module.FAQ, access = Access.RETRIEVE)
	@RequestMapping(path="/Faq", method = RequestMethod.GET)
	public String faq(ModelMap map){
		return "backend/Faq";
	}

	@AppicationAudit(module = Module.FAQ, access = Access.UPDATE)
	@RequestMapping(path="/FaqUpdate", method = RequestMethod.GET)
	public String faqUpdate(ModelMap map, @RequestParam int id, @RequestParam String faq){
		HttpSession session = httpServletRequest.getSession(true);
		session.setAttribute("TRANSACTION", TransactionType.UPDATE);
		session.setAttribute("FAQID", id);
		session.setAttribute("faq", faq);
		if(faq!=null && faq.equalsIgnoreCase("temp")){
			map.addAttribute("faq", faqTempServices.getFaqTemp(httpServletRequest, id));
		}else{
			map.addAttribute("faq", faqServices.getFaq(httpServletRequest, id));
		}
		return "backend/FaqUpdate";
	}
	
	@AppicationAudit(module = Module.FAQ, access = Access.CREATE)
	@RequestMapping(path="/FaqCreate", method = RequestMethod.GET)
	public String faqCreate(ModelMap map){
		HttpSession session = httpServletRequest.getSession(true);
		session.setAttribute("TRANSACTION", TransactionType.ADD);
		session.removeAttribute("FAQID");
		return "backend/FaqUpdate";
	}
	
	@AppicationAudit(module = Module.ABOUTUS, access = Access.RETRIEVE)
	@RequestMapping(path="/AboutUs", method = RequestMethod.GET)
	public String aboutUs(ModelMap map){
		return "backend/AboutUs";
	}
	
	@AppicationAudit(module = Module.ABOUTUS, access = Access.UPDATE)
	@RequestMapping(path="/AboutUsAdd", method = RequestMethod.GET)
	public String aboutUsAdd(ModelMap map){
		HttpSession session = httpServletRequest.getSession(true);
		session.setAttribute("TRANSACTION", TransactionType.ADD);
		session.removeAttribute("aboutUs");
		map.addAttribute("type", App.values());
		return "backend/AboutUsUpdate";
	}
	
	@AppicationAudit(module = Module.ABOUTUS, access = Access.UPDATE)
	@RequestMapping(path="/AboutUsUpdate", method = RequestMethod.GET)
	public String aboutUsUpdate(ModelMap map, @RequestParam int id){
		HttpSession session = httpServletRequest.getSession(true);
		session.setAttribute("TRANSACTION", TransactionType.UPDATE);
		AboutUs aboutUs = aboutUsServices.getAboutUs(httpServletRequest, id);
		System.out.println("aboutUsaboutUsaboutUs :: "+aboutUs);
		session.setAttribute("aboutUs", aboutUs);
		map.addAttribute("type", App.values());
		return "backend/AboutUsUpdate";
	}
	
	@AppicationAudit(module = Module.HEADER, access = Access.RETRIEVE)
	@RequestMapping(path="/Header", method = RequestMethod.GET)
	public String header(ModelMap map){
		return "backend/Header";
	}
	
	@AppicationAudit(module = Module.HEADER, access = Access.UPDATE)
	@RequestMapping(path="/HeaderUpdate", method = RequestMethod.GET)
	public String headerUpdate(ModelMap map, @RequestParam int id){
		HttpSession session = httpServletRequest.getSession(true);
		session.setAttribute("TRANSACTION", TransactionType.UPDATE);
		session.setAttribute("header", headerServices.getHeader(httpServletRequest, id));
		return "backend/HeaderUpdate";
	}
	
	@AppicationAudit(module = Module.HEADER, access = Access.CREATE)
	@RequestMapping(path="/HeaderAdd", method = RequestMethod.GET)
	public String headerAdd(ModelMap map){
		HttpSession session = httpServletRequest.getSession(true);
		session.setAttribute("TRANSACTION", TransactionType.ADD);
		session.removeAttribute("header");
		return "backend/HeaderUpdate";
	}
	
	@AppicationAudit(module = Module.SERVICE, access = Access.RETRIEVE)
	@RequestMapping(path="/Services", method = RequestMethod.GET)
	public String services(ModelMap map){
		return "backend/Service";
	}
	
	@AppicationAudit(module = Module.SERVICE, access = Access.UPDATE)
	@RequestMapping(path="/ServicesUpdate", method = RequestMethod.GET)
	public String servicesUpdate(ModelMap map, @RequestParam int id){
		HttpSession session = httpServletRequest.getSession(true);
		session.setAttribute("TRANSACTION", TransactionType.UPDATE);
		Service service = serviceServices.getService(httpServletRequest, id);
		session.setAttribute("service", service);
		return "backend/ServiceUpdate";
	}
	
	
	@AppicationAudit(module = Module.SERVICE, access = Access.UPDATE)
	@RequestMapping(path="/ServicesUpload", method = RequestMethod.GET)
	public String servicesUpload(ModelMap map, @RequestParam int id, @RequestParam String name, @RequestParam String module){
		HttpSession session = httpServletRequest.getSession(true);
		session.setAttribute("moduleid", id);
		session.setAttribute("moduleName", name);
		session.setAttribute("module", Module.valueOf(module));
		return "backend/ImageUpload";
	}
	
	@AppicationAudit(module = Module.SERVICE, access = Access.CREATE)
	@RequestMapping(path="/ServicesAdd", method = RequestMethod.GET)
	public String servicesAdd(ModelMap map){
		HttpSession session = httpServletRequest.getSession(true);
		session.setAttribute("TRANSACTION", TransactionType.ADD);
		session.removeAttribute("service");
		return "backend/ServiceUpdate";
	}
	@AppicationAudit(module = Module.ADVERTISEMENT, access = Access.RETRIEVE)
	@RequestMapping(path="/Advertisement", method = RequestMethod.GET)
	public String advertisement(ModelMap map){
		HttpSession session = httpServletRequest.getSession(true);
		session.setAttribute("module", Module.ADVERTISEMENT);
		session.setAttribute("moduleid", 0);
		return "backend/Advertisement";
	}
	

	@AppicationAudit(module = Module.FEATUREDBOX, access = Access.RETRIEVE)
	@RequestMapping(path="/FeaturedBox", method = {RequestMethod.GET})
	public String featuredBox(ModelMap map) {
		return "backend/FeaturedBox";
	}
	
	@AppicationAudit(module = Module.FEATUREDBOX, access = Access.RETRIEVE)
	@RequestMapping(path="/FeaturedBoxUpdate", method = {RequestMethod.GET})
	public String featuredBoxUpdate(ModelMap map) {
		return "backend/FeaturedBoxUpdate";
	}
	
	@AppicationAudit(module = Module.PARTNERS, access = Access.RETRIEVE)
	@RequestMapping(path="/Partners", method = {RequestMethod.GET})
	public String partners(ModelMap map) {
		return "backend/Partners";
	}
	
	@AppicationAudit(module = Module.PARTNERS, access = Access.CREATE)
	@RequestMapping(path="/PartnerAdd", method = {RequestMethod.GET})
	public String partnersAdd(ModelMap map) {
		return "backend/PartnerAdd";
	}
	
	@AppicationAudit(module = Module.PARTNERS, access = Access.UPDATE)
	@RequestMapping(path="/PartnerUpdate", method = {RequestMethod.GET})
	public String partnerUpdate(ModelMap map) {
		return "backend/PartnerAdd";
	}
	
	@AppicationAudit(module = Module.NEWSANDUPDATES, access = Access.RETRIEVE)
	@RequestMapping(path="/NewsAndUpdates", method = {RequestMethod.GET})
	public String newsAndUpdates(ModelMap map) {
		return "backend/NewsAndUpdates";
	}
	
	@AppicationAudit(module = Module.NEWSANDUPDATES, access = Access.CREATE)
	@RequestMapping(path="/NewsAndUpdateAdd", method = {RequestMethod.GET})
	public String newsAndUpdateAdd(ModelMap map) {
		return "backend/NewsAndUpdateAdd";
	}


	@AppicationAudit(module = Module.NEWSANDUPDATES, access = Access.UPDATE)
	@RequestMapping(path="/NewsAndUpdateUpdate", method = {RequestMethod.GET})
	public String newsAndUpdateUpdate(ModelMap map) {
		return "backend/NewsAndUpdateAdd";
	}
	
	@AppicationAudit(module = Module.NEWSANDUPDATES, access = Access.UPDATE)
	@RequestMapping(path="/NewsAndUpdateUpload", method = {RequestMethod.GET})
	public String newsAndUpdateUpload(ModelMap map, @RequestParam int id, @RequestParam String name, @RequestParam String module){
		HttpSession session = httpServletRequest.getSession(true);
		session.setAttribute("moduleid", id);
		session.setAttribute("moduleName", name);
		session.setAttribute("module", Module.valueOf(module));
		return "backend/ImageUpload";
	}
	
	@AppicationAudit(module = Module.DOCTORDIRECTORY, access = Access.RETRIEVE)
	@RequestMapping(path="/DoctorDirectory", method = {RequestMethod.GET})
	public String doctorDirectory(ModelMap map){
		return "backend/DoctorDirectory";
	}
	
}
