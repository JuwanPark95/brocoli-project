package com.kh.brocoli.board.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.brocoli.board.model.service.QnAService;
import com.kh.brocoli.board.model.vo.PageInfo;
import com.kh.brocoli.board.model.vo.QnA;
import com.kh.brocoli.commons.Pagination;

@Controller
public class QnAController {
	
	@Autowired
	private QnAService qService;

	@RequestMapping("QnAlist.mn")
	public ModelAndView boardlist(ModelAndView mv,
			@RequestParam(value = "currentPage", required = false, defaultValue = "1") int currentPage) {
		System.out.println("커런트 페이지유 : " + currentPage);

		int listCount = qService.getListCount();

		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);

		ArrayList<QnA> list = qService.selectList(pi);

		System.out.println("listCount : " + listCount);
		System.out.println("pi : " + pi);
		System.out.println("list : " + list);

		mv.addObject("list", list);
		mv.addObject("pi", pi);
		mv.setViewName("Board-QnA-List");

		return mv;
	}
}
