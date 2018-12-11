package com.kitri.carpool.boardD;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

@Component("boardDService")
public class BoardDServiceImpl implements BoardDService {
    
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private BoardDDao dao;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public void add(BoardD b) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardDDao.class);
		dao.insert(b);
	}

	@Override
	public void edit(BoardD b) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardDDao.class);
		dao.update(b);
	}

	@Override
	public BoardD getByNum(int num) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardDDao.class);
		return dao.selectByNum(num);
	}

	@Override
	public ArrayList<BoardD> getByCate(String cate) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardDDao.class);
		return dao.selectByCate(cate);
	}

	@Override
	public ArrayList<BoardD> getByTime(String startTime) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardDDao.class);
		return dao.selectByTime(startTime);
	}

	@Override
	public ArrayList<BoardD> getByStartPosi(String startPosi) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardDDao.class);
		return dao.selectByStartPosi(startPosi);
	}

	@Override
	public ArrayList<BoardD> getByEndPosi(String endPosi) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardDDao.class);
		return dao.selectByEndPosi(endPosi);
	}

	@Override
	public ArrayList<BoardD> getByPrice(int price) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardDDao.class);
		return dao.selectByPrice(price);
	}

	@Override
	public ArrayList<BoardD> getByWriter(String writer) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardDDao.class);
		return dao.selectByWriter(writer);
	}

	@Override
	public ArrayList<BoardD> getAll() {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardDDao.class);
		return dao.selectAll();
	}

	@Override
	public void remove(int num) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardDDao.class);
		dao.delete(num);
	}
	
	@Override
	public ArrayList<BoardD> getByStartEnd(String start_posi, String end_posi) {
		dao = sqlSession.getMapper(BoardDDao.class);
		return dao.selectByStartEnd(start_posi, end_posi);
	}

	@Override
	public void editPassenger(BoardD b) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardDDao.class);
		dao.updatePassenger(b);
	}

	@Override
	public ArrayList<BoardD> getByDriver(String driver) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardDDao.class);
		return dao.selectByDriver(driver);
	}

	@Override
	public ArrayList<BoardD> getByPassenger(String passenger) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardDDao.class);
		return dao.selectByPassenger(passenger);
	}

	@Override
	public void editDriver(BoardD b) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardDDao.class);
		dao.updateDriver(b);
	}
}