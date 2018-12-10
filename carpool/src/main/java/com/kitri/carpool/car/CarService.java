package com.kitri.carpool.car;

import java.util.ArrayList;

public interface CarService {
	public void insertCar(Car c);

	public void delCar(String owner);

	public void updateCar(Car c);

	public Car getCar(String owner);

	public ArrayList<Car> getAll();
}
