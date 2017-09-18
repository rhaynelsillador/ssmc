package net.ssmc.model;

import java.sql.Timestamp;

import net.ssmc.enums.InquiryStatus;

public class ContactUs {

	private long id;
	private String email;
	private String message;
	private Timestamp dateAdded;
	private String subject;
	private InquiryStatus status;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Timestamp getDateAdded() {
		return dateAdded;
	}
	public void setDateAdded(Timestamp dateAdded) {
		this.dateAdded = dateAdded;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public InquiryStatus getStatus() {
		return status;
	}
	public void setStatus(InquiryStatus status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "ContactUs [id=" + id + ", email=" + email + ", message=" + message + ", dateAdded=" + dateAdded
				+ ", subject=" + subject + ", status=" + status + "]";
	}
}
