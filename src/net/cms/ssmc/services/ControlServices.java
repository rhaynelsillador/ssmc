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
		try {
			controlDao.create(control);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
//	public boolean isApproved(Control control){
//		int approved = controlDao.countApproved(control.getId());
//		return userDao.countApprover() == approved ? false : true;
//	}
//	
	public void createControl(Control control){
		try {
			controlDao.create(control);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
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
				faqTempDao.findOne(control.getId());
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
				System.out.println(control);
				controlDao.retrieveByModule(control);
				map.put(Helper.MESSAGE, "You already approved this FAQ.");
			} catch (Exception e) {
				e.printStackTrace();
				map.put(Helper.STATUS, Status.SUCCESS);
				map.put(Helper.MESSAGE, "Click approve button to published this FAQ.");
			}
		}else{
			map.put(Helper.MESSAGE, "You are not allowed to approve this FAQ.");
		}		
		return map;
	}
	
	
	public Map<String, Object> approvedFaqTemp(HttpServletRequest httpServletRequest, Control control){
		User user = (User) httpServletRequest.getSession().getAttribute("user");
		Map<String, Object> map = new HashMap<>();
		map.put(Helper.STATUS, Status.ERROR);
		map.put(Helper.CODE, 1);
//		Module module = null;
//		long moduleId = 0;
		
		if(control.getModule() == null){
			map.put(Helper.MESSAGE, "Invalid module.");
			return map;
		}
		if(control.getId() == 0){
			map.put(Helper.MESSAGE, "Invalid module id.");
			return map;
		}
		control.setUserid(user.getId());
		
		int totalApprover = userDao.countApprover();
		switch (control.getModule()) {
		case FAQ:
			FaqTemp faqTemp = null;
			try {
				faqTemp = faqTempDao.findOne(control.getId());
			} catch (Exception e) {
				e.printStackTrace();
			}
			if(faqTemp == null){
				map.put(Helper.MESSAGE, "This is an invalid FAQ.");
				return map;
			}
			try {
				controlDao.create(control);
			} catch (Exception e) {
				e.printStackTrace();
				map.put(Helper.MESSAGE, "You already approved this "+ control.getModule().toString()+".");
				return map;
			}
			int totalApproved = controlDao.hasApproved(control.getModule(), control.getId(), user.getId());
			if(totalApproved == totalApprover){
				controlDao.deleteControl(control.getModule(), control.getId());
				faqTempDao.delete(control.getId());
				if(faqTemp.getMainid() != 0){
					faqDao.update(faqTemp);
					System.out.println("UPDATE MADE");
				}else{
					faqDao.create(faqTemp);
					System.out.println("CREATE MADE");
				}
				map.put(Helper.STATUS, Status.SUCCESS);
				map.put(Helper.MESSAGE, "FAQ approved successfully and already published!");
				map.put(Helper.CODE, 2);
			}else{
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
