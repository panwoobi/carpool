package com.kitri.carpool.boardD;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

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
	
	@RequestMapping(value = "/driverSearchList", method = RequestMethod.POST)
	public ModelAndView searchList(HttpServletRequest req) {

		ModelAndView mav = new ModelAndView();
		
		ArrayList<BoardD> list = new ArrayList<BoardD>();
		int totalCount;
		String start_posi = req.getParameter("start_posi");
		String end_posi = req.getParameter("end_posi");
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("0", start_posi);
		map.put("1", end_posi);
		list = service.getByStartEnd(map);
		
		totalCount = service.getAll().size();
		mav.setViewName("driver.tiles");
		mav.addObject("list", list);
		mav.addObject("totalCount", totalCount);
		
		return mav;
	}
	
	@RequestMapping(value = "/driverList", method = RequestMethod.GET)
	public ModelAndView list(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		ArrayList<BoardD> list = service.getAll();
		int totalCount = list.size();
		mav.addObject("totalCount", totalCount);
		mav.addObject("list", list);
		mav.setViewName("driver.tiles");
		return mav;
	}
	
	@RequestMapping(value = "/driverList", method = RequestMethod.POST)
	public String listPOST(HttpServletRequest req) {
		return "redirect:driverList";
	}
	
	@RequestMapping(value = "/driverDetail", method = RequestMethod.GET)
	public ModelAndView edit(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		int num = Integer.parseInt(req.getParameter("num"));
		System.out.println(num);
		BoardD b = service.getByNum(num);		
		mav.addObject("b", b);
		mav.setViewName("driverEditForm.tiles");
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
		
		BoardD b = new BoardD();
		
		b.setNum(0);
		b.setCate(request.getParameter("cate"));
		b.setW_date(null);
		b.setStart_time(request.getParameter("start_time"));
		b.setStart_posi(request.getParameter("start_posi"));
		b.setEnd_posi(request.getParameter("end_posi"));
		b.setStart_x(Double.valueOf(request.getParameter("spx")));
		b.setStart_y(Double.valueOf(request.getParameter("spy")));
		b.setEnd_x(Double.valueOf(request.getParameter("epx")));
		b.setEnd_y(Double.valueOf(request.getParameter("epy")));
		b.setPrice(Integer.parseInt(request.getParameter("price")));
		b.setContent(request.getParameter("content"));
		b.setTitle(request.getParameter("title"));
		b.setSeat(0);
		b.setMaxSeat(Integer.parseInt(request.getParameter("maxSeat")));
		b.setWriter(m.getId());
		b.setDriver(m.getId());
		b.setPassenger1("");
		b.setPassenger2("");
		b.setPassenger3("");
		b.setProfile("/profile/" + m.getProfile());
		
		service.add(b);
		
		return "redirect:/driverList";
	}
}
