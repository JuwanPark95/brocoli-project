package com.kh.brocoli.member.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.brocoli.member.model.service.WishService;
import com.kh.brocoli.member.model.vo.Wish;

@Controller
public class WishController {
	
	@Autowired
	private WishService wService;
	
	@RequestMapping("wInsert.mn")
	public String wInsert(Wish w, int w_Mno, int w_P_NO) {
		
		System.out.println("인설트 wlist : " + w_Mno);
		System.out.println("인설트 wlist : " + w_P_NO);
		
		w.setW_P_NO(w_Mno);
		w.setW_Mno(w_P_NO);
		
		int result = wService.wInsert(w);
		
		if(result > 0) {
			System.out.println("컨트롤 리절트 : " + result);
			return "redirect:wishList.mn?mNo="+w_Mno;
		}else {
			return "common/errorPage";
		}
	}
	
	@RequestMapping("wishList.mn")
	   public ModelAndView wishList(ModelAndView mv,@RequestParam("mNo") int mNo) {
		  System.out.println(mNo);
	      ArrayList<Wish> wList = wService.wishList(mNo);
	      
	      System.out.println("들어갔나요 ? " + wList);

	      mv.addObject("wList", wList);
	      mv.setViewName("MyWishlist");

	      return mv;
	   }
	
	@RequestMapping("wDelete.mn")
	public String wishDelete(@RequestParam(value = "p_NO") int p_NO) {
		System.out.println("삭제 버튼 눌렸나유? " + p_NO);
		int result = wService.deleteWish(p_NO);
		if(result > 0) {
			System.out.println("삭제 버튼 눌른 훈가유? " + p_NO);
			return "redirect:wishList.mn?mNo=1";
		}else {
			return "common/errorPage";
		}
		

	}
	

}
