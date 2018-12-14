package com.kitri.carpool.car;


import lombok.Data;

@Data
public class Car {
	private String owner;
	private String license;
	private String number_plate;
	private int mileage;
	private String age;
	private String car_name;
	private int car_size;
}