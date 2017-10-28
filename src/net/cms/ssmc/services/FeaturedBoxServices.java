package net.cms.ssmc.services;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.fasterxml.jackson.databind.ObjectMapper;

import net.cms.ssmc.dao.FeaturedBoxDao;

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

}
