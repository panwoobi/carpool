package com.kitri.carpool.boardD;

import java.sql.Date;

public class BoardD {

	private int num;
	private String cate;
	private Date w_date;
	private String startTime;
	private String startPosi;
	private String endPosi;
	private double startX;
	private double startY;
	private double endX;
	private double endY;
	private int price;
	private String content;
	private String title;
	private int seat;
	private int maxSeat;
	private String writer;
	private String driver;
	private String passenger1;
	private String passenger2;
	private String passenger3;
	private String profile;
	
	public BoardD() {
		
	}
	
	public BoardD(int num, String cate, Date w_date, String startTime, String startPosi, String endPosi, double startX,
			double startY, double endX, double endY, int price, String content, String title, int seat, int maxSeat,
			String writer, String driver, String passenger1, String passenger2, String passenger3, String profile) {
		this.num = num;
		this.cate = cate;
		this.w_date = w_date;
		this.startTime = startTime;
		this.startPosi = startPosi;
		this.endPosi = endPosi;
		this.startX = startX;
		this.startY = startY;
		this.endX = endX;
		this.endY = endY;
		this.price = price;
		this.content = content;
		this.title = title;
		this.seat = seat;
		this.maxSeat = maxSeat;
		this.writer = writer;
		this.driver = driver;
		this.passenger1 = passenger1;
		this.passenger2 = passenger2;
		this.passenger3 = passenger3;
		this.profile = profile;
	}




	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getCate() {
		return cate;
	}

	public void setCate(String cate) {
		this.cate = cate;
	}

	public Date getW_date() {
		return w_date;
	}

	public void setW_date(Date w_date) {
		this.w_date = w_date;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getStartPosi() {
		return startPosi;
	}

	public void setStartPosi(String startPosi) {
		this.startPosi = startPosi;
	}

	public String getEndPosi() {
		return endPosi;
	}

	public void setEndPosi(String endPosi) {
		this.endPosi = endPosi;
	}

	public double getStartX() {
		return startX;
	}

	public void setStartX(double startX) {
		this.startX = startX;
	}

	public double getStartY() {
		return startY;
	}

	public void setStartY(double startY) {
		this.startY = startY;
	}

	public double getEndX() {
		return endX;
	}

	public void setEndX(double endX) {
		this.endX = endX;
	}

	public double getEndY() {
		return endY;
	}

	public void setEndY(double endY) {
		this.endY = endY;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getSeat() {
		return seat;
	}

	public void setSeat(int seat) {
		this.seat = seat;
	}

	public int getMaxSeat() {
		return maxSeat;
	}

	public void setMaxSeat(int maxSeat) {
		this.maxSeat = maxSeat;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getDriver() {
		return driver;
	}

	public void setDriver(String driver) {
		this.driver = driver;
	}

	public String getPassenger1() {
		return passenger1;
	}

	public void setPassenger1(String passenger1) {
		this.passenger1 = passenger1;
	}

	public String getPassenger2() {
		return passenger2;
	}

	public void setPassenger2(String passenger2) {
		this.passenger2 = passenger2;
	}

	public String getPassenger3() {
		return passenger3;
	}

	public void setPassenger3(String passenger3) {
		this.passenger3 = passenger3;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	@Override
	public String toString() {
		return "BoardD [num=" + num + ", cate=" + cate + ", w_date=" + w_date + ", startTime=" + startTime
				+ ", startPosi=" + startPosi + ", endPosi=" + endPosi + ", startX=" + startX + ", startY=" + startY
				+ ", endX=" + endX + ", endY=" + endY + ", price=" + price + ", content=" + content + ", title=" + title
				+ ", seat=" + seat + ", maxSeat=" + maxSeat + ", writer=" + writer + ", driver=" + driver
				+ ", passenger1=" + passenger1 + ", passenger2=" + passenger2 + ", passenger3=" + passenger3
				+ ", profile=" + profile + "]";
	}

}