package com.kitri.carpool.boardP;

import java.util.ArrayList;

public interface BoardPDao {

	public void insert(BoardP b);

	public void update(BoardP b);

	public BoardP selectByNum(int num);

	public ArrayList<BoardP> selectByCate(String cate);

	public ArrayList<BoardP> selectByTime(String startTime);

	public ArrayList<BoardP> selectByStartPosi(String startPosi);

	public ArrayList<BoardP> selectByEndPosi(String endPosi);

	public ArrayList<BoardP> selectByPrice(int price);

	public ArrayList<BoardP> selectByWriter(String writer);

	public ArrayList<BoardP> selectAll();

	public void updatePassenger(BoardP b);

	public void updateDriver(BoardP b);
	
	public void delete(int num);

	public ArrayList<BoardP> selectByStartEnd(String start_posi, String end_posi);

	public ArrayList<BoardP> selectByPassenger(String passenger);

	public ArrayList<BoardP> selectByDriver(String driver);

}
