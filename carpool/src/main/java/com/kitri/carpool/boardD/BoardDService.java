package com.kitri.carpool.boardD;

import java.util.ArrayList;

public interface BoardDService {
	
	public boolean add(BoardD b);

	public boolean edit(BoardD b);

	public BoardD getByNum(int num);

	public ArrayList<BoardD> getByCate(String cate);

	public ArrayList<BoardD> getByTime(String startTime);

	public ArrayList<BoardD> getByStartPosi(String startPosi);

	public ArrayList<BoardD> getByEndPosi(String endPosi);

	public ArrayList<BoardD> getByType(int type);

	public ArrayList<BoardD> getByPrice(int price);

	public ArrayList<BoardD> getByWriter(String writer);

	public ArrayList<BoardD> getAll();
	
	public boolean remove(int num);
	
	public boolean editPassenger(BoardD b);
	
	public boolean editDriver(BoardD b);

	public ArrayList<BoardD> getByStartEnd(String start_posi, String end_posi);

	public ArrayList<BoardD> getByDriver(String driver);

	public ArrayList<BoardD> getByPassenger(String passenger);
}
