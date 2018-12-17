package com.kitri.carpool.member;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;

import javax.annotation.Resource;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kitri.carpool.boardD.BoardD;
import com.kitri.carpool.boardD.BoardDService;
import com.kitri.carpool.boardP.BoardP;
import com.kitri.carpool.boardP.BoardPService;
import com.kitri.carpool.car.Car;
import com.kitri.carpool.car.CarService;

import DesignPattern.PathInfo;

@Controller
public class MemberController {

	@Resource(name = "memberService")
	private MemberService service;

	@Resource(name = "carService")
	private CarService cservice;

	@Autowired
	private JavaMailSender mailSender;

	@Resource(name = "boardDService")
	private BoardDService dService;

	@Resource(name = "boardPService")
	private BoardPService pService;

	private PathInfo pi;

	public MemberController() {
		pi = PathInfo.getInstance();
	}

	public void setService(MemberService service, CarService cservice, BoardDService dService, BoardPService pService) {
		this.service = service;
		this.cservice = cservice;
		this.dService = dService;
		this.pService = pService;
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

	@RequestMapping("/menu")
	public ModelAndView menu(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		HttpSession session = req.getSession(false);
		Member m = (Member) session.getAttribute("m");

		ArrayList<BoardD> Dlist = new ArrayList<BoardD>();
		ArrayList<BoardP> Plist = new ArrayList<BoardP>();

		if (m.getType() == 1) {
			Dlist = dService.getByDriverPartnerList(m.getId());
			Plist = pService.getByDriver(m.getId());
		} else if (m.getType() == 2) {
			Dlist = dService.getByPassenger(m.getId());
			Plist = pService.getByPassenger(m.getId());
		}

		mav.addObject("Dlist", Dlist);
		mav.addObject("Plist", Plist);

		if (m.getType() == 0) {
			mav.setViewName("/userMenu/admin.tiles");
		} else if (m.getType() == 1) {
			mav.setViewName("/userMenu/driver.tiles");
		} else if (m.getType() == 2) {
			mav.setViewName("/userMenu/passenger.tiles");
		}

		return mav;
	}

	@RequestMapping("/memberDetail")
	public ModelAndView detail(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();

		String id = req.getParameter("id");

		Member m = service.getMember(id);
		mav.setViewName("memberDetail.tiles");
		mav.addObject("m", m);

		if (m.getType() == 1) {
			Car c = cservice.getCar(m.getId());
			mav.addObject("cc", c);
		}
		return mav;
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
		session.setAttribute("m", m);
		service.editProfile(m);
		return "redirect:/menu";
	}

	@RequestMapping("/delete")
	@ResponseBody
	public Boolean deleteDriver(@RequestBody Map<String, String> map, HttpServletRequest req) {

		String input = map.get("input");
		HttpSession session = req.getSession(false);
		Member m = (Member) session.getAttribute("m");
		Boolean b = service.out(m.getId(), input);
		if (b == true) {
			session.removeAttribute("m");
			session.removeAttribute("c");
			session.invalidate();

			if (!m.getProfile().equals("/profile/default_profile.jpg")) {
				File f = new File(pi.getPath() + m.getProfile());
				f.delete();
			}
		}
		return b;
	}

	@RequestMapping("/find")
	@ResponseBody
	public Boolean find(@RequestBody Map<String, String> map) {

		Boolean b = false;
		String id = map.get("id");
		Member m = service.getMember(id);

		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

			messageHelper.setFrom("whdgus537@gmail.com"); // 蹂대궡�뒗�궗�엺 �깮�왂�븯嫄곕굹 �븯硫� �젙�긽�옉�룞�쓣 �븞�븿
			messageHelper.setTo(m.getEmail()); // 諛쏅뒗�궗�엺 �씠硫붿씪
			messageHelper.setSubject("Kitri Carpool �엫�떆 鍮꾨�踰덊샇 �엯�땲�떎."); // 硫붿씪�젣紐⑹� �깮�왂�씠 媛��뒫�븯�떎
			String temppwd = Long.valueOf(new Date().getTime()).toString();
			messageHelper.setText(temppwd); // 硫붿씪 �궡�슜
			m.setPw(temppwd);
			mailSender.send(message);
			b = true;
		} catch (Exception e) {
			System.out.println(e);
		}
		service.editPwd(m);
		return b;
	}

	@RequestMapping("/activation")
	@ResponseBody
	public Boolean activation(@RequestBody Map<String, String> map, HttpServletRequest req) {

		Boolean b = false;
		String input = map.get("input");
		input = input.trim();
		System.out.println(input);
		HttpSession session = req.getSession(false);
		Member m = (Member) session.getAttribute("m");

		if (m.getTmpkey().equals(input)) {
			b = true;
			m.setIsValidate(1);
			service.editIsValidate(m);
		}
		return b;
	}

	@RequestMapping("/idCheck")
	@ResponseBody
	public Boolean checkId(@RequestBody Map<String, String> map) {

		Boolean b;
		String input = map.get("id");
		Member m = new Member();
		m.setId(input);
		int cnt = service.checkId(m);
		if (cnt == 0) {
			b = true;
		} else {
			b = false;
		}
		return b;
	}

	
	@RequestMapping("/idCheck")
	@ResponseBody
	public Boolean idCheck(@RequestBody Map<String,String> map) {
				
		Boolean b;
		String input = map.get("id");
		Member m = new Member();
		m.setId(input);
		int cnt = service.checkId(m);
		if(cnt == 0) {
			b = true;
		}else{
			b = false;
		}
		return b;
	}

}
