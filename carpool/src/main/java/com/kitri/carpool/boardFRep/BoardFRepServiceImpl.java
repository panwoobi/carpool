package com.kitri.carpool.boardFRep;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;


@Component("boardRepService")
public class BoardFRepServiceImpl implements BoardFRepService {
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private BoardFRepDao dao;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public void add(BoardFRep br) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardFRepDao.class);
		dao.insert(br);
	}

	@Override
	public void edit(BoardFRep br) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardFRepDao.class);
		dao.update(br);
	}

	@Override
	public ArrayList<BoardFRep> getByBoardNum(int board_num) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardFRepDao.class);
		return dao.selectByBoardFNum(board_num);
	}

	@Override
	public void remove(int num) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(BoardFRepDao.class);
		dao.delete(num);
	}

}
