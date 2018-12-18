package com.kitri.carpool.Admin;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kitri.carpool.boardD.BoardDService;
import com.kitri.carpool.boardN.BoardN;
import com.kitri.carpool.boardN.BoardNService;
import com.kitri.carpool.boardP.BoardPService;
import com.kitri.carpool.member.Member;
import com.kitri.carpool.member.MemberService;

@Controller
public class AdminController {

	@Resource(name = "memberService")
	private MemberService mService;

	@Resource(name = "boardDService")
	private BoardDService dService;

	@Resource(name = "boardPService")
	private BoardPService pService;
	
	@Resource(name = "boardNService")
	private BoardNService nService;

	public void setService(MemberService mService, BoardDService dService, BoardPService pService, BoardNService nService) {
		this.mService = mService;
		this.dService = dService;
		this.pService = pService;
		this.nService = nService;
	}

	@RequestMapping("/mdelete")
	@ResponseBody
	public String delmember(@RequestParam(value = "id") String id) {
		mService.deletemember(id);
		return "AdminMember.tiles";
	}

	@RequestMapping("/ndelete")
	@ResponseBody
	public String delmember(@RequestParam(value = "num") int num) {
		nService.remove(num);
		return "AdminNotice.tiles";
	}
	
	@RequestMapping("/adminNotice")
	public ModelAndView Noticelist() {
		ModelAndView mav = new ModelAndView("AdminNotice.tiles");
		ArrayList<BoardN> list = nService.getAll();
		mav.addObject("list", list);
		return mav;
	}

	@RequestMapping("/adminMember")
	public ModelAndView Memberlist() {
		ModelAndView mav = new ModelAndView("AdminMember.tiles");
		ArrayList<Member> list = mService.getAll();
		mav.addObject("list", list);
		return mav;
	}
	
	@RequestMapping("/admin")
	public String admin(HttpServletRequest req, Model model) {
		ArrayList<Member> m = mService.getAll();
		ArrayList<Member> a = mService.geta();
		ArrayList<Member> b = mService.getb();
		ArrayList<Member> c = mService.getc();
		ArrayList<Member> d = mService.getd();
		ArrayList<Member> e = mService.gete();
		ArrayList<Member> f = mService.getf();
		ArrayList<Member> g = mService.getg();
		ArrayList<Member> h = mService.geth();
		ArrayList<Member> i = mService.geti();
		ArrayList<Member> j = mService.getj();
		ArrayList<Member> k = mService.getk();
		ArrayList<Member> l = mService.getl();
	
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
