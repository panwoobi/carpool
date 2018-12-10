package com.kitri.carpool.boardN;

import java.util.ArrayList;

public class BoardNServiceImpl implements BoardNService {

	private BoardNDao dao;

	public BoardNServiceImpl(BoardNDao dao) {
		this.dao = dao;
	}
	
	@Override
	public boolean add(BoardN b) {
		// TODO Auto-generated method stub
		return dao.insert(b);
	}

	@Override
	public boolean edit(BoardN b) {
		// TODO Auto-generated method stub
		return dao.update(b);
	}

	@Override
	public BoardN gettByNum(int num) {
		// TODO Auto-generated method stub
		return dao.selectByNum(num);
	}

	@Override
	public ArrayList<BoardN> getByWriter(String writer) {
		// TODO Auto-generated method stub
		return dao.selectByWriter(writer);
	}

	@Override
	public ArrayList<BoardN> getAll() {
		// TODO Auto-generated method stub
		return dao.selectAll();
	}

	@Override
	public boolean remove(int num) {
		// TODO Auto-generated method stub
		return dao.delete(num);
	}

}
