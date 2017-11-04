package net.cms.ssmc.model;

import java.io.Serializable;

public class Partner implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -6194750255718999816L;
	private long id;
	private String name;
	private String url;
	private String logo;
	private int status;
	
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
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getLogo() {
		return logo;
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Partners [id=" + id + ", name=" + name + ", url=" + url + ", logo=" + logo + "]";
	}
	
}
