package com.kh.brocoli.owner.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.brocoli.member.model.vo.Orders;
import com.kh.brocoli.owner.model.service.ownerOrderService;
import com.kh.brocoli.product.model.vo.Statistics;

@SessionAttributes("loginUser")
@Controller
public class ownerOrderController {

	
	@Autowired  ownerOrderService oService;
	
	
	@RequestMapping("incomeDaySelect.ow")
	public ModelAndView incomeDaySelect(ModelAndView mv, int Brand_NO) {
		
		ArrayList<Statistics> olist = oService.incomeDaySelect(Brand_NO);

		if(olist != null) {
			mv.addObject("olist",olist);
			mv.setViewName("income-day");
		}else {
			mv.setViewName("404-Page");
		}
		
		return mv;
	}
	
	@RequestMapping("incomeMonthSelect.ow")
	public ModelAndView incomeMonthSelect(ModelAndView mv, int Brand_NO) {
		
		ArrayList<Statistics> olist = oService.incomeMonthSelect(Brand_NO);

		if(olist != null) {
			mv.addObject("olist",olist);
			mv.setViewName("income-month");
		}else {
			mv.setViewName("404-Page");
		}
		
		return mv;
	}
	
	@RequestMapping("incomeYearSelect.ow")
	public ModelAndView incomeYearSelect(ModelAndView mv, int Brand_NO) {
		
		ArrayList<Statistics> olist = oService.incomeYearSelect(Brand_NO);

		if(olist != null) {
			mv.addObject("olist",olist);
			mv.setViewName("income-year");
		}else {
			mv.setViewName("404-Page");
		}
		
		return mv;
	}

	
	
	
}
