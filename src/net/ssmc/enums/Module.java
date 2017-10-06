package net.ssmc.enums;

public enum Module {

	ALL(""),
	USER(""),
	CLINIC(""),
	FAQ(""),
	CONTACTUS(""),
	ROLE(""),
	DASHBOARD(""),
	ABOUTUS("AboutUsUpdate"),
	HEADER("HeaderUpdate"), 
	SERVICE("ServicesUpdate"),
	CITY(""),
	REGISTEREDACCOUNTS("");
	
	private String updateUrl;
	
	Module(String updateUrl){
		this.updateUrl = updateUrl;
	}

	public String getUpdateUrl() {
		return updateUrl;
	}

	public void setUpdateUrl(String updateUrl) {
		this.updateUrl = updateUrl;
	}
}
