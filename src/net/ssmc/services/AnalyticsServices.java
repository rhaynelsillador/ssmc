package net.ssmc.services;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import net.ssmc.dao.AnalyticsDao;
import net.ssmc.dao.RegisteredAccountDao;
import net.ssmc.model.BrowseCount;
import oracle.net.aso.b;

public class AnalyticsServices {

	@Autowired
	private AnalyticsDao analyticsDao;
	@Autowired
	private RegisteredAccountDao registeredAccountDao;
	
	public List<int[]> retrieveAll(){
		List<BrowseCount> browseCounts = analyticsDao.findAll();
		Collections.reverse(browseCounts);
		List<int[]> graphs = new ArrayList<int[]>();
		int index = 0;
		for (BrowseCount browseCount : browseCounts) {
			int data[] = new int[2];
			data[0] = index++;
			data[1] = browseCount.getCount();
			graphs.add(data);
		}
		return graphs;
	}
	
	public Map<String, Object> countCurrentOnline(){
		Map<String, Object> data = new HashMap<>();

		try {
			List<BrowseCount> browseCounts = analyticsDao.countCurrentOnlineHistory();
			Collections.reverse(browseCounts);
			data.put("count", analyticsDao.countCurrentOnline());
			data.put("history", browseCounts);
		} catch (Exception e) {
			data.put("count", 0);
		}
		data.put("totalRegistered", registeredAccountDao.totalRegisterThisMonth());
		data.put("totalLogin", registeredAccountDao.totalLoginThisMonth());
		analyticsDao.countLastMonth();
		return data;
	}
}
