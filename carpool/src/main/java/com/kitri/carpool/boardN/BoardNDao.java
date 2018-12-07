package com.kitri.carpool.boardN;

import java.util.ArrayList;

public interface BoardNDao {

	public boolean insert(BoardN b);

	public boolean update(BoardN b);

	public BoardN selectByNum(int num);
	
	public ArrayList<BoardN> selectByType(int type);

	public ArrayList<BoardN> selectByWriter(String writer);

	public ArrayList<BoardN> selectAll();
	
	public boolean delete(int num);

}
