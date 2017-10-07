package net.ssmc.enums.dtable;

public enum DTableResponse {
	
	DATA("data"),
	DRAW("draw"),
	RECORDFILTERED("recordsFiltered"),
	RECORDSTOTAL("recordsTotal");
	
	private String name;
	
	private DTableResponse(String name) {
		this.name=name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	
}
