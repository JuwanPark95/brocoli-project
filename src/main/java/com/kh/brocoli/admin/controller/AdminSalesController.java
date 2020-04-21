package com.kh.brocoli.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.brocoli.admin.model.service.AdminOrdersService;
import com.kh.brocoli.admin.model.service.AdminSalesService;
import com.kh.brocoli.member.model.vo.Orders;

@Controller
@SessionAttributes("loginUser")
public class AdminSalesController {
	
	@Autowired
	private AdminSalesService ASService;
	
	/**
	 * 작성자 : 신은지
	 * 1. 매출검색 목록 list
	 * @param mv
	 * @return
	 */
	@RequestMapping("sales-management.ad")
	public ModelAndView salesManagement(ModelAndView mv) {
		
		ArrayList<Orders> salesList = ASService.selectSalesList();
		
		mv.addObject("salesList",salesList);
		mv.setViewName("sales-management");
		
		return mv;
	}

}
