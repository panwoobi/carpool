package com.kitri.carpool.Admin;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kitri.carpool.boardN.BoardN;
import com.kitri.carpool.boardN.BoardNService;


@Controller
public class AdminNoticeDeleteController {
	
	@Resource(name="boardNService")
	private BoardNService service;
	
	public void setService(BoardNService service) {
		this.service = service;
	}
//
//	@RequestMapping("/ndelete")
//	@ResponseBody
//	public String delmember(@RequestParam(value = "num") int num) {
//		service.remove(num);
//		return "AdminNotice.tiles";
//	}

}
