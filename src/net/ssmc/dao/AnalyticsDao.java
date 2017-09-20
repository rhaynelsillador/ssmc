package net.ssmc.dao;

import java.util.Date;
import java.util.List;

import net.ssmc.model.BrowseCount;

public interface AnalyticsDao {

	List<BrowseCount> findAll();
	long countCurrentOnline() throws Exception;
	List<BrowseCount> countCurrentOnlineHistory();
	long countLastMonth();
	long countLastMonthPerDay(Date date);
	List<BrowseCount> countUniqueLastMonth();
	List<BrowseCount> countUniqueLastMonthPerDay(Date date);
	
}
