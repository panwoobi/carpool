package com.kitri.carpool.car;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;



@Controller
public class CarController {

	@Resource(name="carService")
	private CarService service;
	
	public void setService(CarService service) {
		this.service = service;
	}
}
