package com.kitri.carpool;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main() {
		return "main.tiles";
	}

	@RequestMapping(value = "/intro", method = RequestMethod.GET)
	public String intro() {
		
		return "intro.tiles";
	}
	
	@RequestMapping(value = "/recruit", method = RequestMethod.GET)
	public String recruit() {
		
		return "recruit.tiles";

	}	
}