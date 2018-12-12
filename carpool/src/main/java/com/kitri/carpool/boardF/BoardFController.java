package com.kitri.carpool.boardF;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoardFController {

	@Resource(name = "boardFService")
	private BoardFService service;

	public void setService(BoardFService service) {
		this.service = service;
	}
	
	@RequestMapping(value = "/boardFAdd", method = RequestMethod.GET)
	public String boardFAdd() {
		System.out.println("컨트롤러입니다.");
		return "boardFAdd.tiles";
	}

	@RequestMapping(value = "/boardFAdd", method = RequestMethod.POST)
	public String add(BoardF b) {
		service.add(b);
		return "redirect:/boardFList";
	}
		
	
	
	@RequestMapping("/boardFList")
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView("boardFList.tiles");
		ArrayList<BoardF> list = service.getAll();
		System.out.println(list);
		mav.addObject("list", list);
		return mav;
	}

	@RequestMapping("/boardFEditForm")
	public ModelAndView editForm(@RequestParam(value = "num") int num) {
		ModelAndView mav = new ModelAndView("boardFEditForm.tiles");
		BoardF b = service.gettByNum(num);
		mav.addObject("b", b);
		return mav;

	}

	
	
	
	@RequestMapping("/boardFEdit")
	public String edit(BoardF b) {
		service.edit(b);
		return "redirect:/boardFList";
	}

	@RequestMapping("/boardFDel")
	public String del(@RequestParam(value = "num") int num) {
		service.remove(num);
		return "redirect:/boardFList";
	}

}
