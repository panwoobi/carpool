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

	@Override
	public int checkId(Member m) {
		// TODO Auto-generated method stub
		dao = sqlSession.getMapper(MemberDao.class);
		return dao.checkId(m);
	}

	@Override
	public ArrayList<Member> geta() {
		dao = sqlSession.getMapper(MemberDao.class);
		return dao.geta();
	}

	@Override
	public ArrayList<Member> getb() {
		dao = sqlSession.getMapper(MemberDao.class);
		return dao.getb();
	}

	@Override
	public ArrayList<Member> getc() {
		dao = sqlSession.getMapper(MemberDao.class);
		return dao.getc();
	}

	@Override
	public ArrayList<Member> getd() {
		dao = sqlSession.getMapper(MemberDao.class);
		return dao.getd();
	}

	@Override
	public ArrayList<Member> gete() {
		dao = sqlSession.getMapper(MemberDao.class);
		return dao.gete();
	}

	@Override
	public ArrayList<Member> getf() {
		dao = sqlSession.getMapper(MemberDao.class);
		return dao.getf();
	}

	@Override
	public ArrayList<Member> getg() {
		dao = sqlSession.getMapper(MemberDao.class);
		return dao.getg();
	}

	@Override
	public ArrayList<Member> geth() {
		dao = sqlSession.getMapper(MemberDao.class);
		return dao.geth();
	}

	@Override
	public ArrayList<Member> geti() {
		dao = sqlSession.getMapper(MemberDao.class);
		return dao.geti();
	}

	@Override
	public ArrayList<Member> getj() {
		dao = sqlSession.getMapper(MemberDao.class);
		return dao.getj();
	}

	@Override
	public ArrayList<Member> getk() {
		dao = sqlSession.getMapper(MemberDao.class);
		return dao.getk();
	}

	@Override
	public ArrayList<Member> getl() {
		dao = sqlSession.getMapper(MemberDao.class);
		return dao.getl();
	}

	@Override
	public void deletemember(String id) {
		dao = sqlSession.getMapper(MemberDao.class);
		dao.deletemember(id);
	}
	
}