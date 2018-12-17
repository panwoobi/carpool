package com.kitri.carpool.member;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;


@Component("memberService")
public class MemberServiceImpl implements MemberService {
	
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private MemberDao dao;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public boolean join(Member m) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(MemberDao.class);
		Member mm = dao.selectById(m.getId());
		if(mm==null) {
			dao.insert(m);
			return true;
		}else {
			System.out.println("�̹��ִ� ���̵�");
			return false;
		}
	}

	@Override
	public boolean login(String id, String pw) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(MemberDao.class);
		Member m = dao.selectById(id);
		if(m == null) {
			return false;
		} else if(m.getPw().equals(pw)) {
			return true;
		}
		return false;
	}

	@Override
	public boolean out(String id, String pw) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(MemberDao.class);
		Member m = dao.selectById(id);
		if(m == null) {
			return false;
		} else if(m.getPw().equals(pw)) {
			dao.delete(m.getId());
			return true;
		}
		return false;
	}

	@Override
	public Member getMember(String id) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(MemberDao.class);
		return dao.selectById(id);
//		dao.selectById(id);
	}

	@Override
	public ArrayList<Member> getByName(String name) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(MemberDao.class);
		return null;
//		dao.selectByName(name);
	}

	@Override
	public ArrayList<Member> getByIsSmoke(int isSmoke) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(MemberDao.class);
		return null;
//		dao.selectByIsSmoke(isSmoke);
	}

	@Override
	public ArrayList<Member> getByType(int type) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(MemberDao.class);
		return null;
//		dao.selectByType(type);
	}

	@Override
	public ArrayList<Member> getBySex(int sex) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(MemberDao.class);
		return null;
//		dao.selectBySex(sex);
	}

	@Override
	public ArrayList<Member> getAll() {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(MemberDao.class);
		return dao.selectAll();
	}

	@Override
	public void editInfo(Member m) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(MemberDao.class);
		dao.update(m);
	}

	@Override
	public void editProfile(Member m) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(MemberDao.class);
		dao.updateProfile(m);
	}

	@Override
	public void editPwd(Member m) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(MemberDao.class);
		dao.updatePwd(m);
	}

	@Override
	public void editIsValidate(Member m) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(MemberDao.class);
		dao.updateValidate(m);
	}
	
}