package com.kh.brocoli.owner.controller;

import org.springframework.web.bind.annotation.RequestMapping;

public class ownerController {

	@RequestMapping("ownerPage")
	public String ownerPage() {
		
		
		
		return "redirect:index-owner.jsp";
	}
	
	
}
