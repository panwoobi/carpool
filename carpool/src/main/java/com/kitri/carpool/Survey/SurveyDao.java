package com.kitri.carpool.Survey;

import java.util.ArrayList;

public interface SurveyDao {
	public void insert(Survey s);

	public void update(Survey s);

	public Survey selectByNum(int num);

	public ArrayList<Survey> selectBydid(String did);

	public ArrayList<Survey> selectAll();
	
	public void delete(int num);
}
