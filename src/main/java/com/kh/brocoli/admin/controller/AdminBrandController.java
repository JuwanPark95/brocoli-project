package com.kh.brocoli.admin.controller;

import java.sql.Date;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.brocoli.admin.model.service.AdminBrandService;
import com.kh.brocoli.product.model.vo.Brand;

@SessionAttributes("loginUser")
@Controller
public class AdminBrandController {

   @Autowired
   private AdminBrandService ABService;
   
	/**
	 * 작성자 : 신은지
	 * 1.브랜드 등록 페이지 이동
	 * @return
	 */
	@RequestMapping("brand-enroll.ad")
	public String brandEnroll() {
		return "brand-enroll";
	}
   
   /**
    * 작성자 : 신은지
    * 2. 브랜드 list
    * @param mv
    * @return
    */
   @RequestMapping("brandManagement.ad")
   public ModelAndView brandManagement(ModelAndView mv) {
      
      ArrayList<Brand> BrandList = ABService.selectBrandList();
      
      mv.addObject("BrandList",BrandList);
      mv.setViewName("brand-management");
      
      return mv;
   }
   
	/**
	 * 작성자 : 신은지
	 * 3. 브랜드 상세보기
	 * @param mv
	 * @param brand_NO
	 * @return
	 */
   @RequestMapping("brandDetail.ad")
   public ModelAndView brandDetail(ModelAndView mv, @RequestParam("brand_NO") int brand_NO) {
      
	   Brand b = ABService.selectBrandDetail(brand_NO);
      
	   if(b != null) {
		   mv.addObject("b",b);
		   mv.setViewName("brand-detail");
	   }
	   
      return mv;
   }
   
   
	/**
	 * 작성자: 신은지
	 * 4. 브랜드 수정
	 * @param mv
	 * @param b
	 * @return
	 */
   @RequestMapping("brandUpdate.ad")
   public ModelAndView brandUpdate(ModelAndView mv,Brand b) {
	   System.out.println(b);
	   
//	   int result = ABService.brandUpdate(b);
//
//	   if(result>0) {
//		   mv.setViewName("redirect:brandManagement.ad");
//	   }
	   
	   return mv;
   }
   
	/*
	 * @RequestMapping("memberDelete.ad") public ModelAndView
	 * brandDelete(ModelAndView mv,@RequestParam("brand_NO") int brand_NO) {
	 * 
	 * int result = ABService.brandDelte(brand_NO);
	 * 
	 * if(result>0) { mv.setViewName("redirect:brandManagement.ad"); } }
	 */
   
}