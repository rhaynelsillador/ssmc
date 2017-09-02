package net.cms.ssmc.dao;

import java.util.List;

import net.cms.ssmc.model.Control;
import net.ssmc.enums.Module;
import net.ssmc.model.PendingApproval;

public interface ControlDao {
	
	void create(Control control);
	void createApproved(int userId, int controlId);
	Control retrieve(Control control);
//	void deleteApproved(int controlId);
	void deleteControl(Module module, int moduleId);
	int countApproved(int controlId);
	int hasApproved(Module module , int controlId, int userid);
	Control retrieveByModule(Control control) throws Exception;
	List<PendingApproval> retrieveAll(int userid);

}
