package com.kitri.carpool.boardN;

import java.sql.Date;


import lombok.Data;

@Data
public class BoardN {

	private int num;
	private Date w_date;
	private String title;
	private String content;
	private String writer;
}