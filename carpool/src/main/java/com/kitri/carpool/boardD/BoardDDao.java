package com.kitri.carpool.boardD;

import java.util.ArrayList;

public interface BoardDDao {

	public boolean insert(BoardD b);

	public boolean update(BoardD b);

	public BoardD selectByNum(int num);

	public ArrayList<BoardD> selectByType(int type);

	public ArrayList<BoardD> selectByCate(String cate);

	public ArrayList<BoardD> selectByTime(String startTime);

	public ArrayList<BoardD> selectByStartPosi(String startPosi);

	public ArrayList<BoardD> selectByEndPosi(String endPosi);

	public ArrayList<BoardD> selectByPrice(int price);

	public ArrayList<BoardD> selectByWriter(String writer);

	public ArrayList<BoardD> selectAll();

	public boolean updatePassenger(BoardD b);

	public boolean updateDriver(BoardD b);
	
	public boolean delete(int num);

	public ArrayList<BoardD> selectByStartEnd(String start_posi, String end_posi);

	public ArrayList<BoardD> selectByPassenger(String passenger);

	public ArrayList<BoardD> selectByDriver(String driver);

}
