package com.sccc;

public class MessageBean {
    private String author;
    private String title;
    private String content;
    private String time;
    
    public MessageBean() {
    	
    }
    
    public void setAuthor(String author) {
    	this.author = author;
    }
    
    public String getAuthor() {
    	return author;
    }
    
    public void setTitle(String title) {
    	this.title = title;
    }
    
    public String getTitle() {
    	return title;
    }
    
    public void setContent(String content) {
    	this.content = content;
    }
    
    public String getContent() {
    	return content;
    }
    
    public void setTime(String time) {
    	this.time = time;
    }
    
    public String getTime() {
    	return time;
    }
}
