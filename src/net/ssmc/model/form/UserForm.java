package net.ssmc.model.form;

import net.ssmc.model.User;

public class UserForm extends User{

	private String lastLoginDateFrom;
	private String lastLoginDateTo;
	
	public String getLastLoginDateFrom() {
		return lastLoginDateFrom;
	}
	public void setLastLoginDateFrom(String lastLoginDateFrom) {
		this.lastLoginDateFrom = lastLoginDateFrom;
	}
	public String getLastLoginDateTo() {
		return lastLoginDateTo;
	}
	public void setLastLoginDateTo(String lastLoginDateTo) {
		this.lastLoginDateTo = lastLoginDateTo;
	}
}
