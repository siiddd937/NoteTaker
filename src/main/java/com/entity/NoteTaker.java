package com.entity;

import java.util.Date;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class NoteTaker {

//We can use here GeneratedValue, but we are using Random class here
@Id	
private int note_id;

private String title;

@Column(length = 2000)
private String content;

private Date addedDate;

public int getNote_id() {
	return note_id;
}

public void setNote_id(int note_id) {
	this.note_id = note_id;
}

public String getTitle() {
	return title;
}

public void setTitle(String title) {
	this.title = title;
}

public String getContent() {
	return content;
}

public void setContent(String content) {
	this.content = content;
}

public Date getAddedDate() {
	return addedDate;
}

public void setAddedDate(Date addedDate) {
	this.addedDate = addedDate;
}

public NoteTaker() {
	super();
	// TODO Auto-generated constructor stub
}

public NoteTaker(String title, String content, Date addedDate) {
	super();
	this.note_id = new Random().nextInt(10000); // It will create id's randomly from 0 to 10000
	this.title = title;
	this.content = content;
	this.addedDate = addedDate;
}









	

}
