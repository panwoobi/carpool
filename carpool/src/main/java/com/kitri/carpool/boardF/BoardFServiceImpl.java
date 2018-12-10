package com.kitri.carpool.boardF;

import java.util.ArrayList;

public class BoardFServiceImpl implements BoardFService {

	private BoardFDao dao;

	public BoardFServiceImpl(BoardFDao dao) {
		this.dao = dao;
	}
	
	@Override
	public void add(BoardF b) {
		// TODO Auto-generated method stub
		dao.insert(b);
	}

	@Override
	public void edit(BoardF b) {
		// TODO Auto-generated method stub
		dao.update(b);
	}

	@Override
	public BoardF gettByNum(int num) {
		// TODO Auto-generated method stub
		return dao.selectByNum(num);
	}

	@Override
	public ArrayList<BoardF> getByWriter(String writer) {
		// TODO Auto-generated method stub
		return dao.selectByWriter(writer);
	}

	@Override
	public ArrayList<BoardF> getAll() {
		// TODO Auto-generated method stub
		return dao.selectAll();
	}

	@Override
	public void remove(int num) {
		// TODO Auto-generated method stub
		dao.delete(num);
	}

}
