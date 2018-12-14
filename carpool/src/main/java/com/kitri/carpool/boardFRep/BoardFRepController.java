package com.kitri.carpool.boardFRep;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;


@RestController
public class BoardFRepController {

	@Resource(name = "boardRepService")
	private BoardFRepService service;
	
	public void setService(BoardFRepService service) {
		this.service = service;
	}
	
	@RequestMapping("/boardFRep")
	public ModelAndView add(BoardFRep br) {
		service.add(br);
		ArrayList<BoardFRep> list = service.getByBoardNum(br.getBoard_num());
		ModelAndView mav = new ModelAndView("boardFRep.tiles");
		mav.addObject("list", list);
		return mav;
	}
	
}
