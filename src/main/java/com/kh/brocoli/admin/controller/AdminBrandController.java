package com.kh.brocoli.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
    * 1. 브랜드 list
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
   
   @RequestMapping("brandDetail.ad")
   public ModelAndView brandDetail(ModelAndView mv, @RequestParam("b_Name") String b_Name) {
      
      
      
      return mv;
   }
}