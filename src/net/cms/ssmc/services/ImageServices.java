package net.cms.ssmc.services;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import net.cms.ssmc.dao.ImageDao;
import net.ssmc.enums.Module;
import net.ssmc.enums.Status;
import net.ssmc.model.Helper;
import net.ssmc.model.Image;

public class ImageServices {

	@Autowired
	private ImageDao imageDao;
	
	private final static String IMAGE = "image";
	
	public void getServicesImages(HttpServletRequest httpServletRequest, int id){
		httpServletRequest.setAttribute(IMAGE, imageDao.retrieveImage(id, Module.SERVICE));
	}
	
	public void getHeaderImages(HttpServletRequest httpServletRequest, int id){
		httpServletRequest.setAttribute(IMAGE, imageDao.retrieveImage(id, Module.HEADER));
	}
	
	public Map<String, Object> getAllImages(HttpSession session, Map<String, String> request){
		int id = 0;
		try {
			id = (int) session.getAttribute("moduleid");
		} catch (Exception e) {
		}
		
		Module module = (Module) session.getAttribute("module");
		Map<String, Object> data = new HashMap<>();
		List<Image> images = imageDao.retrieveImage(id, module);
		data.put("rows", images);
		data.put("current", request.get("current"));
		data.put("rowCount", request.get("rowCount"));
		data.put("total", images.size());
		return data;
	} 
	
	public  Map<String, Object> deleteImage(HttpSession session, Image image){
		Map<String, Object> response = new HashMap<>();
		response.put(Helper.STATUS, Status.SUCCESS);
		response.put(Helper.MESSAGE, "Image successfully deleted!");
		imageDao.delete(image.getId());
		return response;
	}
	
	public  Map<String, Object> updateImage(HttpSession session, Image image){
		Map<String, Object> response = new HashMap<>();
		response.put(Helper.STATUS, Status.SUCCESS);
		response.put(Helper.MESSAGE, "Image successfully updated!");
		if(image.isStatus()){
			imageDao.update(image.getId(), false);
		}else{
			imageDao.update(image.getId(), true);
		}
		
		return response;
	}
}
