package com.kitri.carpool.member;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kitri.carpool.car.Car;
import com.kitri.carpool.car.CarService;

@Controller
public class MemberController {

	@Resource(name = "memberService")
	private MemberService service;

	@Resource(name = "carService")
	private CarService cservice;

	public void setService(MemberService service) {
		this.service = service;
	}

	@RequestMapping("/myLogin")
	public String myLogin(Member m, HttpServletRequest req) {
		String id = m.getId();
		String pw = m.getPw();
		String path = "";
		boolean flag = service.login(id, pw);
		if (flag) {
			HttpSession session = req.getSession();
			session.setAttribute("m", service.getMember(id));
			Car c = cservice.getCar(id);
			if (c != null) {
				session.setAttribute("c", c);
			}
			path = "redirect:/";
		} else {
			path = "redirect:/";
		}
		return path;
	}

	@RequestMapping("/logout")
	public String logout(HttpServletRequest req) {

		HttpSession session = req.getSession(false);
		if (session != null) {
			session.removeAttribute("m");
			session.removeAttribute("c");
			session.invalidate();
		}

		return "redirect:/";
	}

	@RequestMapping("/out")
	public String out() {
		return "loginFunc/out.tiles";
	}

	@RequestMapping("/menu")
	public String menu() {
		return "/userMenu/driver.tiles";
	}



}
