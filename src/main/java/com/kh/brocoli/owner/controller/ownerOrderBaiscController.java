package com.kh.brocoli.owner.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.brocoli.member.model.vo.Orders;
import com.kh.brocoli.owner.model.service.ownerOrderService;
import com.kh.brocoli.product.model.vo.Statistics;

@SessionAttributes("loginUser")
@Controller
public class ownerOrderBaiscController {

	@RequestMapping("goToHome.ow")
	public String gotohome() {
		return "../owner";
	}
	
	@RequestMapping("Cropper.ow")
	public String Cropper() {
		return "Cropper";
	}
	
	@RequestMapping("color_picker.ow")
	public String color_picker() {
		return "color-picker";
	}
	

	
	
	
	
}
