package com.kitri.carpool.car;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kitri.carpool.member.Member;



@Controller
public class CarController {

	@Resource(name="carService")
	private CarService service;
	
	public void setService(CarService service) {
		this.service = service;
	}
	
	@RequestMapping("/enrollCar")
	public String enrollCar(Car c, HttpServletRequest req) {
		System.out.println(c);
		service.insertCar(c);
		HttpSession session = req.getSession(false);
		session.setAttribute("c", c);
		return "/userMenu/driver.tiles";
	}
	
	@RequestMapping("/deleteCar")
	public String deleteCar(HttpServletRequest req) {

		HttpSession session = req.getSession(false);
		session.removeAttribute("c");
		Member m  = (Member) session.getAttribute("m");
		service.delCar(m.getId());
		
		return "/userMenu/driver.tiles";
	}
	
}
