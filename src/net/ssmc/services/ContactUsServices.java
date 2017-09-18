package net.ssmc.services;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import net.ssmc.dao.ContactUsDao;
import net.ssmc.dao.ContactUsReplyDao;
import net.ssmc.enums.InquiryStatus;
import net.ssmc.enums.Status;
import net.ssmc.model.ContactUs;
import net.ssmc.model.Helper;
import net.ssmc.model.User;

public class ContactUsServices {
	
	@Autowired
	private ContactUsDao contactUsDao;
	@Autowired
	private ContactUsReplyDao contactUsReplyDao;
	
	public Map<String, Object> getAllMessages(HttpSession session, Map<String, String> request){
		Map<String, Object> data = new HashMap<>();
		List<ContactUs> contactUs = contactUsDao.retrieveAll(request);
		data.put("rows", contactUs);
		data.put("current", request.get("current"));
		data.put("rowCount", request.get("rowCount"));
		data.put("total", contactUsDao.count());
		return data;
	}

	public Map<String, Object> deleteContactUsInquiry(HttpServletRequest httpServletRequest, ContactUs contactUs) {
		HttpSession session = httpServletRequest.getSession();
		User user = (User) session.getAttribute("user");
		Map<String, Object> response = new HashMap<>();
		try {
			contactUsDao.update(InquiryStatus.DELETED, contactUs.getId(), user.getId());
			response.put(Helper.MESSAGE, "Message successfully deleted");
			response.put(Helper.STATUS, Status.SUCCESS);
		} catch (Exception e) {
			response.put(Helper.MESSAGE, "Message unsuccessfully deleted");
			response.put(Helper.STATUS, Status.SUCCESS);
		}
		return response;
	}
	
	public void readContactUs(HttpServletRequest httpServletRequest, Map<String, String> request){
		HttpSession session = httpServletRequest.getSession();
		User user = (User) session.getAttribute("user");
		if(request.get("id") != null && (request.get("status") != null && request.get("status").equalsIgnoreCase("UNREAD"))){
			long id = Long.parseLong(request.get("id"));
			contactUsDao.update(InquiryStatus.READ, id, user.getId());
			httpServletRequest.setAttribute("message", id);
		}
	}
	
	public Map<String, Object> getAllMessages(){
		Map<String, Object> data = new HashMap<>();
		data.put("rows", contactUsDao.retrieveAll(15));
		return data;
	} 
	
	public Map<String, Object> updateContactUsStatus(HttpServletRequest httpServletRequest, long id){
		HttpSession session = httpServletRequest.getSession();
		User user = (User) session.getAttribute("user");
		Map<String, Object> data = new HashMap<>();
		try {
			ContactUs contactUs = contactUsDao.findOne(id);
			if(contactUs.getStatus().equals(InquiryStatus.UNREAD)){
				contactUsDao.update(InquiryStatus.READ, id, user.getId());
			}
			
			data.put("message", contactUs);
			data.put("reply", contactUsReplyDao.findAll(id));
		} catch (Exception e) {
		}
		return data;
	}
}
