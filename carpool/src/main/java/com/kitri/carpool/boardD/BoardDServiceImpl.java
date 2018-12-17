package com.kitri.carpool.boardD;

import java.util.ArrayList;
import java.util.Map;

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
	public ArrayList<BoardD> getByTime(String start_time) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardDDao.class);
		return dao.selectByTime(start_time);
	}

	@Override
	public ArrayList<BoardD> getByStartPosi(String start_posi) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardDDao.class);
		return dao.selectByStartPosi(start_posi);
	}

	@Override
	public ArrayList<BoardD> getByEndPosi(String end_posi) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardDDao.class);
		return dao.selectByEndPosi(end_posi);
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
	public ArrayList<BoardD> getByStartEnd(Map<String, String> map) {
		dao = sqlSession.getMapper(BoardDDao.class);
		return dao.selectByStartEnd(map);
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
	public ArrayList<BoardD> getByDriverPartnerList(String driver) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardDDao.class);
		ArrayList<BoardD> list = dao.selectByDriver(driver);
		for(int i=0; i < list.size(); i++) {
			if(list.get(i).getPassenger1() == null || list.get(i).getPassenger1() == "") {
				list.remove(i);
			}
		}
		return list;
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