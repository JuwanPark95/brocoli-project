package com.kh.brocoli.owner.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.brocoli.owner.model.service.ownerAuctionService;

@Controller
@SessionAttributes("loginUser")
public class ownerAuctionController {

	@Autowired ownerAuctionService oService;
	
	
	
}
