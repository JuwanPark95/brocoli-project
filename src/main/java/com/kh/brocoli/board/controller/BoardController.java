package com.kh.brocoli.board.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.brocoli.board.model.service.BoardService;
import com.kh.brocoli.board.model.vo.Notice;
import com.kh.brocoli.board.model.vo.Notice_PageInfo;
import com.kh.brocoli.board.model.vo.Notice_Pagination;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService bnService;
	
/**
 * 페이징 처리
 * @param mv
 * @param currentPage
 * @return
 */
@RequestMapping("bnlist.mn")
public ModelAndView boardlist(ModelAndView mv,
							@RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage){
	System.out.println("커런트 페이지유 : " + currentPage);
	
	int listCount = bnService.getListCount();
	
	Notice_PageInfo pi = Notice_Pagination.getPageInfo(currentPage, listCount);
	
	ArrayList<Notice> list = bnService.selectList(pi);
	
	mv.addObject("list",list);
	mv.addObject("pi",pi);
	mv.setViewName("page/Board-Notice-List");
	
	return mv;
}

	

}
