package com.kitri.carpool.boardF;

import java.sql.Date;

import lombok.Data;

@Data
public class BoardF {

	private int num;
	private Date w_date;
	private String title;
	private String content;
	private String writer;
}