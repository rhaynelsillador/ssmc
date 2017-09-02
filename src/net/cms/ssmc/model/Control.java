package net.cms.ssmc.model;

import java.util.List;

import net.ssmc.enums.Module;
import net.ssmc.model.User;

public class Control {
	
	private int id;
	private Module module;
	private long moduleId;
	private List<User> users;
	
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
	public List<User> getUsers() {
		return users;
	}
	public void setUsers(List<User> users) {
		this.users = users;
	}

}
