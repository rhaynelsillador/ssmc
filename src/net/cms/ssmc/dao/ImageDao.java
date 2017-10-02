package net.cms.ssmc.dao;

import java.util.List;

import net.ssmc.enums.Module;
import net.ssmc.model.Image;

public interface ImageDao {

	void addImages(int id, Module module, String image);
	List<Image> retrieveImage(int id, Module module);
	void delete(int id);
	void update(int id, boolean status);
	
}
