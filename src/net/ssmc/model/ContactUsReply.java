package net.ssmc.model;

import java.sql.Timestamp;

import net.ssmc.enums.ContactUsType;

public class ContactUsReply {

	private long id;
	private String message;
	private Timestamp dateReplied;
	private String repliedBy;
	private ContactUsType type;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Timestamp getDateReplied() {
		return dateReplied;
	}
	public void setDateReplied(Timestamp dateReplied) {
		this.dateReplied = dateReplied;
	}
	public String getRepliedBy() {
		return repliedBy;
	}
	public void setRepliedBy(String repliedBy) {
		this.repliedBy = repliedBy;
	}
	public ContactUsType getType() {
		return type;
	}
	public void setType(ContactUsType type) {
		this.type = type;
	}
	@Override
	public String toString() {
		return "ContactUsReply [id=" + id + ", message=" + message + ", dateReplied=" + dateReplied + ", repliedBy="
				+ repliedBy + ", type=" + type + "]";
	}
	
}
