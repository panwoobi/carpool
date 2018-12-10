package com.kitri.carpool.boardN;

import java.util.ArrayList;

public interface BoardNService {
	
	public boolean add(BoardN b);

	public boolean edit(BoardN b);

	public BoardN gettByNum(int num);
	
	public ArrayList<BoardN> getByWriter(String writer);

	public ArrayList<BoardN> getAll();
	
	public boolean remove(int num);
}
