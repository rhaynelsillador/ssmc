package net.ssmc.model;

public class Result {

	private long id;
	private long examResultId;
	private String result;
	private long uploadBy;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	
	public long getExamResultId() {
		return examResultId;
	}
	public void setExamResultId(long examResultId) {
		this.examResultId = examResultId;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public long getUploadBy() {
		return uploadBy;
	}
	public void setUploadBy(long uploadBy) {
		this.uploadBy = uploadBy;
	}
	@Override
	public String toString() {
		return "Result [id=" + id + ", examResultId=" + examResultId + ", result=" + result + ", uploadBy=" + uploadBy + "]";
	}
}
