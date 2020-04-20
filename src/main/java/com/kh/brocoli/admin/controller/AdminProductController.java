package com.kh.brocoli.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.brocoli.admin.model.service.AdminProductService;
import com.kh.brocoli.product.model.vo.Product;
import com.kh.brocoli.product.model.vo.Product_Option;

@Controller
@SessionAttributes("loginUser")
public class AdminProductController {

	@Autowired
	private AdminProductService APService;
	
	/**
	    * 작성자 : 신은지
	    * 1. 상품 list
	    * @param mv
	    * @return
	    */
	    @RequestMapping("product-management.ad")
	    public ModelAndView productList(ModelAndView mv) {
	      
	      ArrayList<Product> productList = APService.selectProductList();
	      mv.addObject("productList",productList);
	      mv.setViewName("product-management");
	      
	      return mv;
	    }
	   
	   /**
		 * 작성자 : 신은지
		 * 2. 브랜드 상세보기
		 * @param mv
		 * @param brand_NO
		 * @return
		 */
	    @RequestMapping("productDetail.ad")
	    public ModelAndView productDetail(ModelAndView mv, @RequestParam("p_NO") int p_NO) {
		   ArrayList<Product> productDetail = APService.selectproductDetail(p_NO);
	      
		   if(productDetail != null) {
			   mv.addObject("p",productDetail);
			   mv.setViewName("product-management-detail");
		   }
		   
	      return mv;
	    }
	   
		 /**
		  *  작성자 : 신은지
		  *  3. 상품 옵션 list
		 * @param mv
		 * @param p_NO
		 * @return
		 */
		@RequestMapping("stock-management.ad")
	    public ModelAndView stockManagement(ModelAndView mv) {
		   ArrayList<Product> productOptionList = APService.selectStockManagement();
	      
		   if(productOptionList != null) {
			   mv.addObject("productOptionList",productOptionList);
			   mv.setViewName("product-stock");
		   }
		   
	       return mv;
	    }
	   
}



