package com.kitri.carpool.member;

import java.util.ArrayList;

public interface MemberDao {
	public void insert(Member m);
	public void delete(String id);
	public void update(Member m);
	public Member selectById(String id);
	public ArrayList<Member> selectByName(String name);
	public ArrayList<Member> selectByIsSmoke(int isSmoke);
	public ArrayList<Member> selectByType(int type);
	public ArrayList<Member> selectBySex(int sex);
	public ArrayList<Member> selectAll();
	public void updateProfile(Member m);
}
