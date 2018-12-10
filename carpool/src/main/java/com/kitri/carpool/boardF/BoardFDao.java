package com.kitri.carpool.boardF;

import java.util.ArrayList;

public interface BoardFDao {

	public boolean insert(BoardF b);

	public boolean update(BoardF b);

	public BoardF selectByNum(int num);
	
	public ArrayList<BoardF> selectByWriter(String writer);

	public ArrayList<BoardF> selectAll();
	
	public boolean delete(int num);

}
