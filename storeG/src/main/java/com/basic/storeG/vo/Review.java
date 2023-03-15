package com.basic.storeG.vo;

import java.security.Timestamp;

public class Review {
	private int reviewNo;
    private String writer;
    private String content;
    private Timestamp writeDate;
    private int rating;
    
    public Review() {}
    
	public Review(int reviewNo, String writer, String content, Timestamp writeDate, int rating) {
		super();
		this.reviewNo = reviewNo;
		this.writer = writer;
		this.content = content;
		this.writeDate = writeDate;
		this.rating = rating;
	}
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(Timestamp writeDate) {
		this.writeDate = writeDate;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
    
    
	
}
