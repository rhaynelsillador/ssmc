package net.cms.ssmc.dao;

import java.util.List;

import net.cms.ssmc.model.Control;
import net.ssmc.enums.Module;
import net.ssmc.model.PendingApproval;

public interface ControlDao {
	
	void create(Control control);
	Control retrieve(Control control);
	void deleteControl(Module module, long moduleId);
	int hasApproved(Module module , long controlId, long userid);
	Control retrieveByModule(Control control) throws Exception;
	
}
