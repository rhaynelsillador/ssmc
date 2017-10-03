package net.cms.ssmc.dao;

import java.util.List;
import java.util.Map;

import net.cms.ssmc.model.Faq;
import net.cms.ssmc.model.FaqTemp;

public interface FaqDao {
	
	long count();
	long create(FaqTemp faq);
	Faq retrieve(int id);
	List<Faq> retrieveAll(Map<String, String> request);
	void update(FaqTemp faq);
	void updateStatus(Faq faq);
	void delete(int id);

}
