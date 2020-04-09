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
@SessionAttributes
public class AdminOrdersController {

	@Autowired
	private AdminOrdersService AOService;
	
	@RequestMapping("order-status.ad")
	public ModelAndView ordersStatus(ModelAndView mv) {
		
		ArrayList<Orders> ordersList = AOService.selectOrdersList();
		
		return null;
	}
}
