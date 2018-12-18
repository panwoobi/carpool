package com.kitri.carpool.Admin;

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
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kitri.carpool.member.Member;
import com.kitri.carpool.member.MemberService;

import DesignPattern.PathInfo;

@Controller
public class AdminMemberController {

	@Resource(name = "memberService")
	private MemberService service;


	public void setService(MemberService service) {
		this.service = service;
	
	}


//	@RequestMapping("/adminMember")
//	public ModelAndView Memberlist() {
//		ModelAndView mav = new ModelAndView("AdminMember.tiles");
//		ArrayList<Member> list = service.getAll();
//		mav.addObject("list", list);
//		return mav;
//	}
	}

	
