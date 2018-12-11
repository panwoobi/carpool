package com.kitri.carpool.boardN;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;


@Controller
public class BoardNController {
	
	@Resource(name="boardNService")
	private BoardNService service;
	
	public void setService(BoardNService service) {
		this.service = service;
	}

}
