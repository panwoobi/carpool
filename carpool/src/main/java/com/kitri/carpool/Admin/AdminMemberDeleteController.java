package com.kitri.carpool.Admin;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kitri.carpool.boardD.BoardDService;
import com.kitri.carpool.boardP.BoardPService;
import com.kitri.carpool.member.Member;
import com.kitri.carpool.member.MemberService;

@Controller
public class AdminMemberDeleteController {

	@Resource(name = "memberService")
	private MemberService service;

	
	@Resource(name = "boardDService")
	private BoardDService dService;

	@Resource(name = "boardPService")
	private BoardPService pService;
	public void setService(MemberService service, BoardDService dService, BoardPService pService) {
		this.service = service;
		
		this.dService = dService;
		this.pService = pService;
	}

//	@RequestMapping("/mdelete")
//	@ResponseBody
//	public String delmember(@RequestParam(value = "id") String id) {
//		service.deletemember(id);
//		return "AdminMember.tiles";
//	}
}
