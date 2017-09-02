package net.ssmc.services;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import net.ssmc.dao.CityDao;
import net.ssmc.enums.Status;
import net.ssmc.enums.TransactionType;
import net.ssmc.model.City;
import net.ssmc.model.Helper;

public class CityServices {

	@Autowired
	private CityDao cityDao;
	
	public List<City> retrieveCity(){
		return cityDao.retrieveAll();
	}
	
	public Map<String, Object> retrieveClinics(HttpSession session, Map<String, String> request){
		Map<String, Object> data = new HashMap<>();
		List<City> clinics = cityDao.retrieveAll(request);
		data.put("rows", clinics);
		data.put("current", request.get("current"));
		data.put("rowCount", request.get("rowCount"));
		data.put("total", clinics.size());
		return data;
	}
	
	public City getCity(int id){
		return cityDao.retrieve(id);
	}
	
	public Map<String, Object> createCity(HttpSession session, City city){
		Map<String, Object> data = new HashMap<>();
		data.put(Helper.STATUS, Status.ERROR);
		
		if(city.getCitykey() == null || city.getCitykey().isEmpty()){
			data.put(Helper.MESSAGE, "City key is required!");
		}else if(city.getName() == null || city.getName().isEmpty()){
			data.put(Helper.MESSAGE, "City name is required!");
		}else{
			
			if(session.getAttribute("TRANSACTION") == TransactionType.UPDATE){
				try {
					City city2 = (City) session.getAttribute("city");
					cityDao.update(city, city2.getId());
					data.put(Helper.STATUS, Status.SUCCESS);
					data.put(Helper.MESSAGE, "Successfully updated city information.");
				} catch (Exception e) {
					e.printStackTrace();
					data.put(Helper.STATUS, Status.ERROR);
					data.put(Helper.MESSAGE, "Unsuccessfully updated city information.");
				}
			}else if(session.getAttribute("TRANSACTION") == TransactionType.ADD){
				try {
					cityDao.create(city);
					data.put(Helper.STATUS, Status.SUCCESS);
					data.put(Helper.MESSAGE, "Successfully added city information.");
				} catch (Exception e) {
					e.printStackTrace();
					data.put(Helper.STATUS, Status.ERROR);
					data.put(Helper.MESSAGE, "Unsuccessfully added city information.");
				}
			}
		}
		return data;
	} 
	
	public Map<String, Object> deleteCity(HttpServletRequest httpServletRequest, City city){
		Map<String, Object> data = new HashMap<>();
		try {
			cityDao.delete(city.getId());
			data.put(Helper.STATUS, Status.SUCCESS);
			data.put(Helper.MESSAGE, "City successfully deleted.");
		} catch (Exception e) {
			data.put(Helper.STATUS, Status.ERROR);
			data.put(Helper.MESSAGE, "City unsuccessfully deleted.");
		}
		return data;		
	}
}
