package com.kh.brocoli.board.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.brocoli.board.model.service.BoardService;
import com.kh.brocoli.board.model.vo.Notice;

@Controller
@RequestMapping(value="/board/*")
public class BoardController {
	
@RequestMapping("list.mn")
public ModelAndView list() {
	ArrayList<Notice> list = BoardService.listAll();
	
	ModelAndView mv = new ModelAndView();
	mv.setViewName("pages/Board-Notice-List");
	mv.addObject("list",list);
	
	return mv;
}

	

}
