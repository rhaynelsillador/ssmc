package net.cms.ssmc.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import net.cms.ssmc.dao.ControlDao;
import net.cms.ssmc.model.Control;
import net.cms.ssmc.model.ControlMapper;
import net.ssmc.dao.mapper.PendingApprovalMapper;
import net.ssmc.enums.Module;
import net.ssmc.model.PendingApproval;

public class ControlDaoImpl implements ControlDao {

	private static final String INSERT 			= "INSERT INTO CONTROL (module, moduleid) VALUES (?, ?)";
	private static final String INSERTAPPROVED	= "INSERT INTO USERAPPROVE (userid, controlid) VALUES (?, ?)";
	private static final String FINDONE			= "SELECT * FROM CONTROL WHERE id = ?";
	private static final String FINDONEBYMODULE	= "SELECT * FROM CONTROL WHERE module = ? AND moduleid = ?";
	private static final String DELETEBYID 		= "DELETE FROM CONTROL WHERE module = ? AND moduleid = ? ";
	private static final String COUNTAPPROVED 	= "SELECT COUNT(id) FROM USERAPPROVE WHERE controlid= ? ";
	private static final String HASAPPROVED 	= "SELECT COUNT(C.id) FROM USERAPPROVE AS UP INNER JOIN CONTROL AS C ON C.id=UP.controlid WHERE module= ? AND moduleid = ? AND userid = ? LIMIT 1";
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public void create(Control control) {
		jdbcTemplate.update(INSERT, new Object[] {
			control.getModule().ordinal(),
			control.getModuleId()
		});
	}
	@Override
	public void createApproved( int userId, int controlId) {
		jdbcTemplate.update(INSERTAPPROVED, new Object[] {
			userId,
			controlId
		});
	}

	@Override
	public Control retrieveByModule(Control control) throws Exception{
		System.out.println(control.getModuleId()+" " + control.getModule().ordinal());
		return jdbcTemplate.queryForObject(FINDONEBYMODULE, new Object[]{control.getModule().ordinal(), control.getModuleId()}, new ControlMapper());
	}
	
	@Override
	public Control retrieve(Control control) {
		return jdbcTemplate.queryForObject(FINDONE, new BeanPropertyRowMapper<Control>(Control.class));
	}
	
	@Override
	public void deleteControl(Module module, int moduleId) {
		jdbcTemplate.update(DELETEBYID, new Object[] {module.ordinal(), moduleId});
	}

	@Override
	public int countApproved(int controlId) {
		return jdbcTemplate.queryForObject(COUNTAPPROVED, Integer.class);
	}

	@Override
	public int hasApproved(Module module , int controlId, int userid) {
		return jdbcTemplate.queryForObject(HASAPPROVED, new Object[]{module.ordinal(), controlId, userid}, Integer.class);
	}
	@Override
	public List<PendingApproval> retrieveAll(int userid) {
		String SQL = "SELECT userid, C.id as controlid, module, moduleid, name FROM USERAPPROVE AS UP INNER JOIN CONTROL AS C ON C.id != UP.controlid INNER JOIN aboutus AS AU ON AU.id = C.moduleid WHERE module = 7 "+
					"UNION ALL "+
					"SELECT userid, C.id as controlid, module, moduleid, name FROM USERAPPROVE AS UP INNER JOIN CONTROL AS C ON C.id != UP.controlid INNER JOIN header AS AU ON AU.id = C.moduleid WHERE module = 8 "+
					"UNION ALL "+
					"SELECT userid, C.id as controlid, module, moduleid, name FROM USERAPPROVE AS UP INNER JOIN CONTROL AS C ON C.id != UP.controlid INNER JOIN service AS AU ON AU.id = C.moduleid WHERE module = 9";
		return jdbcTemplate.query(SQL, new Object[]{}, new PendingApprovalMapper());
	}

}
