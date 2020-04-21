package com.kh.brocoli.owner.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.brocoli.member.model.vo.Orders;
import com.kh.brocoli.owner.model.service.ownerBannerService;
import com.kh.brocoli.owner.model.service.ownerOrderService;
import com.kh.brocoli.product.model.vo.Statistics;

@SessionAttributes("loginUser")
@Controller
public class ownerBannerController {

	@Autowired  ownerBannerService oService;
	
	@RequestMapping("banner_Tip.ow")
	public String banner_Tip() {
		return "banner-Tip";
	}
	
	@RequestMapping("banner_sale.ow")
	public String banner_sale() {
		return "banner-sale";
	}
	
	@RequestMapping("banner_result.ow")
	public String banner_result() {
		return "banner-result";
	}
}
