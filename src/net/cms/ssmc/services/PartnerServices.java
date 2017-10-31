package net.cms.ssmc.services;

import java.io.File;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;

import net.cms.ssmc.dao.PartnerDao;
import net.cms.ssmc.model.Partner;
import net.ssmc.enums.TransactionType;
import net.ssmc.model.Helper;
import net.ssmc.utils.FileUploadUtility;
import net.ssmc.utils.Properties;

public class PartnerServices {

	@Autowired
	private PartnerDao partnersDao;
	@Autowired
	private Properties properties;
	@Autowired
	private ObjectMapper objectMapper;
	
	public Map<String, Object> getPartners(Map<String, String> request){		
		Map<String, Object> data = new HashMap<>();
		data.put("rows", partnersDao.retrievePartners(request));
		data.put("current", request.get("current"));
		data.put("rowCount", request.get("rowCount"));
		data.put("total", partnersDao.count(request));
		return data;
	}	
	
	public ObjectNode createPartner(String name, String url, MultipartFile logo, long id, TransactionType transactionType){
		ObjectNode  node = objectMapper.createObjectNode();
		if(name.isEmpty()){
			node.put(Helper.STATUS, "ERROR");
			node.put(Helper.MESSAGE, "Partner name is required!");
		}else if(url.isEmpty() || getResponseCode(url)!=200){
			node.put(Helper.STATUS, "ERROR");
			node.put(Helper.MESSAGE, "Partner url is invalid!");
		}else{
			Partner partner = new Partner();
			
			partner.setName(name);
			partner.setUrl(url);
			
			if(transactionType.equals(TransactionType.ADD)){
				if(!logo.isEmpty()){
					String fileName = FileUploadUtility.getSaltString()+"."+FilenameUtils.getExtension(logo.getOriginalFilename());
					try {
						FileCopyUtils.copy(logo.getBytes(), new File(properties.getUploadDir()+"/"+fileName));
						partner.setLogo(properties.getUpload()+fileName);
					} catch (IOException e) {
						node.put(Helper.STATUS, "ERROR");
						node.put(Helper.MESSAGE, "Partner logo saving encountered an error!");
					}
				}else{
					partner.setLogo("upload/default.png");
				}
				
				partnersDao.create(partner);
				node.put(Helper.STATUS, "SUCCESS");
				node.put(Helper.MESSAGE, "Partner information successfully added!");
			}else if(transactionType.equals(TransactionType.UPDATE)){
				if(!logo.isEmpty()){
					String fileName = FileUploadUtility.getSaltString()+"."+FilenameUtils.getExtension(logo.getOriginalFilename());
					try {
						FileCopyUtils.copy(logo.getBytes(), new File(properties.getUploadDir()+"/"+fileName));
						partner.setLogo(properties.getUpload()+fileName);
					} catch (IOException e) {
						node.put(Helper.STATUS, "ERROR");
						node.put(Helper.MESSAGE, "Partner logo update encountered and error!");
						return node;
					}
				}else{
					partner.setLogo(partnersDao.findOne(id).getLogo());
					
				}
				partner.setId(id);			
				try {
					partnersDao.update(partner);
					node.put(Helper.STATUS, "SUCCESS");
					node.put(Helper.MESSAGE, "Partner information successfully update!");
				} catch (Exception e) {
					node.put(Helper.STATUS, "ERROR");
					node.put(Helper.MESSAGE, "Partner information unsuccessfully update!");
					e.printStackTrace();
				}
			}
			
			
		}
		
		return node;
	}
	
	public ObjectNode deletePartner(long id){
		ObjectNode  node = objectMapper.createObjectNode();
		try {
			partnersDao.delete(id);
			node.put(Helper.STATUS, "SUCCESS");
			node.put(Helper.MESSAGE, "Partner successfully deleted!");
		} catch (Exception e) {
			node.put(Helper.STATUS, "ERROR");
			node.put(Helper.MESSAGE, "Partner unsuccessfully deleted!");
		}
		return node;
	}
	
	public Partner partnerDetails(long id){
		return partnersDao.findOne(id);
	}
	
	public static int getResponseCode(String urlString){
	    URL u;
	    HttpURLConnection huc;
		try {
			u = new URL(urlString);
			huc =  (HttpURLConnection)  u.openConnection(); 
		    huc.setRequestMethod("GET"); 
		    huc.connect(); 
		    return huc.getResponseCode();
		} catch (IOException e) {
		} 
		return 500;
	}
	
}
