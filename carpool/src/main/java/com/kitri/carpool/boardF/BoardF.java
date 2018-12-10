package com.kitri.carpool.boardF;

import java.sql.Date;

public class BoardF {

	private int num;
	private Date w_date;
	private String title;
	private String content;
	private String writer;
	
	public BoardF() {
		
	}

	public BoardF(int num, Date w_date, String title, String content, String writer) {
		super();
		this.num = num;
		this.w_date = w_date;
		this.title = title;
		this.content = content;
		this.writer = writer;
	}

	public int getNum() {
		return num;
	}


	public Date getW_date() {
		return w_date;
	}

	public String getTitle() {
		return title;
	}

	public String getContent() {
		return content;
	}

	public String getWriter() {
		return writer;
	}

	public void setNum(int num) {
		this.num = num;
	}
	public void setW_date(Date w_date) {
		this.w_date = w_date;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	@Override
	public String toString() {
		return "Board2 [num=" + num + ", w_date=" + w_date + ", title=" + title + ", content="
				+ content + ", writer=" + writer + "]";
	}
}