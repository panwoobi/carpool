package com.kitri.carpool.boardF;

import java.util.ArrayList;

public interface BoardFDao {

	public void insert(BoardF b);

	public void update(BoardF b);

	public BoardF selectByNum(int num);
	
	public ArrayList<BoardF> selectByWriter(String writer);

	public ArrayList<BoardF> selectAll();
	
	public void delete(int num);

}
