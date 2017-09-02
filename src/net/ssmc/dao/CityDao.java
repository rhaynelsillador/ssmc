package net.ssmc.dao;

import java.util.List;
import java.util.Map;

import net.ssmc.model.City;

public interface CityDao {

	long create(City city);
	City retrieve(long id);
	List<City> retrieveAll(Map<String, String> request);
	List<City> retrieveAll();
	void update(City city, long id);
	void delete(long id);
	
}
