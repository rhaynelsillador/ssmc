package net.ssmc.services;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.joda.time.LocalDate;
import org.springframework.beans.factory.annotation.Autowired;

import net.cms.ssmc.dao.ControlDao;
import net.ssmc.dao.AnalyticsDao;
import net.ssmc.dao.ContactUsDao;
import net.ssmc.model.PendingApproval;
import net.ssmc.model.User;

public class DashboardServices {

	@Autowired
	private ControlDao controlDao;
	@Autowired
	private AnalyticsDao analyticsDao;
	@Autowired
	private ContactUsDao contactUsDao;
	
	
	
	public List<PendingApproval> getAllPendingApproval(HttpServletRequest httpServletRequest){
		HttpSession session = httpServletRequest.getSession();
		User user = (User) session.getAttribute("user");
		return controlDao.retrieveAll(user.getId());
	}
	
	public Map<String, Object> lastMonth(){
		Map<String, Object> data = new HashMap<>();
		data.put("analytics", analyticsDao.countLastMonth());
		data.put("email", contactUsDao.countLastMonth());
		data.put("emailCountUnique", contactUsDao.countUniqueLastMonth().size());
		data.put("analyticsCountUnique", analyticsDao.countUniqueLastMonth().size());
		List<Long> emailCount = new ArrayList<>();
		List<Long> analyticsCount = new ArrayList<>();
		List<Long> emailCountUniquePerday = new ArrayList<>();
		List<Long> analyticsCountUniquePerday = new ArrayList<>();
		for (int i = 29; i >= 0; i--) {
			Date date = LocalDate.now().minusDays( i ).toDate();
			emailCount.add(contactUsDao.countLastMonthPerDay(date));
			analyticsCount.add(analyticsDao.countLastMonthPerDay(date));
			emailCountUniquePerday.add((long) contactUsDao.countUniqueLastMonthPerDay(date).size());
			analyticsCountUniquePerday.add((long) analyticsDao.countUniqueLastMonthPerDay(date).size());
		}
		data.put("emailCount", emailCount);
		data.put("analyticsCount", analyticsCount);
		data.put("emailCountUniquePerday", emailCountUniquePerday);
		data.put("analyticsCountUniquePerday", analyticsCountUniquePerday);
		return data;
	}
	
	public  Map<String, Object> systemUtils(){
		
		Map<String, Object> data = new HashMap<>();
		data.put("cpu", 100);
		data.put("memory", SystemUtilization.physicalMemory());

		SystemUtilization.cpuUtil();
		
		return data;
	}
}
