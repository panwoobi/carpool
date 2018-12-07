package com.kitri.carpool.boardP;

import java.util.ArrayList;

public interface BoardPDao {

	public boolean insert(BoardP b);

	public boolean update(BoardP b);

	public BoardP selectByNum(int num);

	public ArrayList<BoardP> selectByType(int type);

	public ArrayList<BoardP> selectByCate(String cate);

	public ArrayList<BoardP> selectByTime(String startTime);

	public ArrayList<BoardP> selectByStartPosi(String startPosi);

	public ArrayList<BoardP> selectByEndPosi(String endPosi);

	public ArrayList<BoardP> selectByPrice(int price);

	public ArrayList<BoardP> selectByWriter(String writer);

	public ArrayList<BoardP> selectAll();

	public boolean updatePassenger(BoardP b);

	public boolean updateDriver(BoardP b);
	
	public boolean delete(int num);

	public ArrayList<BoardP> selectByStartEnd(String start_posi, String end_posi);

	public ArrayList<BoardP> selectByPassenger(String passenger);

	public ArrayList<BoardP> selectByDriver(String driver);

}
