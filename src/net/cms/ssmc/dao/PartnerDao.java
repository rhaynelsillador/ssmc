package net.cms.ssmc.dao;

import java.util.List;
import java.util.Map;

import net.cms.ssmc.model.Partner;

public interface PartnerDao {
	
	long count(Map<String, String> request);
	void create(Partner partners);
	Partner findOne(long id);
	List<Partner> retrievePartners(Map<String, String> request);
	List<Partner> retrievePartners();
	void update(Partner partner) throws Exception;
	void delete(long id) throws Exception;
	
}
