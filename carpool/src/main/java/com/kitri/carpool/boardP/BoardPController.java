package com.kitri.carpool.boardP;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;


@Controller
public class BoardPController {
	@Resource(name="boardPService")
	private BoardPService service;
	
	public void setService(BoardPService service) {
		this.service = service;
	}
}
