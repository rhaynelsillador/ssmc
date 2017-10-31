package net.cms.ssmc.dao;

import java.util.List;
import java.util.Map;

import net.cms.ssmc.model.NewsAndUpdate;

public interface NewsAndUpdateDao {

	long count(Map<String, String> request);
	long create(NewsAndUpdate newsAndUpdate);
	void delete(long id);
	void update(NewsAndUpdate newsAndUpdate);
	int published(long id);
	List<NewsAndUpdate> findAll(Map<String, String> request);
	NewsAndUpdate findOne(long id) throws Exception;
	
}
