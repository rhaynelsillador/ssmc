package net.ssmc.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import net.cms.ssmc.model.AboutUs;
import net.cms.ssmc.services.AboutUsServices;
import net.ssmc.enums.Access;
import net.ssmc.enums.Module;
import net.ssmc.interceptor.AppicationAudit;

@RestController
@RequestMapping("/AboutUs")
public class AboutUsRestController {

	@Autowired
	private AboutUsServices aboutUsServices;
	
	@AppicationAudit(module = Module.ABOUTUS, access = Access.RETRIEVE)
	@RequestMapping(path="/List", method = RequestMethod.POST, produces="application/json")
	public List<AboutUs> clinic(){
		return aboutUsServices.getAllAboutUs();
	}
	
	@AppicationAudit(module = Module.ABOUTUS, access = Access.UPDATE)
	@RequestMapping(path="/UpdateSort", method = RequestMethod.POST, produces="application/json")
	public Map<String, Object> updateSort(@RequestBody List<AboutUs> aboutUs){
		return aboutUsServices.updateSorter(aboutUs);
	}
	
}
