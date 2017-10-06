package net.ssmc.model;

import java.sql.Timestamp;

public class RegisteredAccount {

	private long id;
	private String email;
	private String password;
	private String firstName;
	private String lastName;
	private String middleName;
	private boolean status;
	private Timestamp dateAdded;
	private Timestamp dateLastLogin;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getMiddleName() {
		return middleName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public Timestamp getDateAdded() {
		return dateAdded;
	}
	public void setDateAdded(Timestamp dateAdded) {
		this.dateAdded = dateAdded;
	}
	public Timestamp getDateLastLogin() {
		return dateLastLogin;
	}
	public void setDateLastLogin(Timestamp dateLastLogin) {
		this.dateLastLogin = dateLastLogin;
	}
	@Override
	public String toString() {
		return "RegisteredAccount [id=" + id + ", email=" + email + ", password=" + password + ", firstName="
				+ firstName + ", lastName=" + lastName + ", middleName=" + middleName + ", dateAdded=" + dateAdded
				+ ", dateLastLogin=" + dateLastLogin + "]";
	}
	
	
}
