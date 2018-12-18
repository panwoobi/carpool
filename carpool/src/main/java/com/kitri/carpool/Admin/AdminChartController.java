package com.kitri.carpool.Admin;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kitri.carpool.boardD.BoardDService;
import com.kitri.carpool.boardP.BoardPService;
import com.kitri.carpool.member.Member;
import com.kitri.carpool.member.MemberService;

@Controller
public class AdminChartController {

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

	@RequestMapping("/admin")
	public String admin(HttpServletRequest req, Model model) {
		ArrayList<Member> m = service.getAll();
		ArrayList<Member> a = service.geta();
	ArrayList<Member> b = service.getb();
		ArrayList<Member> c = service.getc();
		ArrayList<Member> d = service.getd();
		ArrayList<Member> e = service.gete();
		ArrayList<Member> f = service.getf();
		ArrayList<Member> g = service.getg();
		ArrayList<Member> h = service.geth();
		ArrayList<Member> i = service.geti();
		ArrayList<Member> j = service.getj();
		ArrayList<Member> k = service.getk();
		ArrayList<Member> l = service.getl();
	
		model.addAttribute("m",m);
		model.addAttribute("a",a);
		model.addAttribute("b",b);
		model.addAttribute("c",c);
		model.addAttribute("d",d);
		model.addAttribute("e",e);
		model.addAttribute("f",f);
		model.addAttribute("g",g);
		model.addAttribute("h",h);
		model.addAttribute("i",i);
		model.addAttribute("j",j);
		model.addAttribute("k",k);
		model.addAttribute("l",l);
		
		return "AdminPage.tiles";
	}
	
	
}
