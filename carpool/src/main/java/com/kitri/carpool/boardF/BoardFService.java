package com.kitri.carpool.boardF;

import java.util.ArrayList;

public interface BoardFService {
	
	public void add(BoardF b);

	public void edit(BoardF b);

	public BoardF gettByNum(int num);
	
	public ArrayList<BoardF> getByWriter(String writer);

	public ArrayList<BoardF> getAll();
	
	public void remove(int num);
}
