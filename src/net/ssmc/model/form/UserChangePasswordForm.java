package net.ssmc.model.form;

public class UserChangePasswordForm {
	
	private int userId;
	private String currenctPassword;
	private String newPassword1;
	private String newPassword2;
	
	public String getCurrenctPassword() {
		return currenctPassword;
	}
	public void setCurrenctPassword(String currenctPassword) {
		this.currenctPassword = currenctPassword;
	}
	public String getNewPassword1() {
		return newPassword1;
	}
	public void setNewPassword1(String newPassword1) {
		this.newPassword1 = newPassword1;
	}
	public String getNewPassword2() {
		return newPassword2;
	}
	public void setNewPassword2(String newPassword2) {
		this.newPassword2 = newPassword2;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	@Override
	public String toString() {
		return "UserChangePasswordForm [userId=" + userId + ", currenctPassword=" + currenctPassword + ", newPassword1="
				+ newPassword1 + ", newPassword2=" + newPassword2 + "]";
	}
	
}
