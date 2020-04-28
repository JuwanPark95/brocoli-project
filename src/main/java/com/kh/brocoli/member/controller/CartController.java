package com.kh.brocoli.member.controller;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.brocoli.member.model.service.CartService;
import com.kh.brocoli.member.model.vo.Cart;
import com.kh.brocoli.product.model.vo.ProductDetail;


@Controller
public class CartController {
	
	@Autowired
	private CartService cService;
	
	@RequestMapping("cInsert.mn")
	public String cInsert(Cart c, ProductDetail pc, int ct_Mno, int ct_P_NO) {
		
		System.out.println("ProductDetail : " + pc);
		
		System.out.println("회원 Mno : " + ct_Mno);
		System.out.println("장바구니 인설트 상품 : " + ct_P_NO);
		System.out.println("장바구니  상품 : " + ct_P_NO);		
		
		System.out.println("장바구니 인설트 옵션1 : " + pc.getOption_1());
		System.out.println("장바구니 인설트 옵션2 : " + pc.getOption_2());
		System.out.println("장바구니 개수 : " + pc.getN_product());
		
		c.setCt_P_NO(ct_P_NO);
		c.setCt_Option_1(pc.getOption_1());
		c.setCt_Option_2(pc.getOption_2());
		c.setCt_Amount(pc.getN_product());
		c.setCt_Mno(ct_Mno);
			  
		 int result = cService.cInsert(c); 
		  
		 if(result > 0) {
			 System.out.println("장바구니 컨트롤 리절트 : " + result); 
			 	return "redirect:productDetail.mn?p_NO=" + ct_P_NO;
		  
		  }else { 
			  return "common/errorPage"; }

	}
	
	@RequestMapping("cList.mn")
	public ModelAndView cartList(ModelAndView mv, @RequestParam("ct_Mno") int ct_Mno) {
		
		System.out.println("리스트 회원번호 : " + ct_Mno);
		
		ArrayList<Cart> cList = cService.cartList(ct_Mno);
		
		System.out.println("리스트 들어갔 ? " + cList);
		
		mv.addObject("cList", cList);
		mv.setViewName("MyCart");
		
		return mv;
	}
	
	@RequestMapping("cDelete.mn")
	public String cartDelete(@RequestParam(value="ct_NO") int ct_NO, int ct_Mno) {
		
		System.out.println("삭제 버튼 눌렸? " + ct_NO); 
		int result = cService.deleteCart(ct_NO);
		if(result > 0) {
			System.out.println("삭제버튼 눌른 후? " + ct_NO);
			return "redirect:cList.mn?ct_Mno="+ct_Mno;
		}else {
			return"common/errorPage";
		}
	}
	
	@RequestMapping("cOrderAdd.mn")
	public ModelAndView cOrderAdd(ModelAndView mv, @RequestParam("ct_Mno") int ct_Mno,
												   @RequestParam("op_NO") int op_NO) {
		
		System.out.println("주문을 해봅시다." + ct_Mno);

		mv.setViewName("My-Track-List");
		
		return mv;
	}
}
