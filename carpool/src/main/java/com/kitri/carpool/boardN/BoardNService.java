package com.kitri.carpool.boardN;

import java.util.ArrayList;

public interface BoardNService {
	
	public void add(BoardN b);

	public void edit(BoardN b);

	public BoardN gettByNum(int num);
	
	public ArrayList<BoardN> getByWriter(String writer);

	public ArrayList<BoardN> getAll();
	
	public void remove(int num);
}
