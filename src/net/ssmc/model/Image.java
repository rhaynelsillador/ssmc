package net.ssmc.model;

import net.ssmc.enums.Module;

public class Image {

	private int id;
	private String image;
	private boolean status;
	private Module module;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public Module getModule() {
		return module;
	}
	public void setModule(Module module) {
		this.module = module;
	}
	@Override
	public String toString() {
		return "Image [id=" + id + ", image=" + image + ", status=" + status + ", module=" + module + "]";
	}
	
}
