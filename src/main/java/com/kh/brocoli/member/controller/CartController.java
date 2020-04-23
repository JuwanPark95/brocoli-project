package com.kh.brocoli.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.brocoli.member.model.service.CartService;
import com.kh.brocoli.member.model.vo.Cart;
import com.kh.brocoli.product.model.vo.ProductDetail;

@Controller
public class CartController {
	
	@Autowired
	private CartService cService;
	
	@RequestMapping("cInsert.mn")
	public String cInsert(ProductDetail pc) {
		
		
		System.out.println("장바구니 인설트 상품 : " + pc.getP_NO());
		System.out.println("장바구니 인설트 옵션1 : " + pc.getOption_1());
		System.out.println("장바구니 인설트 옵션2 : " + pc.getOption_2());

		
		
		pc.setP_NO(pc.getP_NO());
		pc.setOption_1(pc.getOption_1());
		pc.setOption_2(pc.getOption_2());

		
		int result = cService.cInsert(pc);
		
		if(result > 0) {
			System.out.println("장바구니 리절트 : " + result);
			return "";
		}else {
			return "common/errorPage";
		}
		
	}
	

}
