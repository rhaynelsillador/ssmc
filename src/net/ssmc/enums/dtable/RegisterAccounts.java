package net.ssmc.enums.dtable;

public enum RegisterAccounts {

	ID("ID"),
	EMAIL("Email"),
	FIRSTNAME("First Name"),
	LASTNAME("Last Name"),
	STATUS("Status"),
	DATECREATED("Date Added"),
	DATELASTLOGIN("Date Last Login");
	
	private String display;
	
	private RegisterAccounts(String display) {
		this.display=display;
	}

	public String getDisplay() {
		return display;
	}

	public void setDisplay(String display) {
		this.display = display;
	}
}
