package com.kitri.carpool.Survey;

import java.util.ArrayList;

public interface SurveyService {
	public void add(Survey s);

	public void edit(Survey s);

	public Survey gettByNum(int num);
	
	public ArrayList<Survey> getBydid(String did);

	public ArrayList<Survey> getAll();
	
	public void remove(int num);
}
