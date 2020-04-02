package com.kh.admin.admin_brand.admin_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.admin.admin_brand.admin_model.admin_service.Admin_BrandService;

@Controller
public class Admin_BrandController {
	
	@Autowired
	private Admin_BrandService ABService;
	
	@RequestMapping("bManagement.do")
	public ModelAndView brandManagement(ModelAndView mv
										) {
		return null;
	}
}

