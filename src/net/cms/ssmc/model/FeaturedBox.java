package net.cms.ssmc.model;

import java.sql.Timestamp;

public class FeaturedBox {
	
	private long id;
	private String name;
	private String description;
	private int box;
	private Timestamp timestamp;
	public long getId() {
		return id;
	}
	public void setId(long id) {
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
	public int getBox() {
		return box;
	}
	public void setBox(int box) {
		this.box = box;
	}
	public Timestamp getTimestamp() {
		return timestamp;
	}
	public void setTimestamp(Timestamp timestamp) {
		this.timestamp = timestamp;
	}
	@Override
	public String toString() {
		return "FeatureBox [id=" + id + ", name=" + name + ", description=" + description + ", box=" + box
				+ ", timestamp=" + timestamp + "]";
	}
	
}
