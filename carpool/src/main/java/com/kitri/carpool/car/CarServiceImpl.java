package com.kitri.carpool.car;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;


@Component("carService")
public class CarServiceImpl implements CarService {
	
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private CarDao dao;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public void insertCar(Car c) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(CarDao.class);
		dao.insert(c);
	}

	@Override
	public void delCar(String owner) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(CarDao.class);
		dao.delete(owner);
	}

	@Override
	public void updateCar(Car c) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(CarDao.class);
		dao.update(c);
	}

	@Override
	public Car getCar(String owner) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(CarDao.class);
		return dao.select(owner);
	}

	@Override
	public ArrayList<Car> getAll() {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(CarDao.class);
		return dao.selectAll();
	}
}