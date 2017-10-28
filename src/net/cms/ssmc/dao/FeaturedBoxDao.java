package net.cms.ssmc.dao;

import java.util.List;

import net.cms.ssmc.model.FeaturedBox;

public interface FeaturedBoxDao {

	long count();
	List<FeaturedBox> findAll();
	FeaturedBox findOne(int id);
	
}
