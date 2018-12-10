package com.kitri.carpool.car;

import java.util.ArrayList;

public interface CarDao {
	public void insert(Car c);

	public void delete(String owner);

	public void update(Car c);

	public Car select(String owner);

	public ArrayList<Car> selectAll();
}