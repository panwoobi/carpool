package com.kitri.carpool.member;

import java.util.ArrayList;

public interface MemberService {
	public boolean join(Member m);
	public boolean login(String id, String pw);
	public boolean out(String id, String pw);
	public void deletemember(String id);
	public void editInfo(Member m);
	public void editProfile(Member m);
	public void editPwd(Member m);
	public void editIsValidate(Member m);
	public Member getMember(String id);
	public ArrayList<Member> getByName(String name);
	public ArrayList<Member> getByIsSmoke(int isSmoke);
	public ArrayList<Member> getByType(int type);
	public ArrayList<Member> getBySex(int sex);
	public ArrayList<Member> getAll();
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
