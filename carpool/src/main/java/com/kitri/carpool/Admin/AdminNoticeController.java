package com.kitri.carpool.Admin;

import java.util.ArrayList;


import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kitri.carpool.boardN.BoardN;
import com.kitri.carpool.boardN.BoardNService;


@Controller
public class AdminNoticeController {
	
	@Resource(name="boardNService")
	private BoardNService service;
	
	public void setService(BoardNService service) {
		this.service = service;
	}
//
//	@RequestMapping("/adminNotice")
//	public ModelAndView Noticelist() {
//		ModelAndView mav = new ModelAndView("AdminNotice.tiles");
//		ArrayList<BoardN> list = service.getAll();
//		mav.addObject("list", list);
//		return mav;
//	}

}
