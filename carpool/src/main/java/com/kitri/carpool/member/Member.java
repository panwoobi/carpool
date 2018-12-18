package com.kitri.carpool.member;


import java.sql.Date;

import lombok.Data;

@Data
public class Member {
	private String id;
	private String pw;
	private String name;
	private String email;
	private String tel;
	private String profile;
	private int type;
	private int sex;
	private int isSmoke;
	private String tmpkey;
	private int isValidate;
	private Date jdate;
}