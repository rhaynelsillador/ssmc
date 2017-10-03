package net.cms.ssmc.services;


import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import net.cms.ssmc.dao.ControlDao;
import net.cms.ssmc.dao.FaqDao;
import net.cms.ssmc.dao.FaqTempDao;
import net.cms.ssmc.model.Control;
import net.cms.ssmc.model.FaqTemp;
import net.ssmc.dao.UserDao;
import net.ssmc.enums.Module;
import net.ssmc.enums.Status;
import net.ssmc.model.Helper;
import net.ssmc.model.User;

public class ControlServices {

	@Autowired
	private ControlDao controlDao;
	@Autowired
	private UserDao userDao;
	@Autowired
	private FaqTempDao faqTempDao;
	@Autowired
	private FaqDao faqDao;
	
	
	public void createControl(Module module, long id){
		Control control = new Control();
		control.setModule(module);
		control.setModuleId(id);
		controlDao.create(control);
	}
	
//	public boolean isApproved(Control control){
//		int approved = controlDao.countApproved(control.getId());
//		return userDao.countApprover() == approved ? false : true;
//	}
//	
	public void createControl(Control control){
		controlDao.create(control);
	}
	
	public void deleteControl(Module module, int moduleId){
		controlDao.deleteControl(module, moduleId);
	}
	
	public boolean hasApproved(HttpServletRequest httpServletRequest, Module module, int controlId){
		HttpSession session = httpServletRequest.getSession();
		User user = (User) session.getAttribute("user");
		if(user.isApprover()){
			boolean hasApproved = controlDao.hasApproved(module, controlId, user.getId()) != 0 ? true : false;
			session.setAttribute("hasApproved", hasApproved);
			System.err.println("hasApprovedhasApproved :: "+hasApproved);
			return hasApproved;
		}
		return false;
	}
	
	public Map<String, Object> approve(HttpSession session, Control control){
		Map<String, Object> map = new HashMap<>();
		map.put(Helper.STATUS, Status.ERROR);
		User user = (User) session.getAttribute("user");
		user = userDao.retrieve(user.getId());
		control.setUserid(user.getId());
		
		switch (control.getModule()) {
		case FAQ:
			try {
				faqTempDao.findOne(control.getModuleId());
			} catch (Exception e1) {
				e1.printStackTrace();
				map.put(Helper.MESSAGE, "This is an invalid module id.");
				return map;
			}
			break;

		default:
			break;
		}
		
		if(user.isApprover()){
			try {
				controlDao.retrieveByModule(control);
				map.put(Helper.MESSAGE, "You already approved this module.");
			} catch (Exception e) {
				map.put(Helper.STATUS, Status.SUCCESS);
				map.put(Helper.MESSAGE, "Click approve button to published this module.");
			}
		}else{
			map.put(Helper.MESSAGE, "You are not allowed to approve this module.");
		}
//		
//		
//		
		
		return map;
	}
	
	
	public Map<String, Object> approvedFaqTemp(HttpServletRequest httpServletRequest, Map<String, String> request){
		User user = (User) httpServletRequest.getSession().getAttribute("user");
		Map<String, Object> map = new HashMap<>();
		map.put(Helper.STATUS, Status.ERROR);
		Module module = null;
		long moduleId = 0;
		try {
			module = Module.valueOf(request.get("module"));
		} catch (Exception e) {
			map.put(Helper.MESSAGE, "Invalid module.");
			return map;
		}
		try {
			moduleId = Long.parseLong(request.get("id"));
		} catch (Exception e) {
			map.put(Helper.MESSAGE, "Invalid module id.");
			return map;
		}
		
		Control control = new Control();
		control.setModuleId(moduleId);
		control.setUserid(user.getId());
		control.setModule(module);
		
		int totalApprover = userDao.countApprover();
		switch (module) {
		case FAQ:
			FaqTemp faqTemp = null;
			try {
				faqTemp = faqTempDao.findOne(Long.parseLong(request.get("id")));
			} catch (Exception e) {
				e.printStackTrace();
			}
			if(faqTemp == null){
				map.put(Helper.MESSAGE, "This is an invalid FAQ.");
				return map;
			}
			int totalApproved = controlDao.hasApproved(module, moduleId, user.getId());
			if(totalApproved == totalApprover){
				controlDao.deleteControl(module, moduleId);
				faqTempDao.delete(moduleId);
				if(faqTemp.getMainid() != 0){
					faqDao.update(faqTemp);
				}else{
					faqDao.create(faqTemp);
				}
				map.put(Helper.STATUS, Status.SUCCESS);
				map.put(Helper.MESSAGE, "FAQ approved successfully and already published!");
			}else{
				try {
					controlDao.create(control);
				} catch (Exception e) {
					map.put(Helper.MESSAGE, "You already approved this "+ module.toString()+".");
					return map;
				}
				map.put(Helper.STATUS, Status.SUCCESS);
				map.put(Helper.MESSAGE, "FAQ approved successfully!");
			}
			break;

		default:
			break;
		}
		
		
		return map;
	}
}
