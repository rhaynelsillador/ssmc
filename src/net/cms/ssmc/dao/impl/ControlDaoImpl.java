package net.cms.ssmc.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import net.cms.ssmc.dao.ControlDao;
import net.cms.ssmc.model.Control;
import net.cms.ssmc.model.ControlMapper;
import net.ssmc.enums.Module;

public class ControlDaoImpl implements ControlDao {

	private static final String INSERT 			= "INSERT INTO CONTROL (module, moduleid, userid) VALUES (?,?,?)";
	private static final String FINDONE			= "SELECT * FROM CONTROL WHERE id = ?";
	private static final String FINDONEBYMODULE	= "SELECT * FROM CONTROL WHERE module = ? AND moduleid = ? AND userid=?";
	private static final String DELETEBYID 		= "DELETE FROM CONTROL WHERE module = ? AND moduleid = ? ";
	private static final String HASAPPROVED 	= "SELECT COUNT(id) FROM CONTROL WHERE MODULE = ? AND MODULEID= ?";
	
	
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public void create(Control control) throws Exception{
		System.out.println(control);
		jdbcTemplate.update(INSERT, new Object[] {
			control.getModule().ordinal(),
			control.getId(),
			control.getUserid()
		});
	}
	@Override
	public Control retrieveByModule(Control control) throws Exception{
		System.out.println(control.getId()+" " + control.getModule().ordinal()+" : "+ control.getUserid());
		return jdbcTemplate.queryForObject(FINDONEBYMODULE, new Object[]{3, 48, control.getUserid()}, new ControlMapper());
	}
	
	@Override
	public Control retrieve(Control control) {
		return jdbcTemplate.queryForObject(FINDONE, new ControlMapper());
	}
	
	@Override
	public void deleteControl(Module module, long moduleId) {
		jdbcTemplate.update(DELETEBYID, new Object[] {module.ordinal(), moduleId});
	}

	@Override
	public int hasApproved(Module module , long controlId, long userid) {
		return jdbcTemplate.queryForObject(HASAPPROVED, new Object[]{module.ordinal(), controlId}, Integer.class);
	}
}
