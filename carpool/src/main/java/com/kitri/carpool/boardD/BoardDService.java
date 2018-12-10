package com.kitri.carpool.boardD;

import java.util.ArrayList;

public interface BoardDService {
	
	public void add(BoardD b);

	public void edit(BoardD b);

	public BoardD getByNum(int num);

	public ArrayList<BoardD> getByCate(String cate);

	public ArrayList<BoardD> getByTime(String startTime);

	public ArrayList<BoardD> getByStartPosi(String startPosi);

	public ArrayList<BoardD> getByEndPosi(String endPosi);

	public ArrayList<BoardD> getByPrice(int price);

	public ArrayList<BoardD> getByWriter(String writer);

	public ArrayList<BoardD> getAll();
	
	public void remove(int num);
	
	public void editPassenger(BoardD b);
	
	public void editDriver(BoardD b);

	public ArrayList<BoardD> getByStartEnd(String start_posi, String end_posi);

	public ArrayList<BoardD> getByDriver(String driver);

	public ArrayList<BoardD> getByPassenger(String passenger);
}
