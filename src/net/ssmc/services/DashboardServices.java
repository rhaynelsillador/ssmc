package net.ssmc.services;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import net.cms.ssmc.dao.ControlDao;
import net.ssmc.model.PendingApproval;
import net.ssmc.model.User;

public class DashboardServices {

	@Autowired
	private ControlDao controlDao;
	
	public List<PendingApproval> getAllPendingApproval(HttpServletRequest httpServletRequest){
		HttpSession session = httpServletRequest.getSession();
		User user = (User) session.getAttribute("user");
		return controlDao.retrieveAll(user.getId());
	}
	
}
