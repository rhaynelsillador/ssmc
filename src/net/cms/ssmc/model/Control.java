package net.cms.ssmc.model;

import java.util.List;

import net.ssmc.enums.Module;
import net.ssmc.model.User;

public class Control {
	
	private int id;
	private Module module;
	private long moduleId;
	private long userid;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Module getModule() {
		return module;
	}
	public void setModule(Module module) {
		this.module = module;
	}
	public long getModuleId() {
		return moduleId;
	}
	public void setModuleId(long moduleId) {
		this.moduleId = moduleId;
	}
	public long getUserid() {
		return userid;
	}
	public void setUserid(long userid) {
		this.userid = userid;
	}
	@Override
	public String toString() {
		return "Control [id=" + id + ", module=" + module + ", moduleId=" + moduleId + ", userid=" + userid + "]";
	}
	
}
