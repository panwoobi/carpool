package com.kitri.carpool.boardFRep;

import java.util.ArrayList;

public interface BoardFRepService {
	
	public void add(BoardFRep br);
	
	public void edit(BoardFRep br);
	
	ArrayList<BoardFRep> getByBoardNum(int board_num);
	
	public void remove(int num);
	

}
