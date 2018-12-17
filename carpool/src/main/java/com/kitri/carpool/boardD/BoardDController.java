package com.kitri.carpool.boardD;

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
public class BoardDController {
	
	@Resource(name="boardDService")
	private BoardDService service;
	
	@Resource(name="carService")
	private CarService cService;
	
	@Resource(name="memberService")
	private MemberService mService;
		
	public void setService(BoardDService service, CarService cService, MemberService mService) {
		this.service = service;
		this.cService = cService;
		this.mService = mService;
	}

	protected BoardD sortPassenger(BoardD b) {

		int seat = 0;

		if (b.getPassenger1() != "")
			seat++;
		if (b.getPassenger2() != "")
			seat++;
		if (b.getPassenger3() != "")
			seat++;

		if (b.getPassenger1() == "") {
			b.setPassenger1(b.getPassenger2());
			b.setPassenger2(b.getPassenger3());
			b.setPassenger3("");
		}

		if (b.getPassenger2() == "") {
			b.setPassenger2(b.getPassenger3());
			b.setPassenger3("");
		}

		b.setSeat(seat);

		return b;
	}

	
	@RequestMapping(value = "/driverRequestAdd", method = RequestMethod.POST)
	public String driverRequestAdd(HttpServletRequest req) {
		HttpSession session = req.getSession(false);
		int num = Integer.parseInt(req.getParameter("num"));
		BoardD b = service.getByNum(num);

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

		if (b.getMaxSeat() > 0 && b.getSeat() == 0 && b.getPassenger1() == "") {
			b.setPassenger1(m.getId());
			b.setSeat(1);
		} else if (b.getMaxSeat() > 1 && b.getSeat() == 1 && b.getPassenger2() == "") {
			b.setPassenger2(m.getId());
			b.setSeat(2);
		} else if (b.getMaxSeat() > 2 && b.getSeat() == 2 && b.getPassenger3() == "") {
			b.setPassenger3(m.getId());
			b.setSeat(3);
		}

		b = sortPassenger(b);

		service.editPassenger(b);

		return "redirect:driverDetail?num=" + b.getNum();
	}
	
	@RequestMapping(value = "/driverRequestDel", method = RequestMethod.POST)
	public String driverRequestDel(HttpServletRequest req) {
		HttpSession session = req.getSession(false);
		int num = Integer.parseInt(req.getParameter("num"));
		BoardD b = service.getByNum(num);
		
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


		if (b.getPassenger1().equals(m.getId())) {
			b.setPassenger1(b.getPassenger2());
			b.setPassenger2(b.getPassenger3());
			b.setPassenger3("");
			b.setSeat(b.getSeat() - 1);
		} else if (b.getPassenger2().equals(m.getId())) {
			b.setPassenger2(b.getPassenger3());
			b.setPassenger3("");
			b.setSeat(b.getSeat() - 1);
		} else if (b.getPassenger3().equals(m.getId())) {
			b.setPassenger3("");
			b.setSeat(b.getSeat() - 1);
		}

		b = sortPassenger(b);

		service.editPassenger(b);

		return "redirect:driverDetail?num=" + b.getNum();
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
	public ModelAndView detail(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		int num = Integer.parseInt(req.getParameter("num"));
		BoardD b = service.getByNum(num);
		
		Car c =  cService.getCar(service.getByNum(num).getWriter());

		if(c != null) {
			c.setAge(c.getAge().split("-")[0]);
			mav.addObject("cc", c);
		}
		mav.addObject("b", b);
		mav.setViewName("driverEditForm.tiles");
		return mav;
	}

	@RequestMapping(value = "/driverWriteForm", method = RequestMethod.GET)
	public String writeForm() {
		
		return "driverWriteForm.tiles";
	}

	@RequestMapping(value = "/driverDelete", method = RequestMethod.POST)
	public String delete(HttpServletRequest req) {

		HttpSession session = req.getSession(false);

		if (session.getAttribute("m") == null) {
			// 여기에 로그인 안된거 반영
		}
		
		int num = Integer.parseInt(req.getParameter("num"));
		service.remove(num);
		
		return "redirect:/driverList";
	}

	@RequestMapping(value = "/driverWrite", method = RequestMethod.POST)
	public String write(HttpServletRequest req) {

		HttpSession session = req.getSession(false);

		if (session.getAttribute("m") == null) {
			// 여기에 로그인 안된거 반영
		}
		
		Member m = (Member)session.getAttribute("m");
		
		BoardD b = new BoardD();
		
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
		b.setMaxSeat(Integer.parseInt(req.getParameter("maxSeat")));
		b.setWriter(m.getId());
		b.setDriver(m.getId());
		b.setPassenger1("");
		b.setPassenger2("");
		b.setPassenger3("");
		b.setProfile(m.getProfile());
		
		service.add(b);
		
		return "redirect:/driverList";
	}

	@RequestMapping(value = "/driverEdit", method = RequestMethod.POST)
	public String edit(HttpServletRequest req) {

		HttpSession session = req.getSession(false);

		if (session.getAttribute("m") == null) {
			// 여기에 로그인 안된거 반영
		}

		BoardD b = service.getByNum(Integer.parseInt(req.getParameter("num")));
		b.setCate(req.getParameter("cate"));
		b.setStart_time(req.getParameter("start_time"));
		b.setStart_posi(req.getParameter("start_posi"));
		b.setEnd_posi(req.getParameter("end_posi"));
		b.setPrice(Integer.parseInt(req.getParameter("price")));
		b.setContent(req.getParameter("content"));
		b.setTitle(req.getParameter("title"));
		b.setMaxSeat(Integer.parseInt(req.getParameter("maxSeat")));
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
		
		service.edit(b);
		return "redirect:/driverList";
	}
}
