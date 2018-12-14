package com.kitri.carpool.boardD;

import java.util.ArrayList;
import java.util.Map;

public interface BoardDDao {

	public void insert(BoardD b);

	public void update(BoardD b);

	public BoardD selectByNum(int num);

	public ArrayList<BoardD> selectByCate(String cate);

	public ArrayList<BoardD> selectByTime(String startTime);

	public ArrayList<BoardD> selectByStartPosi(String startPosi);

	public ArrayList<BoardD> selectByEndPosi(String endPosi);

	public ArrayList<BoardD> selectByPrice(int price);

	public ArrayList<BoardD> selectByWriter(String writer);

	public ArrayList<BoardD> selectAll();

	public void updatePassenger(BoardD b);

	public void updateDriver(BoardD b);
	
	public void delete(int num);

	public ArrayList<BoardD> selectByStartEnd(Map map);

	public ArrayList<BoardD> selectByPassenger(String passenger);

	public ArrayList<BoardD> selectByDriver(String driver);

}
