package com.kh.brocoli.admin.admin_brand.admin_controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.brocoli.admin.admin_brand.admin_model.admin_service.Admin_BrandService;
import com.kh.brocoli.admin.admin_brand.admin_model.admin_vo.Admin_Brand;

@SessionAttributes("loginUser")
@Controller
public class Admin_BrandController {
	
	@Autowired
	private Admin_BrandService ABService;
	
	@RequestMapping("bManagement.do")
	public ModelAndView brandManagement(ModelAndView mv) {
		
		ArrayList<Admin_Brand> brandList = ABService.brandSelectList();
		
		return null;
	}
}

