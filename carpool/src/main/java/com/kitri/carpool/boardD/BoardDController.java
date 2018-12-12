package com.kitri.carpool.boardD;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardDController {
	
	@Resource(name="boardDService")
	private BoardDService service;
	
	public void setService(BoardDService service) {
		this.service = service;
	}
	
	@RequestMapping(value = "/driverList", method = RequestMethod.GET)
	public String driver() {
		
		return "driver.tiles";
	}

	@RequestMapping(value = "/driverWriteForm", method = RequestMethod.GET)
	public String writeForm() {
		
		return "driverWriteForm.tiles";
	}

	@RequestMapping(value = "/driverWriteForm", method = RequestMethod.POST)
	public String writeFormPOST() {
		
		return "driverWriteForm.tiles";
	}
}
