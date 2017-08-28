package net.ssmc.model;

public class Image {

	private int id;
	private String image;
	private boolean status;
	
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
	@Override
	public String toString() {
		return "Image [id=" + id + ", image=" + image + ", status=" + status + "]";
	}
	
	
	
}
