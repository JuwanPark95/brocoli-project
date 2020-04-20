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
	public String wInsert(Wish w, int mNo, int pNo) {
		
		System.out.println("인설트 wlist : " + pNo);
		System.out.println("인설트 wlist : " + mNo);
		
		w.setW_P_NO(pNo);
		w.setW_Mno(mNo);
		
		int result = wService.wInsert(w);
		
		if(result > 0) {
			System.out.println("컨트롤 리절트 : " + result);
			return "redirect:wishList.mn?mNo="+mNo;
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
	public String wishDelete(Model model, @RequestParam("mNo") int mNo, HttpServletRequest request) {
		wService.deleteWish(mNo);
		System.out.println("삭제 버튼 눌렸나유? " + mNo);
		return "redirect:wishList.mn";
	}
	

}
