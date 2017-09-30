package net.cms.ssmc.dao;

import java.util.List;
import java.util.Map;

import net.cms.ssmc.model.Faq;
import net.cms.ssmc.model.FaqTemp;

public interface FaqTempDao {

	long count();
	List<FaqTemp> findAll(Map<String, String> request);
	FaqTemp findOne(long id) throws Exception;
	FaqTemp findOneByMain(long id) throws Exception;
	void update(FaqTemp faqTemp);
	long create(FaqTemp faqTemp, long mainId);
}
