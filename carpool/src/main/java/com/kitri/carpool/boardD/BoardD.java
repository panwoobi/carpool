package com.kitri.carpool.boardD;

import java.sql.Date;

import lombok.Data;

@Data
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
}