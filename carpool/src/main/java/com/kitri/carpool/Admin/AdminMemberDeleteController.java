package com.kitri.carpool.Admin;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kitri.carpool.member.MemberService;

@Controller
public class AdminMemberDeleteController {

	@Resource(name = "memberService")
	private MemberService service;

	
	public void setService(MemberService service) {
		this.service = service;
		
	}

	@RequestMapping("/mdelete")
	@ResponseBody
	public String delmember(@RequestParam(value = "id") String id) {
		System.out.println(id);
		service.deletemember(id);
		return "redirect:/adminMember";
	}
}
