package com.kitri.carpool.Survey;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import com.kitri.carpool.boardN.BoardNDao;


@Component("SurveyService")
public class SurveyServiceImpl implements SurveyService {
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private SurveyDao dao;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	@Override
	public void add(Survey s) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(SurveyDao.class);
		dao.insert(s);
	}

	@Override
	public void edit(Survey s) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(SurveyDao.class);
		dao.update(s);
	}

	@Override
	public Survey gettByNum(int num) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(SurveyDao.class);
		return dao.selectByNum(num);
	}

	@Override
	public ArrayList<Survey> getBydid(String did) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(SurveyDao.class);
		return dao.selectBydid(did);
	}

	@Override
	public ArrayList<Survey> getAll() {
		dao = sqlSession.getMapper(SurveyDao.class);
		return dao.selectAll();
	}

	@Override
	public void remove(int num) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(SurveyDao.class);
		dao.delete(num);
	}

}
