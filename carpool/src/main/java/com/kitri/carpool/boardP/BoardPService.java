package com.kitri.carpool.boardP;

import java.util.ArrayList;

public interface BoardPService {
	
	public void add(BoardP b);

	public void edit(BoardP b);

	public BoardP getByNum(int num);

	public ArrayList<BoardP> getByCate(String cate);

	public ArrayList<BoardP> getByTime(String startTime);

	public ArrayList<BoardP> getByStartPosi(String startPosi);

	public ArrayList<BoardP> getByEndPosi(String endPosi);


	public ArrayList<BoardP> getByPrice(int price);

	public ArrayList<BoardP> getByWriter(String writer);

	public ArrayList<BoardP> getAll();
	
	public void remove(int num);
	
	public void editPassenger(BoardP b);
	
	public void editDriver(BoardP b);

	public ArrayList<BoardP> getByStartEnd(String start_posi, String end_posi);

	public ArrayList<BoardP> getByDriver(String driver);

	public ArrayList<BoardP> getByPassenger(String passenger);
}
