package com.kh.brocoli.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.brocoli.admin.model.service.AdminOrdersService;
import com.kh.brocoli.member.model.vo.Orders;

@Controller
@SessionAttributes("loginUser")
public class AdminOrdersController {

	@Autowired
	private AdminOrdersService AOService;
	
	/**
	 * 작성자 : 신은지
	 * 1. 주문현황 목록 list
	 * @param mv
	 * @return
	 */
	@RequestMapping("orderStatus.ad")
	public ModelAndView ordersStatus(ModelAndView mv) {
		
		ArrayList<Orders> ordersList = AOService.selectOrdersList();
		
		mv.addObject(ordersList);
		mv.setViewName("order-status");
		return mv;
	}
}
