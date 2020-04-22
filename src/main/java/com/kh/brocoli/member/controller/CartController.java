package com.kh.brocoli.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.brocoli.member.model.service.CartService;
import com.kh.brocoli.member.model.vo.Cart;

@Controller
public class CartController {
	
	@Autowired
	private CartService cService;
	
	@RequestMapping("cInsert.mn")
	public String cInsert(Cart c) {
		
		System.out.println("장바구니 인설트 회원 : " + c.getCt_Mno());
		System.out.println("장바구니 인설트 상품 : " + c.getCt_P_NO());
		System.out.println("장바구니 인설트 옵션1 : " + c.getCt_Option_1());
		System.out.println("장바구니 인설트 옵션2 : " + c.getCt_Option_2());
		System.out.println("장바구니 인설트 갯수 : " + c.getCt_Amount());
		
		c.setCt_Mno(c.getCt_Mno());
		c.setCt_P_NO(c.getCt_P_NO());
		c.setCt_Option_1(c.getCt_Option_1());
		c.setCt_Option_2(c.getCt_Option_2());
		c.setCt_Amount(c.getCt_Amount());
		
		int result = cService.cInsert(c);
		
		if(result > 0) {
			System.out.println("장바구니 리절트 : " + result);
			return "";
		}else {
			return "common/errorPage";
		}
		
	}
	

}
