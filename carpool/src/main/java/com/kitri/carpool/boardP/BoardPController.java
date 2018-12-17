package com.kitri.carpool.boardP;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kitri.carpool.car.Car;
import com.kitri.carpool.car.CarService;
import com.kitri.carpool.member.Member;
import com.kitri.carpool.member.MemberService;

@Controller
public class BoardPController {
	@Resource(name="boardPService")
	private BoardPService service;
	
	@Resource(name="carService")
	private CarService cService;
	
	@Resource(name="memberService")
	private MemberService mService;
	
	public void setService(BoardPService service, CarService cService, MemberService mService) {
		this.service = service;
		this.cService = cService;
		this.mService = mService;
	}

	@RequestMapping(value = "/passengerRequestAdd", method = RequestMethod.POST)
	public String passengerRequestAdd(HttpServletRequest req) {
		HttpSession session = req.getSession(false);
		int num = Integer.parseInt(req.getParameter("num"));
		BoardP b = service.getByNum(num);

		if(b.getPassenger1() == null)
			b.setPassenger1("");
		if(b.getPassenger2() == null)
			b.setPassenger2("");
		if(b.getPassenger3() == null)
			b.setPassenger3("");
		if(b.getDriver() == null)
			b.setDriver("");
		
		if (session.getAttribute("m") == null) {
			// 세션없음
		}
		
		Member m = mService.getMember(((Member) session.getAttribute("m")).getId());

		if(b.getSeat() < 1) {
			b.setDriver(m.getId());
			
			if (b.getDriver() == "")
				b.setSeat(0);
			else
				b.setSeat(1);
		}

		service.editDriver(b);
		
		return "redirect:passengerDetail?num=" + b.getNum();
	}
	
	@RequestMapping(value = "/passengerRequestDel", method = RequestMethod.POST)
	public String passengerRequestDel(HttpServletRequest req) {
		HttpSession session = req.getSession(false);
		int num = Integer.parseInt(req.getParameter("num"));
		BoardP b = service.getByNum(num);

		if(b.getPassenger1() == null)
			b.setPassenger1("");
		if(b.getPassenger2() == null)
			b.setPassenger2("");
		if(b.getPassenger3() == null)
			b.setPassenger3("");
		if(b.getDriver() == null)
			b.setDriver("");
		
		if (session.getAttribute("m") == null) {
			
		}

		Member m = mService.getMember(((Member) session.getAttribute("m")).getId());

		if(b.getSeat() > 0 && b.getDriver().equals(m.getId())) {
			b.setDriver("");
			b.setSeat(0);
		}
		
		service.editDriver(b);

		return "redirect:passengerDetail?num=" + b.getNum();
	}

	@RequestMapping(value = "/passengerSearchList", method = RequestMethod.POST)
	public ModelAndView searchList(HttpServletRequest req) {

		ModelAndView mav = new ModelAndView();
		
		ArrayList<BoardP> list = new ArrayList<BoardP>();
		int totalCount;
		String start_posi = req.getParameter("start_posi");
		String end_posi = req.getParameter("end_posi");
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("0", start_posi);
		map.put("1", end_posi);
		list = service.getByStartEnd(map);
		
		totalCount = service.getAll().size();
		mav.setViewName("passenger.tiles");
		mav.addObject("list", list);
		mav.addObject("totalCount", totalCount);
		
		return mav;
	}

	@RequestMapping(value = "/passengerList", method = RequestMethod.GET)
	public ModelAndView list(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		ArrayList<BoardP> list = service.getAll();
		int totalCount = list.size();
		mav.addObject("totalCount", totalCount);
		mav.addObject("list", list);
		mav.setViewName("passenger.tiles");
		return mav;
	}

	@RequestMapping(value = "/passengerList", method = RequestMethod.POST)
	public String listPOST(HttpServletRequest req) {
		return "redirect:passengerList";
	}
	
	@RequestMapping(value = "/passengerDetail", method = RequestMethod.GET)
	public ModelAndView detail(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		int num = Integer.parseInt(req.getParameter("num"));
		BoardP b = service.getByNum(num);

		if(b.getDriver() != null && b.getDriver() != "") {		
			Car c =  cService.getCar(service.getByNum(num).getDriver());
			c.setAge(c.getAge().split("-")[0]);
			mav.addObject("cc", c);
		}
		mav.addObject("b", b);
		mav.setViewName("passengerEditForm.tiles");
		return mav;
	}

	@RequestMapping(value = "/passengerWriteForm", method = RequestMethod.GET)
	public String writeForm() {
		
		return "passengerWriteForm.tiles";
	}

	@RequestMapping(value = "/passengerDelete", method = RequestMethod.POST)
	public String delete(HttpServletRequest req) {

		HttpSession session = req.getSession(false);

		if (session.getAttribute("m") == null) {
			// 여기에 로그인 안된거 반영
		}
		
		int num = Integer.parseInt(req.getParameter("num"));
		service.remove(num);
		
		return "redirect:/passengerList";
	}

	@RequestMapping(value = "/passengerWrite", method = RequestMethod.POST)
	public String write(HttpServletRequest req) {

		HttpSession session = req.getSession(false);

		if (session.getAttribute("m") == null) {
			// 여기에 로그인 안된거 반영
		}
		
		Member m = (Member)session.getAttribute("m");
		
		BoardP b = new BoardP();
		
		b.setNum(0);
		b.setCate(req.getParameter("cate"));
		b.setW_date(null);
		b.setStart_time(req.getParameter("start_time"));
		b.setStart_posi(req.getParameter("start_posi"));
		b.setEnd_posi(req.getParameter("end_posi"));
		b.setStart_x(Double.valueOf(req.getParameter("spx")));
		b.setStart_y(Double.valueOf(req.getParameter("spy")));
		b.setEnd_x(Double.valueOf(req.getParameter("epx")));
		b.setEnd_y(Double.valueOf(req.getParameter("epy")));
		b.setPrice(Integer.parseInt(req.getParameter("price")));
		b.setContent(req.getParameter("content"));
		b.setTitle(req.getParameter("title"));
		b.setSeat(0);
		b.setMaxSeat(1);
		b.setWriter(m.getId());
		b.setDriver("");
		b.setPassenger1(m.getId());
		b.setPassenger2("");
		b.setPassenger3("");
		b.setProfile(m.getProfile());
		
		service.add(b);
		
		return "redirect:/passengerList";
	}

	@RequestMapping(value = "/passengerEdit", method = RequestMethod.POST)
	public String edit(HttpServletRequest req) {

		HttpSession session = req.getSession(false);

		if (session.getAttribute("m") == null) {
			// 여기에 로그인 안된거 반영
		}

		BoardP b = service.getByNum(Integer.parseInt(req.getParameter("num")));
		b.setCate(req.getParameter("cate"));
		b.setStart_time(req.getParameter("start_time"));
		b.setStart_posi(req.getParameter("start_posi"));
		b.setEnd_posi(req.getParameter("end_posi"));
		b.setPrice(Integer.parseInt(req.getParameter("price")));
		b.setContent(req.getParameter("content"));
		b.setTitle(req.getParameter("title"));
		b.setStart_x(Double.valueOf(req.getParameter("spx")));
		b.setStart_y(Double.valueOf(req.getParameter("spy")));
		b.setEnd_x(Double.valueOf(req.getParameter("epx")));
		b.setEnd_y(Double.valueOf(req.getParameter("epy")));
		String writer = req.getParameter("writer");
		Member m = mService.getMember(writer);
		b.setProfile(m.getProfile());
		
		if(b.getPassenger1() == null)
			b.setPassenger1("");
		if(b.getPassenger2() == null)
			b.setPassenger2("");
		if(b.getPassenger3() == null)
			b.setPassenger3("");
		if(b.getDriver() == null)
			b.setDriver("");
		
		if (b.getDriver() == "")
			b.setSeat(0);
		else
			b.setSeat(1);
		
		service.edit(b);
		return "redirect:/passengerList";
	}
}
