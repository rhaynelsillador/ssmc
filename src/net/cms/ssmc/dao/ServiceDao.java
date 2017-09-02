package net.cms.ssmc.dao;

import java.util.List;
import java.util.Map;

import net.cms.ssmc.model.Service;
import net.ssmc.enums.App;
import net.ssmc.enums.Module;
import net.ssmc.model.Image;

public interface ServiceDao {

	long count();
	long create(Service service);
	void update(Service service, int id);
	List<Service> retrieveAll(Map<String, String> request);
	Service retrieve(int id);
	Service retrieveActiveService(App app);
	void delete(int id);
	
	
	void addImages(Service service, int id);
	List<Image> retrieveImage(int id, Module module);
	
}
