package com.kh.brocoli.member.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.brocoli.member.model.service.OrderAddService;

@Controller
public class OrderAddController {
	
	@Autowired
	private OrderAddService OaService;

	@RequestMapping(value="cOrderAddInsert.mn", method=RequestMethod.POST)
	@ResponseBody
	public String cOrderAdd(@RequestParam(value="rowData") ArrayList<String> rowData,
							@RequestParam(value="tdArr") ArrayList<String> tdArr) {
		
		System.out.println(rowData);
		System.out.println(tdArr);
	
		List<Map<String,Object>> resultMap = new ArrayList<Map<String,Object>>();
		//resultMap = JSONArray.fromObject(tdArr);
		
		return "";
	}
	
}
