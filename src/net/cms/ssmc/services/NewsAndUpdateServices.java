package net.cms.ssmc.services;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;

import net.cms.ssmc.dao.NewsAndUpdateDao;
import net.cms.ssmc.model.NewsAndUpdate;
import net.ssmc.model.Helper;

public class NewsAndUpdateServices {

	@Autowired
	private NewsAndUpdateDao newsAndUpdateDao;
	@Autowired
	private ObjectMapper objectMapper;
	
	public Map<String, Object> getAllNewsAndUpdates(Map<String, String> request){
		Map<String, Object> data = new HashMap<>();
		List<NewsAndUpdate> images = newsAndUpdateDao.findAll(request); 
		data.put("rows", images);
		data.put("current", request.get("current"));
		data.put("rowCount", request.get("rowCount"));
		data.put("total", newsAndUpdateDao.count(request));
		return data;
	}
	
	public NewsAndUpdate getNewsAndUpdate(long id){
		try {
			return newsAndUpdateDao.findOne(id);
		} catch (Exception e) {
			return new NewsAndUpdate();
		}
	}
	
	public ObjectNode publishedNewsAndUpdate(long id){
		ObjectNode node = objectMapper.createObjectNode();
		int status = newsAndUpdateDao.published(id);
		node.put(Helper.STATUS, "SUCCESS");
		node.put(Helper.MESSAGE, "New and Update successfully "+(status == 1 ? "Published!" : "Unpublished!"));
		return node;
	}
	
	public ObjectNode deleteNewsAndUpdate(long id){
		ObjectNode node = objectMapper.createObjectNode();
		newsAndUpdateDao.delete(id);
		node.put(Helper.STATUS, "SUCCESS");
		node.put(Helper.MESSAGE, "New and Update successfully delete!");
		return node;
	}
	
	public ObjectNode createNewsAndUpdate(NewsAndUpdate newsAndUpdate){
		ObjectNode node = objectMapper.createObjectNode();
		if(newsAndUpdate.getTitle().trim().isEmpty()){
			node.put(Helper.STATUS, "ERROR");
			node.put(Helper.MESSAGE, "New and Update name is required!");
		}else if(newsAndUpdate.getNews().trim().isEmpty()){
			node.put(Helper.STATUS, "ERROR");
			node.put(Helper.MESSAGE, "New and Update content is required!");
		}else{
			newsAndUpdateDao.create(newsAndUpdate);
			node.put(Helper.STATUS, "SUCCESS");
			node.put(Helper.MESSAGE, "New and Update successfully delete!");
		}
		return node;
	}
	
	public ObjectNode updateNewsAndUpdate(NewsAndUpdate newsAndUpdate){
		ObjectNode node = objectMapper.createObjectNode();
		if(newsAndUpdate.getId() == 0){
			node.put(Helper.STATUS, "ERROR");
			node.put(Helper.MESSAGE, "New and Update is invalid!");
		}else if(newsAndUpdate.getTitle().trim().isEmpty()){
			node.put(Helper.STATUS, "ERROR");
			node.put(Helper.MESSAGE, "New and Update name is required!");
		}else if(newsAndUpdate.getNews().trim().isEmpty()){
			node.put(Helper.STATUS, "ERROR");
			node.put(Helper.MESSAGE, "New and Update content is required!");
		}else{
			newsAndUpdateDao.update(newsAndUpdate);
			node.put(Helper.STATUS, "SUCCESS");
			node.put(Helper.MESSAGE, "New and Update successfully delete!");
		}
		return node;
	}
}
