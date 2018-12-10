package com.kitri.carpool.boardD;

import java.util.ArrayList;

public class BoardDServiceImpl implements BoardDService {

	private BoardDDao dao;

	public BoardDServiceImpl(BoardDDao dao) {
		this.dao = dao;
	}
	
	@Override
	public boolean add(BoardD b) {
		// TODO Auto-generated method stub
		return dao.insert(b);
	}

	@Override
	public boolean edit(BoardD b) {
		// TODO Auto-generated method stub
		return dao.update(b);
	}

	@Override
	public BoardD getByNum(int num) {
		// TODO Auto-generated method stub
		return dao.selectByNum(num);
	}

	@Override
	public ArrayList<BoardD> getByCate(String cate) {
		// TODO Auto-generated method stub
		return dao.selectByCate(cate);
	}

	@Override
	public ArrayList<BoardD> getByTime(String startTime) {
		// TODO Auto-generated method stub
		return dao.selectByTime(startTime);
	}

	@Override
	public ArrayList<BoardD> getByStartPosi(String startPosi) {
		// TODO Auto-generated method stub
		return dao.selectByStartPosi(startPosi);
	}

	@Override
	public ArrayList<BoardD> getByEndPosi(String endPosi) {
		// TODO Auto-generated method stub
		return dao.selectByEndPosi(endPosi);
	}

	@Override
	public ArrayList<BoardD> getByPrice(int price) {
		// TODO Auto-generated method stub
		return dao.selectByPrice(price);
	}

	@Override
	public ArrayList<BoardD> getByWriter(String writer) {
		// TODO Auto-generated method stub
		return dao.selectByWriter(writer);
	}

	@Override
	public ArrayList<BoardD> getAll() {
		// TODO Auto-generated method stub
		return dao.selectAll();
	}

	@Override
	public boolean remove(int num) {
		// TODO Auto-generated method stub
		return dao.delete(num);
	}
	
	@Override
	public ArrayList<BoardD> getByStartEnd(String start_posi, String end_posi) {
		return dao.selectByStartEnd(start_posi, end_posi);
	}

	@Override
	public boolean editPassenger(BoardD b) {
		// TODO Auto-generated method stub
		return dao.updatePassenger(b);
	}

	@Override
	public ArrayList<BoardD> getByDriver(String driver) {
		// TODO Auto-generated method stub
		return dao.selectByDriver(driver);
	}

	@Override
	public ArrayList<BoardD> getByPassenger(String passenger) {
		// TODO Auto-generated method stub
		return dao.selectByPassenger(passenger);
	}

	@Override
	public boolean editDriver(BoardD b) {
		// TODO Auto-generated method stub
		return dao.updateDriver(b);
	}
}