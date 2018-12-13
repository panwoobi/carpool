package com.kitri.carpool.boardD;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kitri.carpool.member.Member;

@Controller
public class BoardDController {
	
	@Resource(name="boardDService")
	private BoardDService service;
	
	public void setService(BoardDService service) {
		this.service = service;
	}
	
	@RequestMapping(value = "/driverList", method = RequestMethod.GET)
	public String driver() {
		
		return "driver.tiles";
	}

	@RequestMapping(value = "/driverWriteForm", method = RequestMethod.GET)
	public String writeForm() {
		
		return "driverWriteForm.tiles";
	}

	@RequestMapping(value = "/driverWrite", method = RequestMethod.POST)
	public String write(HttpServletRequest request, HttpServletResponse response) {

//		MemberService mservice = new MemberServiceImpl(new MemberDaoImpl());

		HttpSession session = request.getSession(false);

//		if (session.getAttribute("m") == null) {
//			request.setAttribute("msg", "占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙퓸占쏙옙占쏙옙求占�. 占싸깍옙占쏙옙占쏙옙 占쏙옙占쌍쇽옙占쏙옙.");
//			RequestDispatcher rd = request.getRequestDispatcher("/msg");
//			if (rd != null) {
//				try {
//					rd.forward(request, response);
//				} catch (ServletException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				} catch (IOException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}
//			}
//		}
		Member m = (Member)session.getAttribute("m");
		
		String cate = request.getParameter("cate");
		String startTime = request.getParameter("startTime");
		String startPosi = request.getParameter("startPosi");
		String endPosi = request.getParameter("endPosi");
		int price = Integer.parseInt(request.getParameter("price"));
		String content = request.getParameter("content");
		String title = request.getParameter("title");
		int maxSeat = Integer.parseInt(request.getParameter("maxSeat"));
		int seat = 0;
//		String path = "";

		Double s_x = Double.valueOf(request.getParameter("spx"));
		Double s_y = Double.valueOf(request.getParameter("spy"));
		Double e_x = Double.valueOf(request.getParameter("epx"));
		Double e_y = Double.valueOf(request.getParameter("epy"));
				
		BoardD b = new BoardD(0, cate, null, startTime, startPosi, endPosi, s_x, s_y, e_x, e_y, price, content, title, seat, maxSeat, "driver", "driver", "passenger1", "passenger2", "passenger3", "ㅎ");

		//		String profile = m.getProfile();
//		BoardD b = new BoardD(0, cate, null, startTime, startPosi, endPosi, s_x, s_y, e_x, e_y, price, content, title, seat, maxSeat, m.getId(), m.getId(), null, null, null, profile);
		System.out.println(b);
		service.add(b);
		
//		if(service.add(b)) {
//			path = request.getContextPath() + "/driverList";
//			response.sendRedirect(path);
//		} else {
//			request.setAttribute("msg", "占쌜억옙占썩에 占쏙옙占쏙옙占싹울옙占쏙옙占싹댐옙.");
//			RequestDispatcher rd = request.getRequestDispatcher("/msg");
//			if (rd != null) {
//				rd.forward(request, response);
//			}
//		}
		return "redirect:/driverList";
	}
}
