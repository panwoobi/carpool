package com.kitri.carpool.member;

import java.util.ArrayList;

public interface MemberDao {
	public void insert(Member m);
	public void delete(String id);
	public void deletemember(String id);
	public void update(Member m);
	public Member selectById(String id);
	public ArrayList<Member> selectByName(String name);
	public ArrayList<Member> selectByIsSmoke(int isSmoke);
	public ArrayList<Member> selectByType(int type);
	public ArrayList<Member> selectBySex(int sex);
	public ArrayList<Member> selectAll();
	public void updateProfile(Member m);
	public void updatePwd(Member m);
	public void updateValidate(Member m);
	public int checkId(Member m);
	
	public ArrayList<Member> geta();
	public ArrayList<Member> getb();
	public ArrayList<Member> getc();
	public ArrayList<Member> getd();
	public ArrayList<Member> gete();
	public ArrayList<Member> getf();
	public ArrayList<Member> getg();
	public ArrayList<Member> geth();
	public ArrayList<Member> geti();
	public ArrayList<Member> getj();
	public ArrayList<Member> getk();
	public ArrayList<Member> getl();

}
