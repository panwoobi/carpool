package com.kitri.carpool.boardP;

import java.util.ArrayList;
import java.util.Map;

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
	public ArrayList<BoardP> getByTime(String start_time) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardPDao.class);
		return dao.selectByTime(start_time);
	}

	@Override
	public ArrayList<BoardP> getByStartPosi(String start_posi) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardPDao.class);
		return dao.selectByStartPosi(start_posi);
	}

	@Override
	public ArrayList<BoardP> getByEndPosi(String end_posi) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardPDao.class);
		return dao.selectByEndPosi(end_posi);
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
	public ArrayList<BoardP> getByStartEnd(Map<String, String> map) {
		dao = sqlSession.getMapper(BoardPDao.class);
		return dao.selectByStartEnd(map);
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

	@Override
	public ArrayList<BoardP> getByPassengerPartnerList(String driver) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardPDao.class);
		ArrayList<BoardP> list = dao.selectByDriver(driver);
		for(int i=0; i < list.size(); i++) {
			if(list.get(i).getDriver() == null || list.get(i).getDriver() == "") {
				list.remove(i);
			}
		}
		return list;
	}
}