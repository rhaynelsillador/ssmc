package net.ssmc.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.node.ObjectNode;

import net.cms.ssmc.model.NewsAndUpdate;
import net.cms.ssmc.services.NewsAndUpdateServices;
import net.ssmc.enums.Access;
import net.ssmc.enums.Module;
import net.ssmc.interceptor.AppicationAudit;

@RestController
public class NewsAndUpdateRestController {
	
	@Autowired
	private NewsAndUpdateServices newsAndUpdateServices;
	
	@AppicationAudit(module = Module.NEWSANDUPDATES, access = Access.RETRIEVE)
	@RequestMapping(path="/NewsAndUpdatesList", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody Map<String, Object> partnerList(@RequestParam Map<String, String> request) {
		return newsAndUpdateServices.getAllNewsAndUpdates(request);
	}
	
	@AppicationAudit(module = Module.NEWSANDUPDATES, access = Access.RETRIEVE)
	@RequestMapping(path="/NewsAndUpdates/{id}", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody NewsAndUpdate partnerList(@PathVariable long id) {
		return newsAndUpdateServices.getNewsAndUpdate(id);
	}
	
	@AppicationAudit(module = Module.NEWSANDUPDATES, access = Access.DELETE)
	@RequestMapping(path="/NewsAndUpdatesDelete/{id}", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody ObjectNode newsAndUpdatesDelete(@PathVariable long id) {
		return newsAndUpdateServices.deleteNewsAndUpdate(id);
	}
	
	@AppicationAudit(module = Module.NEWSANDUPDATES, access = Access.UPDATE)
	@RequestMapping(path="/NewsAndUpdatesPublished/{id}", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody ObjectNode newsAndUpdatesPublished(@PathVariable long id) {
		return newsAndUpdateServices.publishedNewsAndUpdate(id);
	}
	
	@AppicationAudit(module = Module.NEWSANDUPDATES, access = Access.CREATE)
	@RequestMapping(path="/NewsAndUpdatesSaveCreate", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody ObjectNode newsAndUpdatesSaveCreate(@RequestBody NewsAndUpdate newsAndUpdate) {
		return newsAndUpdateServices.createNewsAndUpdate(newsAndUpdate);
	}
	
	@AppicationAudit(module = Module.NEWSANDUPDATES, access = Access.CREATE)
	@RequestMapping(path="/NewsAndUpdatesSaveUpdate", method = {RequestMethod.GET, RequestMethod.POST}, produces="application/json")
	public @ResponseBody ObjectNode newsAndUpdatesSaveUpdate(@RequestBody NewsAndUpdate newsAndUpdate) {
		System.out.println(newsAndUpdate);
		return newsAndUpdateServices.updateNewsAndUpdate(newsAndUpdate);
	}
	
}
