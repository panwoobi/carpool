package com.kitri.carpool.boardF;

import java.util.ArrayList;

public interface BoardFService {
	
	public boolean add(BoardF b);

	public boolean edit(BoardF b);

	public BoardF gettByNum(int num);
	
	public ArrayList<BoardF> getByWriter(String writer);

	public ArrayList<BoardF> getAll();
	
	public boolean remove(int num);
}
