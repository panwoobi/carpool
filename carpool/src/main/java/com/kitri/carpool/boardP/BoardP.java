package com.kitri.carpool.boardP;

import java.sql.Date;


import lombok.Data;

@Data
public class BoardP {

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
}