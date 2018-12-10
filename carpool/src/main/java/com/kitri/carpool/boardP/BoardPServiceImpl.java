package com.kitri.carpool.boardP;

import java.util.ArrayList;

public class BoardPServiceImpl implements BoardPService {

	private BoardPDao dao;

	public BoardPServiceImpl(BoardPDao dao) {
		this.dao = dao;
	}
	
	@Override
	public void add(BoardP b) {
		// TODO Auto-generated method stub
		dao.insert(b);
	}

	@Override
	public void edit(BoardP b) {
		// TODO Auto-generated method stub
		dao.update(b);
	}

	@Override
	public BoardP getByNum(int num) {
		// TODO Auto-generated method stub
		return dao.selectByNum(num);
	}

	@Override
	public ArrayList<BoardP> getByCate(String cate) {
		// TODO Auto-generated method stub
		return dao.selectByCate(cate);
	}

	@Override
	public ArrayList<BoardP> getByTime(String startTime) {
		// TODO Auto-generated method stub
		return dao.selectByTime(startTime);
	}

	@Override
	public ArrayList<BoardP> getByStartPosi(String startPosi) {
		// TODO Auto-generated method stub
		return dao.selectByStartPosi(startPosi);
	}

	@Override
	public ArrayList<BoardP> getByEndPosi(String endPosi) {
		// TODO Auto-generated method stub
		return dao.selectByEndPosi(endPosi);
	}

	@Override
	public ArrayList<BoardP> getByPrice(int price) {
		// TODO Auto-generated method stub
		return dao.selectByPrice(price);
	}

	@Override
	public ArrayList<BoardP> getByWriter(String writer) {
		// TODO Auto-generated method stub
		return dao.selectByWriter(writer);
	}

	@Override
	public ArrayList<BoardP> getAll() {
		// TODO Auto-generated method stub
		return dao.selectAll();
	}

	@Override
	public void remove(int num) {
		// TODO Auto-generated method stub
		dao.delete(num);
	}
	@Override
	public ArrayList<BoardP> getByStartEnd(String start_posi, String end_posi) {
		return dao.selectByStartEnd(start_posi, end_posi);
	}

	@Override
	public void editPassenger(BoardP b) {
		// TODO Auto-generated method stub
		dao.updatePassenger(b);
	}

	@Override
	public ArrayList<BoardP> getByDriver(String driver) {
		// TODO Auto-generated method stub
		return dao.selectByDriver(driver);
	}

	@Override
	public ArrayList<BoardP> getByPassenger(String passenger) {
		// TODO Auto-generated method stub
		return dao.selectByPassenger(passenger);
	}

	@Override
	public void editDriver(BoardP b) {
		// TODO Auto-generated method stub
		dao.updateDriver(b);
	}
}