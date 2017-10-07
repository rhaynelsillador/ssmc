package net.ssmc.enums.dtable;

public enum DTableParam {
	
	START("start"),
	LENGTH("length"), 
	DRAW("draw"),
	SORTKEY("order[0][column]"),
	SORTVAL("order[0][dir]");
	
	private String name;
	
	private DTableParam(String name) {
		this.name=name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
}
