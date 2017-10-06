package net.cms.ssmc.dao;

import java.util.List;

import net.cms.ssmc.model.Control;
import net.ssmc.enums.Module;
import net.ssmc.model.PendingApproval;

public interface ControlDao {
	
	void create(Control control) throws Exception;
	Control retrieve(Control control);
	List<Control> findAllByUser(long userId);
	void deleteControl(Module module, long moduleId);
	int hasApproved(Module module , long controlId, long userid);
	Control retrieveByModule(Control control) throws Exception;
	
}
