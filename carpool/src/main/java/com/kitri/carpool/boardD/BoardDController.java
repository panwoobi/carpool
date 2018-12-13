package com.kitri.carpool.boardD;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kitri.carpool.member.Member;

@Controller
public class BoardDController {
	
	@Resource(name="boardDService")
	private BoardDService service;
		
	public void setService(BoardDService service) {
		this.service = service;
	}
	
	@RequestMapping(value = "/driverList", method = RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("driver.tiles");
		ArrayList<BoardD> list = service.getAll();
		int totalCount = list.size();
		mav.addObject("list", list);
		mav.addObject("totalCount", totalCount);
		return mav;
	}

	@RequestMapping(value = "/driverWriteForm", method = RequestMethod.GET)
	public String writeForm() {
		
		return "driverWriteForm.tiles";
	}

	@RequestMapping(value = "/driverWrite", method = RequestMethod.POST)
	public String write(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession(false);

		if (session.getAttribute("m") == null) {
			// 여기에 로그인 안된거 반영
		}
		
		Member m = (Member)session.getAttribute("m");
		
		String cate = request.getParameter("cate");
		String start_time = request.getParameter("start_time");
		String start_posi = request.getParameter("start_posi");
		String end_posi = request.getParameter("end_posi");
		int price = Integer.parseInt(request.getParameter("price"));
		String content = request.getParameter("content");
		String title = request.getParameter("title");
		int maxSeat = Integer.parseInt(request.getParameter("maxSeat"));
		int seat = 0;
		String profile = "/profile/" + m.getProfile();
		Double s_x = Double.valueOf(request.getParameter("spx"));
		Double s_y = Double.valueOf(request.getParameter("spy"));
		Double e_x = Double.valueOf(request.getParameter("epx"));
		Double e_y = Double.valueOf(request.getParameter("epy"));
		
		BoardD b = new BoardD(0, cate, null, start_time, start_posi, end_posi, s_x, s_y, e_x, e_y, price, content, title, seat, maxSeat, m.getId(), m.getId(), "", "", "", profile);
		System.out.println(b);
		service.add(b);
		
		return "redirect:/driverList";
	}
}
