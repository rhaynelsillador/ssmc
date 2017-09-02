package net.cms.ssmc.model;

import java.io.Serializable;
import java.sql.Timestamp;

import net.ssmc.enums.App;
import net.ssmc.enums.Page;

public class Header implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private String name;
	private String title;
	private String content;
	private boolean status;
	private App type;
	private Page page;
	private Timestamp dateAdded;
	private Timestamp dateUpdated;
	
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public App getType() {
		return type;
	}
	public void setType(App type) {
		this.type = type;
	}
	public Timestamp getDateAdded() {
		return dateAdded;
	}
	public void setDateAdded(Timestamp dateAdded) {
		this.dateAdded = dateAdded;
	}
	public Timestamp getDateUpdated() {
		return dateUpdated;
	}
	public void setDateUpdated(Timestamp dateUpdated) {
		this.dateUpdated = dateUpdated;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Page getPage() {
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}	
	
}
