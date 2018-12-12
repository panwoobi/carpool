package com.kitri.carpool.boardN;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class BoardNController {
	
	@Resource(name="boardNService")
	private BoardNService service;
	
	public void setService(BoardNService service) {
		this.service = service;
	}

	@RequestMapping(value = "/noticeWrite", method = RequestMethod.GET)
	public String boardNAdd() {
		return "noticeWriteForm.tiles";
	}
	
	@RequestMapping(value = "/noticeWrite", method = RequestMethod.POST)
	public String add(BoardN b) {
		service.add(b);
		return "redirect:/notice";
	}
	
	@RequestMapping("/notice")
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView("notice.tiles");
		ArrayList<BoardN> list = service.getAll();
		System.out.println(list);
		mav.addObject("list", list);
		return mav;
	}

	@RequestMapping("/noticeEditForm")
	public ModelAndView editForm(@RequestParam(value = "num") int num) {
		ModelAndView mav = new ModelAndView("noticeEditForm.tiles");
		BoardN b = service.gettByNum(num);
		mav.addObject("b", b);
		return mav;

	}

	@RequestMapping("/noticeEdit")
	public String edit(BoardN b) {
		service.edit(b);
		return "redirect:/notice";
	}

	@RequestMapping("/noticeDel")
	public String del(@RequestParam(value = "num") int num) {
		service.remove(num);
		return "redirect:/notice";
	}

}
