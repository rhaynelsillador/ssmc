package net.ssmc.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

import net.ssmc.enums.InquiryStatus;
import net.ssmc.model.ContactUs;

public interface ContactUsDao {
	
	long count();
	void create(ContactUs contactUs);
	ContactUs findOne(long id);
	List<ContactUs> retrieveAll(Map<String, String> request);
	List<ContactUs> retrieveAll(int limit);
	void delete(int id);
	void update(InquiryStatus status, long id, long userId);
	long countLastMonth();
	long countLastMonthPerDay(Date date);
	List<ContactUs> countUniqueLastMonth();
	List<ContactUs> countUniqueLastMonthPerDay(Date date);

}
