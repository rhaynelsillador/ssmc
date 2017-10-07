package net.ssmc.enums.dtable;

public enum RegisterAccounts {

	ID("ID"),
	EMAIL("Email"),
	FIRSTNAME("First Name"),
	LASTNAME("Last Name"),
	STATUS("Status"),
	DATECREATEDFROM("Date Added From"),
	DATECREATEDTO("Date Added To"),
	DATELASTLOGINFROM("Date Last Login From"),
	DATELASTLOGINTO("Date Last Login To");
	
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
