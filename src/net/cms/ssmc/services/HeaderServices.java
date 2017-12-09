package net.cms.ssmc.services;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;

import net.cms.ssmc.dao.HeaderDao;
import net.cms.ssmc.model.Header;
import net.ssmc.enums.App;
import net.ssmc.enums.Module;
import net.ssmc.enums.Status;
import net.ssmc.enums.TransactionType;
import net.ssmc.model.Helper;
import net.ssmc.model.form.FilterForm;

public class HeaderServices {

	@Autowired
	private HeaderDao headerDao;
	@Autowired
	private ControlServices controlServices;
	@Autowired
	private Gson gson;
	
	public Map<String, Object> getAllHeaders(Map<String, String> request){
		Map<String, Object> data = new HashMap<>();
		
		
		
		FilterForm form = gson.fromJson(request.get("form"), FilterForm.class);
		
		System.out.println(request + " :: "+form);
		
		List<Header> headers = headerDao.retrieveAll(request, form);
		data.put("rows", headers);
		data.put("current", request.get("current"));
		data.put("rowCount", request.get("rowCount"));
		data.put("total", headerDao.count());
		return data;
	} 
	
	public Header getHeader(HttpServletRequest httpServletRequest, int id){
		controlServices.hasApproved(httpServletRequest, Module.HEADER, id);
		return headerDao.retrieve(id);
	}
	
	public Header getActiveHeader(HttpServletRequest httpServletRequest, int id){
		if(controlServices.hasApproved(httpServletRequest, Module.HEADER, id)){
			return headerDao.retrieveActive(App.HOSPITALS);
		}return null;
	}
	
	public Map<String, Object> deleteHeader(HttpSession session, Header header){
		Map<String, Object> response = new HashMap<>();
		try {
			headerDao.delete(header.getId());
			controlServices.deleteControl(Module.HEADER, header.getId());
			response.put(Helper.STATUS, Status.SUCCESS);
			response.put(Helper.MESSAGE, "Header successfully delete!");
		} catch (Exception e) {
			response.put(Helper.STATUS, Status.ERROR);
			response.put(Helper.MESSAGE, "Header unsuccessfully delete!");
		}
		return response;
	}
	
	public Map<String, Object> createUpdateHeader(HttpSession session, Header header){
		TransactionType transactionType = (TransactionType) session.getAttribute("TRANSACTION");
		Map<String, Object> response = new HashMap<>();
		response.put(Helper.STATUS, Status.ERROR);
		if(header.getName() == null || header.getName().isEmpty()){
			response.put(Helper.MESSAGE, "Header name is required!");
		}else if(header.getTitle() == null || header.getTitle().isEmpty()){
			response.put(Helper.MESSAGE, "Header title is required!");
		}else if(header.getContent() == null || header.getContent().isEmpty()){
			response.put(Helper.MESSAGE, "Header content is required!");
		}else{
			switch(transactionType){
			case ADD:
				try {
					long id = headerDao.create(header);
					controlServices.createControl(Module.HEADER, id);
					response.put(Helper.MESSAGE, "About us successfully added");
					response.put(Helper.STATUS, Status.SUCCESS);
				} catch (Exception e) {
					e.printStackTrace();
					response.put(Helper.MESSAGE, "About us unsuccessfully added");
					response.put(Helper.STATUS, Status.ERROR);
				}
				break;
			case UPDATE:
				try {
					Header header2 = (Header) session.getAttribute("header");
					headerDao.update(header, header2.getId());
					response.put(Helper.MESSAGE, "Header successfully updated");
					response.put(Helper.STATUS, Status.SUCCESS);
				} catch (Exception e) {
					e.printStackTrace();
					response.put(Helper.MESSAGE, "Header unsuccessfully updated");
					response.put(Helper.STATUS, Status.ERROR);
				}
				break;
			default:
				break;	
			}
		}
		return response;
	}		
}
