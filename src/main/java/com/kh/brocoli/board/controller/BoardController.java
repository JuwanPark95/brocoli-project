package com.kh.brocoli.board.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
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
		
		System.out.println("listCount : " + listCount);
		System.out.println("pi : " + pi);
		System.out.println("list : " + list);
		
		mv.addObject("list",list);
		mv.addObject("pi",pi);
		mv.setViewName("Board-Notice-List");
		
		return mv;
	}
	
	@RequestMapping("bnInsertView.mn")
	public String boardInsertView() {
		return "Board-Notice-Insert";
	}
	
	/**
	 * 게시판 삽입
	 * @param n
	 * @param request
	 * @param file
	 * @return
	 */
	@RequestMapping("bnInsert.mn")
	public String insertBoard(Notice n, HttpServletRequest request,
					@RequestParam(name="uploadFile", required=false) MultipartFile file) {
		if(!file.getOriginalFilename().equals("")) {
			
			String n_Img_ReName = saveFile(file, request);
			
			if(n_Img_ReName != null) {
				n.setN_Img(file.getOriginalFilename());
				n.setN_Img_ReName(n_Img_ReName);
			}
		}
		
		System.out.println("Controller insert : "+n);
		
		int result = bnService.insertBoardNotice(n);
		
		if(result > 0) {
			return "redirect:bnlist.mn";
		}else {
			return "common/errorPage";
		}
	}	
	
	/**
	 * 파일 업로드
	 * @param file
	 * @param request
	 * @return
	 */
	private String saveFile(MultipartFile file, HttpServletRequest request) {
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String savePath = root + "\\bnuploadRiles";
		
		File folder = new File(savePath);
		
		if(!folder.exists()) {
			folder.mkdir();
		}
		
		String n_Img = file.getOriginalFilename();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String ReName = sdf.format(new java.sql.Date(System.currentTimeMillis())) + "."
					+ n_Img.substring(n_Img.lastIndexOf(".")+1);
		
		System.out.println("n_Img_ReName : " + ReName);
		
		String renamePath = folder + "\\" + ReName;
		
		try {
			file.transferTo(new File(renamePath)); // 이때 전달받은 file이 rename명으로 저장이된다.
		}catch (Exception e) {
			System.out.println("파일 전송 에러 : " + e.getMessage());
		} 
		
		return ReName;
		
	}

	/**
	 * 게시판 디테일
	 * @param mv
	 * @param n_No
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("bnDetail.mn")
	public ModelAndView boardDetail(ModelAndView mv, int n_No,
			@RequestParam(value="currentPage",required=false,defaultValue="1") int currentPage) {
		
		Notice n = bnService.selectBoardNotice(n_No);
		
		if(n != null) {
			mv.addObject("n",n)
			.addObject("currentPage", currentPage)
			.setViewName("Board-Notice-Detail");
		}else {
			mv.addObject("msg","게시글 상세보기 실패")
			.setViewName("common/errorPage");
		}
		
		return mv;
		
	}
	
	/*
	 * @RequestMapping("bnupdateView.mn") public ModelAndView
	 * boardUpdateView(ModelAndView mv, int n_No) {
	 * mv.addObject("n",bnService.selectUpdateBoard(n_No)) .setViewName(""); }
	 */

}
