package com.kitri.carpool.boardD;

import java.util.ArrayList;
import java.util.Map;

public interface BoardDService {
	
	public void add(BoardD b);

	public void edit(BoardD b);

	public BoardD getByNum(int num);

	public ArrayList<BoardD> getByCate(String cate);

	public ArrayList<BoardD> getByTime(String start_time);

	public ArrayList<BoardD> getByStartPosi(String start_posi);

	public ArrayList<BoardD> getByEndPosi(String end_posi);

	public ArrayList<BoardD> getByPrice(int price);

	public ArrayList<BoardD> getByWriter(String writer);

	public ArrayList<BoardD> getAll();
	
	public void remove(int num);
	
	public void editPassenger(BoardD b);
	
	public void editDriver(BoardD b);

	public ArrayList<BoardD> getByStartEnd(Map<String, String> map);

	public ArrayList<BoardD> getByDriver(String driver);

	public ArrayList<BoardD> getByPassenger(String passenger);
}
