package com.kitri.carpool.member;

import java.io.File;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.kitri.carpool.car.Car;
import com.kitri.carpool.car.CarService;

import DesignPattern.PathInfo;

@Controller
public class MemberController {

	@Resource(name = "memberService")
	private MemberService service;

	@Resource(name = "carService")
	private CarService cservice;

	private PathInfo pi;

	public MemberController() {
		pi = PathInfo.getInstance();
	}

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

	@RequestMapping("/editInfo")
	public String editInfo(Member m, HttpServletRequest req) {

		HttpSession session = req.getSession(false);
		Member loginMember = (Member) session.getAttribute("m");
		m.setId(loginMember.getId());
		m.setProfile(loginMember.getProfile());
		m.setType(loginMember.getType());
		session.setAttribute("m", m);
		service.editInfo(m);
		System.out.println(m);
		return "/userMenu/driver.tiles";
	}

	@RequestMapping("/editProfile")
	public String editProfile(@RequestParam("editProfileBtn") MultipartFile file, HttpServletRequest req) {

		HttpSession session = req.getSession(false);
		Member m = (Member) session.getAttribute("m");
		MultipartFile f = file;
		if (f != null) {
			String fileName = f.getOriginalFilename();
			String t = fileName.split("\\.")[1];
			File editFile = new File(pi.getPath() + "profile\\" + m.getId() + "." + t);

			try {
				f.transferTo(editFile);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			m.setProfile("/profile/" + m.getId() + "." + t);

		}
		service.editProfile(m);
		return "/userMenu/driver.tiles";
	}

}
