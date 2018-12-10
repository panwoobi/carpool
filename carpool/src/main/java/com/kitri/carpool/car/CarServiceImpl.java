package com.kitri.carpool.car;

import java.util.ArrayList;

public class CarServiceImpl implements CarService {
	private CarDao dao;

	public CarServiceImpl(CarDao dao) {
		this.dao = dao;
	}

	@Override
	public void insertCar(Car c) {
		// TODO Auto-generated method stub
		dao.insert(c);
	}

	@Override
	public void delCar(String owner) {
		// TODO Auto-generated method stub
		dao.delete(owner);
	}

	@Override
	public void updateCar(Car c) {
		// TODO Auto-generated method stub
		dao.update(c);
	}

	@Override
	public Car getCar(String owner) {
		// TODO Auto-generated method stub
		return dao.select(owner);
	}

	@Override
	public ArrayList<Car> getAll() {
		// TODO Auto-generated method stub
		return dao.selectAll();
	}
}