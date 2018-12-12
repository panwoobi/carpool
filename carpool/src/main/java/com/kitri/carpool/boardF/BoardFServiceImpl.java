package com.kitri.carpool.boardF;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

@Component("boardFService")
public class BoardFServiceImpl implements BoardFService {

	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private BoardFDao dao;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public void add(BoardF b) {
		dao = sqlSession.getMapper(BoardFDao.class);
		dao.insert(b);
	}

	@Override
	public void edit(BoardF b) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardFDao.class);
		dao.update(b);
	}

	@Override
	public BoardF gettByNum(int num) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardFDao.class);
		return dao.selectByNum(num);
	}

	@Override
	public ArrayList<BoardF> getByWriter(String writer) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardFDao.class);
		return dao.selectByWriter(writer);
	}

	@Override
	public ArrayList<BoardF> getAll() {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardFDao.class);
		return dao.selectAll();
	}

	@Override
	public void remove(int num) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardFDao.class);
		dao.delete(num);
	}

}
