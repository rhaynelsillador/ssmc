package net.cms.ssmc.services;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import net.cms.ssmc.dao.AboutUsDao;
import net.cms.ssmc.model.AboutUs;
import net.ssmc.enums.Module;
import net.ssmc.enums.Status;
import net.ssmc.enums.TransactionType;
import net.ssmc.model.Helper;

public class AboutUsServices {

	@Autowired
	private AboutUsDao aboutUsDao;
	@Autowired
	private ControlServices controlServices;
	
	public List<AboutUs> getAllAboutUs(){
		return aboutUsDao.retrieveAll();
	}
	
	public Map<String, Object> getAllAboutUs(Map<String, String> request){
		Map<String, Object> data = new HashMap<>();
		List<AboutUs> aboutUs = aboutUsDao.retrieveAll(request);
		data.put("rows", aboutUs);
		data.put("current", request.get("current"));
		data.put("rowCount", request.get("rowCount"));
		data.put("total", aboutUsDao.count());
		return data;
	}
	
	public AboutUs getAboutUs(HttpServletRequest httpServletRequest, int id){
		controlServices.hasApproved(httpServletRequest, Module.ABOUTUS, id);
		try {
			return aboutUsDao.retrieve(id);
		} catch (Exception e) {
			httpServletRequest.getSession().setAttribute("TRANSACTION", TransactionType.ADD);
			return null;
		}
	}
	
	public Map<String, Object> addUpdateAboutUs(HttpSession session, AboutUs aboutUs) {
		Map<String, Object> response = new HashMap<>();
		TransactionType transactionType = (TransactionType) session.getAttribute("TRANSACTION");
		response.put(Helper.STATUS, Status.ERROR);
		if(aboutUs.getName() == null || aboutUs.getName().isEmpty()){
			response.put(Helper.MESSAGE, "About us name is required.");
		}else if(aboutUs.getContent() == null || aboutUs.getContent().isEmpty()){
			response.put(Helper.MESSAGE, "About us content is required.");
		}else{
			switch (transactionType) {
			case ADD:
				try {
					long id = aboutUsDao.create(aboutUs);
					controlServices.createControl(Module.ABOUTUS, id);
					response.put(Helper.MESSAGE, "About us successfully added");
					response.put(Helper.STATUS, Status.SUCCESS);
				} catch (Exception e) {
					response.put(Helper.MESSAGE, "About us unsuccessfully added");
					response.put(Helper.STATUS, Status.ERROR);
				}
				break;
			case UPDATE:
				try {
					AboutUs aboutUs2 = (AboutUs) session.getAttribute("aboutUs");
					aboutUsDao.update(aboutUs, aboutUs2.getId());
					response.put(Helper.MESSAGE, "About us successfully updated");
					response.put(Helper.STATUS, Status.SUCCESS);
				} catch (Exception e) {
					e.printStackTrace();
					response.put(Helper.MESSAGE, "About us unsuccessfully updated");
					response.put(Helper.STATUS, Status.ERROR);
				}
				break;
			default:
				break;
			}
		}
		return response;
	}
	
	public Map<String, Object> deleteAboutUs(HttpSession session, AboutUs aboutUs) {
		Map<String, Object> response = new HashMap<>();
		try {
			aboutUsDao.delete(aboutUs.getId());
			controlServices.deleteControl(Module.ABOUTUS, aboutUs.getId());
			response.put(Helper.MESSAGE, "About us successfully deleted");
			response.put(Helper.STATUS, Status.SUCCESS);
		} catch (Exception e) {
			response.put(Helper.MESSAGE, "About us unsuccessfully deleted");
			response.put(Helper.STATUS, Status.SUCCESS);
		}
		return response;
	} 
	
	public Map<String, Object> updateSorter(List<AboutUs> aboutUs) {
		Map<String, Object> response = new HashMap<>();
		try {
			aboutUsDao.updateSorter(aboutUs);
			response.put(Helper.MESSAGE, "About us sorter successfully updated!");
			response.put(Helper.STATUS, Status.SUCCESS);
		} catch (Exception e) {
			response.put(Helper.MESSAGE, "About us sorter unsuccessfully updated!");
			response.put(Helper.STATUS, Status.SUCCESS);
		}
		return response;
	} 
}
