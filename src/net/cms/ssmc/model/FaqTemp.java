package net.cms.ssmc.model;

import java.sql.Timestamp;

import net.ssmc.enums.App;

public class FaqTemp{

	private int mainid;
	private int id;
	private String title;
	private String question;
	private String answer;
	private Timestamp dateAdded;
	private Timestamp dateUpdated;
	private App type;
	private long author;

	public int getMainid() {
		return mainid;
	}

	public void setMainid(int mainid) {
		this.mainid = mainid;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
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

	public App getType() {
		return type;
	}

	public void setType(App type) {
		this.type = type;
	}

	public long getAuthor() {
		return author;
	}

	public void setAuthor(long author) {
		this.author = author;
	}

	@Override
	public String toString() {
		return "FaqTemp [mainid=" + mainid + ", id=" + id + ", title=" + title + ", question=" + question + ", answer="
				+ answer + ", dateAdded=" + dateAdded + ", dateUpdated=" + dateUpdated + ", type=" + type + ", author="
				+ author + "]";
	}

}
