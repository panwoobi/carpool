package com.kitri.carpool.boardP;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;


@Component("boardPService")
public class BoardPServiceImpl implements BoardPService {

	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private BoardPDao dao;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public void add(BoardP b) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardPDao.class);
		dao.insert(b);
	}

	@Override
	public void edit(BoardP b) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardPDao.class);
		dao.update(b);
	}

	@Override
	public BoardP getByNum(int num) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardPDao.class);
		return dao.selectByNum(num);
	}

	@Override
	public ArrayList<BoardP> getByCate(String cate) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardPDao.class);
		return dao.selectByCate(cate);
	}

	@Override
	public ArrayList<BoardP> getByTime(String startTime) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardPDao.class);
		return dao.selectByTime(startTime);
	}

	@Override
	public ArrayList<BoardP> getByStartPosi(String startPosi) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardPDao.class);
		return dao.selectByStartPosi(startPosi);
	}

	@Override
	public ArrayList<BoardP> getByEndPosi(String endPosi) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardPDao.class);
		return dao.selectByEndPosi(endPosi);
	}

	@Override
	public ArrayList<BoardP> getByPrice(int price) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardPDao.class);
		return dao.selectByPrice(price);
	}

	@Override
	public ArrayList<BoardP> getByWriter(String writer) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardPDao.class);
		return dao.selectByWriter(writer);
	}

	@Override
	public ArrayList<BoardP> getAll() {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardPDao.class);
		return dao.selectAll();
	}

	@Override
	public void remove(int num) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardPDao.class);
		dao.delete(num);
	}
	@Override
	public ArrayList<BoardP> getByStartEnd(String start_posi, String end_posi) {
		dao = sqlSession.getMapper(BoardPDao.class);
		return dao.selectByStartEnd(start_posi, end_posi);
	}

	@Override
	public void editPassenger(BoardP b) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardPDao.class);
		dao.updatePassenger(b);
	}

	@Override
	public ArrayList<BoardP> getByDriver(String driver) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardPDao.class);
		return dao.selectByDriver(driver);
	}

	@Override
	public ArrayList<BoardP> getByPassenger(String passenger) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardPDao.class);
		return dao.selectByPassenger(passenger);
	}

	@Override
	public void editDriver(BoardP b) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardPDao.class);
		dao.updateDriver(b);
	}
}