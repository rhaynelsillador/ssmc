package net.ssmc.dao.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import net.cms.ssmc.model.Control;
import net.ssmc.enums.Module;
import net.ssmc.model.User;

public class ControlMapper implements RowMapper<Control>{

	@Override
	public Control mapRow(ResultSet rs, int arg1) throws SQLException {
		Control control = new Control();
		control.setId(rs.getInt("id"));
		control.setModule(Module.values()[rs.getInt("module")]);
		control.setModuleId(rs.getLong("moduleid"));
		control.setUserid(rs.getLong("userid"));
		return control;
	}

}
