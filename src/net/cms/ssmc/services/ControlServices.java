package net.cms.ssmc.services;


import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import net.cms.ssmc.dao.ControlDao;
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
	
	public boolean approve(HttpSession session, Control control){
		User user = (User) session.getAttribute("user");
		Control control2;
		try {
			control2 = controlDao.retrieveByModule(control);
//			controlDao.createApproved(user.getId(), control2.getId());
		} catch (Exception e) {
			return false;
		}
		
		return true;
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
		
		switch (module) {
		case FAQ:
			FaqTemp faqTemp = null;
			try {
				faqTemp = faqTempDao.findOne(Long.parseLong(request.get("id")));
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			System.out.println(faqTemp);
			userDao.countApprover();
			controlDao.hasApproved(module, moduleId, user.getId());
			break;

		default:
			break;
		}
		
		
		return map;
	}
}
