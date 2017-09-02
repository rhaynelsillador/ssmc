package net.ssmc.dao.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import net.ssmc.enums.Access;
import net.ssmc.enums.Module;
import net.ssmc.model.PendingApproval;
import net.ssmc.model.Role;

public class PendingApprovalMapper implements RowMapper<PendingApproval> {

	@Override
	public PendingApproval mapRow(ResultSet rs, int arg1) throws SQLException {
		PendingApproval approval = new PendingApproval();
		Module module = Module.values()[rs.getInt("module")];
		approval.setId(rs.getInt("controlid"));
		approval.setModule(module);
		approval.setName(rs.getString("name"));
		approval.setModuleid(rs.getInt("moduleid"));
		approval.setUpdateUrl(module.getUpdateUrl());
		return approval;
	}

}
