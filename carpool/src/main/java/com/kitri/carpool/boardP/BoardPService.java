package com.kitri.carpool.boardP;

import java.util.ArrayList;
import java.util.Map;

public interface BoardPService {
	
	public void add(BoardP b);

	public void edit(BoardP b);

	public BoardP getByNum(int num);

	public ArrayList<BoardP> getByCate(String cate);

	public ArrayList<BoardP> getByTime(String start_time);

	public ArrayList<BoardP> getByStartPosi(String start_posi);

	public ArrayList<BoardP> getByEndPosi(String end_posi);

	public ArrayList<BoardP> getByPrice(int price);

	public ArrayList<BoardP> getByWriter(String writer);

	public ArrayList<BoardP> getAll();
	
	public void remove(int num);
	
	public void editPassenger(BoardP b);
	
	public void editDriver(BoardP b);

	public ArrayList<BoardP> getByStartEnd(Map<String, String> map);

	public ArrayList<BoardP> getByDriver(String driver);

	public ArrayList<BoardP> getByPassenger(String passenger);
}
