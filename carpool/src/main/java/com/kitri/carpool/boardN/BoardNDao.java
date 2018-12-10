package com.kitri.carpool.boardN;

import java.util.ArrayList;

public interface BoardNDao {

	public void insert(BoardN b);

	public void update(BoardN b);

	public BoardN selectByNum(int num);

	public ArrayList<BoardN> selectByWriter(String writer);

	public ArrayList<BoardN> selectAll();
	
	public void delete(int num);

}
