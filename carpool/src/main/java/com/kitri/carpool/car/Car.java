package com.kitri.carpool.car;

public class Car {
	private String owner;
	private String license;
	private String number_plate;
	private int mileage;
	private String age;
	private String car_name;
	private int car_size;
	
	public Car() {
		
	}
	
	public Car(String owner, String license, String number_plate, int mileage, String age, String car_name,
			int car_size) {
		this.owner = owner;
		this.license = license;
		this.number_plate = number_plate;
		this.mileage = mileage;
		this.age = age;
		this.car_name = car_name;
		this.car_size = car_size;
	}


	public String getOwner() {
		return owner;
	}

	public void setOwner(String owner) {
		this.owner = owner;
	}

	public String getLicense() {
		return license;
	}

	public void setLicense(String license) {
		this.license = license;
	}

	public String getNumber_plate() {
		return number_plate;
	}

	public void setNumber_plate(String number_plate) {
		this.number_plate = number_plate;
	}

	public int getMileage() {
		return mileage;
	}

	public void setMileage(int mileage) {
		this.mileage = mileage;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getCar_name() {
		return car_name;
	}

	public void setCar_name(String car_name) {
		this.car_name = car_name;
	}

	public int getCar_size() {
		return car_size;
	}

	public void setCar_size(int car_size) {
		this.car_size = car_size;
	}

	@Override
	public String toString() {
		return "Car [owner=" + owner + ", license=" + license + ", number_plate=" + number_plate + ", mileage="
				+ mileage + ", age=" + age + ", car_name=" + car_name + ", car_size=" + car_size + "]";
	}

}
