package com.kh.brocoli.owner.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.brocoli.owner.model.service.ownerReviewService;
import com.kh.brocoli.product.model.vo.Review;

@Controller
@SessionAttributes("loginUser")
public class ownerReviewController {
	
	
	@Autowired ownerReviewService oService;
	
	
	@RequestMapping("noReadReview.ow")
	public ModelAndView noReadReview(ModelAndView mv,int bNO) {
		
		ArrayList<Review> rv = oService.noReadReviewSelect(bNO);
		
		if(rv != null) {
			mv.addObject("list",rv);
			mv.setViewName("review-management");
		}else {
			mv.setViewName("404-Page");
		}
		
		return mv;
	}

	
	
}