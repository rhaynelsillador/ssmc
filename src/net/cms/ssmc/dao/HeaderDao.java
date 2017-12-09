package net.cms.ssmc.dao;

import java.util.List;
import java.util.Map;

import net.cms.ssmc.model.Header;
import net.ssmc.enums.App;
import net.ssmc.model.form.FilterForm;

public interface HeaderDao {

	long count();
	long create(Header header);
	void update(Header header, int id);
	List<Header> retrieveAll(Map<String, String> request, FilterForm form);
	Header retrieve(int id);
	Header retrieveActive(App app);
	void delete(int id);
	
}
