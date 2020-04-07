package com.kh.brocoli.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.brocoli.admin.model.service.AdminBrandService;
import com.kh.brocoli.product.model.vo.Brand;

@SessionAttributes("loginUser")
@Controller
public class AdminBrandController {

	@Autowired
	private AdminBrandService ABService;
	
	@RequestMapping("brandManagement.ad")
	public ModelAndView brandManagement(ModelAndView mv) {
		
		ArrayList<Brand> BrandList = ABService.selectBrandList();
		
		mv.addObject("BrandList",BrandList);
		mv.setViewName("brand-management");
		
		System.out.println("???"+mv);
		return mv;
	}
}
