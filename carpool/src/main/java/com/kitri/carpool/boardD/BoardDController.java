package com.kitri.carpool.boardD;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

@Controller
public class BoardDController {
	
	@Resource(name="boardDService")
	private BoardDService service;
	
	public void setService(BoardDService service) {
		this.service = service;
	}

}
