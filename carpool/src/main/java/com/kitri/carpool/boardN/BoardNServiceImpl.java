package com.kitri.carpool.boardN;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

@Component("boardNService")
public class BoardNServiceImpl implements BoardNService {

	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private BoardNDao dao;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public void add(BoardN b) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardNDao.class);
		dao.insert(b);
	}

	@Override
	public void edit(BoardN b) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardNDao.class);
		dao.update(b);
	}

	@Override
	public BoardN gettByNum(int num) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardNDao.class);
		return dao.selectByNum(num);
	}

	@Override
	public ArrayList<BoardN> getByWriter(String writer) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardNDao.class);
		return dao.selectByWriter(writer);
	}

	@Override
	public ArrayList<BoardN> getAll() {
		dao = sqlSession.getMapper(BoardNDao.class);
		return dao.selectAll();
	}

	@Override
	public void remove(int num) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardNDao.class);
		dao.delete(num);
	}

}
