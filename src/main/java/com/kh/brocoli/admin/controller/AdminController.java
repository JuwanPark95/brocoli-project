package com.kh.brocoli.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.brocoli.member.model.service.MemberService;

@SessionAttributes("loginUser")
@Controller
public class AdminController {
	
	@RequestMapping("admin.ad")
	public String AdminMain() {
		return "admin";
	}
	
//	@RequestMapping("memberManagement.ad")
//	public String memberManagement() {
//		return "member-management";
//	}
	
	@RequestMapping("brand-management.ad")
	public String brandManagement() {
		return "brand-management";
	}
	
	@RequestMapping("brand-owner-contact.ad")
	public String brandOwnerContact() {
		return "brand-owner-contact";
	}
	
	@RequestMapping("order-status.ad")
	public String orderStatus() {
		return "order-status";
	}
	
	@RequestMapping("order-exchange.ad")
	public String orderExchange() {
		return "order-exchange";
	}
	
	@RequestMapping("product-management.ad")
	public String productManagement() {
		return "product-management";
	}
	
	@RequestMapping("product-stop.ad")
	public String productStop() {
		return "product-stop";
	}
	
	@RequestMapping("sales-date.ad")
	public String salesDate() {
		return "sales-date";
	}
	
	@RequestMapping("sales-management.ad")
	public String salesManagement() {
		return "sales-management";
	}
	
	@RequestMapping("magazine-management.ad")
	public String magazineManagement() {
		return "magazine-management";
	}

	@RequestMapping("magazine-upload.ad")
	public String magazineUpload() {
		return "magazine-upload";
	}
	
	
	@RequestMapping("board-notice.ad")
	public String boardNotice() {
		return "board-notice";
	}
	
	@RequestMapping("board-questions.ad")
	public String boardQuestions() {
		return "board-questions";
	}
	
	@RequestMapping("advertisement-auction.ad")
	public String advertisementAuction() {
		return "advertisement-auction";
	}
	
	@RequestMapping("advertisement-apply.ad")
	public String advertisementApply() {
		return "advertisement-apply";
	}
	
	@RequestMapping("setting.ad")
	public String setting() {
		return "setting";
	}
}
