package net.cms.ssmc.services;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.mail.Message;

import org.springframework.beans.factory.annotation.Autowired;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;

import net.cms.ssmc.dao.FeaturedBoxDao;
import net.cms.ssmc.model.FeaturedBox;
import net.ssmc.model.Helper;

public class FeaturedBoxServices {
	
	@Autowired
	private FeaturedBoxDao featuredBoxDao;
	@Autowired
	private ObjectMapper objectMapper;
	
	public Map<String, Object> getFeaturedBoxes(Map<String, String> request){		
		Map<String, Object> data = new HashMap<>();
		data.put("rows", featuredBoxDao.findAll());
		data.put("current", request.get("current"));
		data.put("rowCount", request.get("rowCount"));
		data.put("total", featuredBoxDao.count());
		return data;
	}
	
	public FeaturedBox getFeaturedBox(long id){
		try {
			return featuredBoxDao.findOne(id);
		} catch (Exception e) {
			return null;
		}
	}

	public ObjectNode updateFeaturedBox(FeaturedBox featuredBox){
		ObjectNode node = objectMapper.createObjectNode();
		if(featuredBox.getName().isEmpty()){
			node.put(Helper.STATUS, "ERROR");
			node.put(Helper.MESSAGE, "Featured box name is required!");
		}else if(featuredBox.getDescription().isEmpty()){
			node.put(Helper.STATUS, "ERROR");
			node.put(Helper.MESSAGE, "Featured box description is required!");
		}else{
			featuredBoxDao.update(featuredBox);
			node.put(Helper.STATUS, "SUCCESS");
			node.put(Helper.MESSAGE, "Featured box successfully updated!");
		}
		return node;
	}

	
}
