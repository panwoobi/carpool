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

	@RequestMapping(value = "/driver", method = RequestMethod.GET)
	public String driver() {
		return "driver.tiles";
	}

	@RequestMapping(value = "/recruit", method = RequestMethod.GET)
	public String recruit() {
		return "recruit.tiles";
	}

	@RequestMapping(value = "/terms", method = RequestMethod.GET)
	public String terms() {
		return "terms.tiles";
	}

	@RequestMapping(value = "/privacy", method = RequestMethod.GET)
	public String privacy() {
		return "privacy.tiles";
	}
	@RequestMapping(value = "/weather", method = RequestMethod.GET)
	public String weather() {
		return "weather.tiles";
	}
	@RequestMapping(value = "/AdminPage", method = RequestMethod.GET)
	public String AdminPage() {
		return "AdminPage.tiles";
	}
	
	@RequestMapping(value = "/survey", method = RequestMethod.GET)
	public String survey() {
		return "survey.tiles";
	}

}