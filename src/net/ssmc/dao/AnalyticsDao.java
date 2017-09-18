package net.ssmc.dao;

import java.util.List;

import net.ssmc.model.BrowseCount;

public interface AnalyticsDao {

	List<BrowseCount> findAll();
	long countCurrentOnline() throws Exception;
	List<BrowseCount> countCurrentOnlineHistory();
	
}
