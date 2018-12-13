package com.kitri.carpool.boardD;

import java.sql.Date;

public class BoardD {

	private int num;
	private String cate;
	private Date w_date;
	private String start_time;
	private String start_posi;
	private String end_posi;
	private double start_x;
	private double start_y;
	private double end_x;
	private double end_y;
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
	public BoardD(int num, String cate, Date w_date, String start_time, String start_posi, String end_posi,
			double start_x, double start_y, double end_x, double end_y, int price, String content, String title,
			int seat, int maxSeat, String writer, String driver, String passenger1, String passenger2,
			String passenger3, String profile) {
		super();
		this.num = num;
		this.cate = cate;
		this.w_date = w_date;
		this.start_time = start_time;
		this.start_posi = start_posi;
		this.end_posi = end_posi;
		this.start_x = start_x;
		this.start_y = start_y;
		this.end_x = end_x;
		this.end_y = end_y;
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
	public String getCate() {
		return cate;
	}
	public Date getW_date() {
		return w_date;
	}
	public String getStart_time() {
		return start_time;
	}
	public String getStart_posi() {
		return start_posi;
	}
	public String getEnd_posi() {
		return end_posi;
	}
	public double getStart_x() {
		return start_x;
	}
	public double getStart_y() {
		return start_y;
	}
	public double getEnd_x() {
		return end_x;
	}
	public double getEnd_y() {
		return end_y;
	}
	public int getPrice() {
		return price;
	}
	public String getContent() {
		return content;
	}
	public String getTitle() {
		return title;
	}
	public int getSeat() {
		return seat;
	}
	public int getMaxSeat() {
		return maxSeat;
	}
	public String getWriter() {
		return writer;
	}
	public String getDriver() {
		return driver;
	}
	public String getPassenger1() {
		return passenger1;
	}
	public String getPassenger2() {
		return passenger2;
	}
	public String getPassenger3() {
		return passenger3;
	}
	public String getProfile() {
		return profile;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public void setCate(String cate) {
		this.cate = cate;
	}
	public void setW_date(Date w_date) {
		this.w_date = w_date;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public void setStart_posi(String start_posi) {
		this.start_posi = start_posi;
	}
	public void setEnd_posi(String end_posi) {
		this.end_posi = end_posi;
	}
	public void setStart_x(double start_x) {
		this.start_x = start_x;
	}
	public void setStart_y(double start_y) {
		this.start_y = start_y;
	}
	public void setEnd_x(double end_x) {
		this.end_x = end_x;
	}
	public void setEnd_y(double end_y) {
		this.end_y = end_y;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public void setSeat(int seat) {
		this.seat = seat;
	}
	public void setMaxSeat(int maxSeat) {
		this.maxSeat = maxSeat;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public void setDriver(String driver) {
		this.driver = driver;
	}
	public void setPassenger1(String passenger1) {
		this.passenger1 = passenger1;
	}
	public void setPassenger2(String passenger2) {
		this.passenger2 = passenger2;
	}
	public void setPassenger3(String passenger3) {
		this.passenger3 = passenger3;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	@Override
	public String toString() {
		return "BoardD [num=" + num + ", cate=" + cate + ", w_date=" + w_date + ", start_time=" + start_time
				+ ", start_posi=" + start_posi + ", end_posi=" + end_posi + ", start_x=" + start_x + ", start_y="
				+ start_y + ", end_x=" + end_x + ", end_y=" + end_y + ", price=" + price + ", content=" + content
				+ ", title=" + title + ", seat=" + seat + ", maxSeat=" + maxSeat + ", writer=" + writer + ", driver="
				+ driver + ", passenger1=" + passenger1 + ", passenger2=" + passenger2 + ", passenger3=" + passenger3
				+ ", profile=" + profile + "]";
	}
}