package net.ssmc.model;

import net.ssmc.enums.Module;

public class PendingApproval {

	private int id;
	private String name;
	private String description;
	private Module module;
	private int moduleid;
	private String updateUrl;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Module getModule() {
		return module;
	}
	public void setModule(Module module) {
		this.module = module;
	}
	public int getModuleid() {
		return moduleid;
	}
	public void setModuleid(int moduleid) {
		this.moduleid = moduleid;
	}
	public String getUpdateUrl() {
		return updateUrl;
	}
	public void setUpdateUrl(String updateUrl) {
		this.updateUrl = updateUrl;
	}
	@Override
	public String toString() {
		return "PendingApproval [id=" + id + ", name=" + name + ", description=" + description + ", module=" + module
				+ ", moduleid=" + moduleid + ", updateUrl=" + updateUrl + "]";
	}
	
	
}
