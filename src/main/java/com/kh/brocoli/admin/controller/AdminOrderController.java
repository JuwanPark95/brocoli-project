package com.kh.brocoli.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.brocoli.admin.model.service.AdminOrderService;
import com.kh.brocoli.member.model.vo.Orders;


@Controller
@SessionAttributes
public class AdminOrderController {

	@Autowired
	private AdminOrderService AOService;
	
	@RequestMapping("order-status.ad")
	public ModelAndView orderStatus(ModelAndView mv) {
		
		ArrayList<Orders> orderList = AOService.selectOrderList();
		
		return null;
	}
}
