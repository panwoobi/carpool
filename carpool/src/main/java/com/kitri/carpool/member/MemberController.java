package com.kitri.carpool.member;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;


@Controller
public class MemberController {
	
	@Resource(name="memberService")
	private MemberService service;
	
	public void setService(MemberService service) {
		this.service = service;
	}

}
