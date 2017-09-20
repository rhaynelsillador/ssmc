package net.ssmc.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import net.ssmc.enums.Access;
import net.ssmc.enums.Module;
import net.ssmc.interceptor.AppicationAudit;
import net.ssmc.services.AnalyticsServices;
import net.ssmc.services.DashboardServices;

@RestController
public class DashboardApiController {

	@Autowired
	private AnalyticsServices analyticsServices;
	@Autowired
	private DashboardServices dashboardServices;
	
	@AppicationAudit(module = Module.DASHBOARD, access = Access.RETRIEVE)
	@RequestMapping(path="/BrowseCount", method = {RequestMethod.GET, RequestMethod.POST, RequestMethod.OPTIONS}, produces="application/json")
	public @ResponseBody List<int[]> browseCount() {
		return analyticsServices.retrieveAll();
	}
	
	@AppicationAudit(module = Module.DASHBOARD, access = Access.RETRIEVE)
	@RequestMapping(path="/CurrentOnline", method = {RequestMethod.GET, RequestMethod.POST, RequestMethod.OPTIONS}, produces="application/json")
	public @ResponseBody Map<String, Object> currentOnline() {
		return analyticsServices.countCurrentOnline();
	}
	
	@AppicationAudit(module = Module.DASHBOARD, access = Access.RETRIEVE)
	@RequestMapping(path="/LastMonth", method = {RequestMethod.GET, RequestMethod.POST, RequestMethod.OPTIONS}, produces="application/json")
	public @ResponseBody Map<String, Object> lastMonth() {
		return dashboardServices.lastMonth();
	}
}
