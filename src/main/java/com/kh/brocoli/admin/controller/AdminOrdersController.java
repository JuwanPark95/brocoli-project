package com.kh.brocoli.admin.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.brocoli.admin.model.service.AdminOrdersService;
import com.kh.brocoli.member.model.vo.Change;
import com.kh.brocoli.member.model.vo.Orders;
import com.kh.brocoli.member.model.vo.Reject;
import com.kh.brocoli.product.model.vo.Product_Option;

@Controller
@SessionAttributes("loginUser")
public class AdminOrdersController {

	@Autowired
	private AdminOrdersService AOService;
	
	/**
	 * 작성자 : 신은지
	 * 1. 주문현황 목록 list
	 * @param mv
	 * @return
	 */
	@RequestMapping("orderStatus.ad")
	public ModelAndView ordersStatus(ModelAndView mv) {
		
		ArrayList<Orders> ordersList = AOService.selectOrdersList();
		
		mv.addObject(ordersList);
		mv.setViewName("order-status");
		
		return mv;
	}
	
	/**
	 * 작성자 : 신은지 
	 * 2. 주문현황 상태 버튼 클릭시 상태변화
	 * @param or_No
	 * @param or_Status
	 * @return
	 */
	@RequestMapping("orderStatusChange.ad")
	@ResponseBody
	public String orderStatusChange(@RequestParam("or_NO") int or_No, 
									@RequestParam("or_Status") String or_Status) {
		Orders orders = new Orders();
		orders.setOr_NO(or_No);
		orders.setOr_Status(or_Status);
		
		int result = AOService.orderStatusChange(orders);
		
		if(result>0) {
			System.out.println("result: "+result);
			return "Sucess";
		}else {
			return "Fail";
		}	
	}
	
	/**
	 * 	작성자 : 신은지
	 *  3. 교환, 환불 list 
	 * @param mv
	 * @return
	 */
	@RequestMapping("orderChangeReject.ad")
	public ModelAndView orderChangeReject(ModelAndView mv,Change change, Reject reject) {
		
		ArrayList<Change> changeList = AOService.selectChangeList(); 
		ArrayList<Reject> rejectList = AOService.selectRejectList(); 
		System.out.println("changeList"+changeList);
		System.out.println("rejectList"+rejectList);
		mv.addObject(changeList);
		mv.addObject(rejectList);
		mv.setViewName("order-exchange");
		
		return mv;
	}
	
	/**
	 *  작성자 : 신은지
	 *  4. 교환 modal
	 * @return
	 */
	@RequestMapping("orderChangeModal.ad")
	@ResponseBody
	public ArrayList<Product_Option> orderChangeModal(@RequestParam(value="chPNO",required=false) int chPNO,
			                       @RequestParam(value="option1",required=false) String option1,
			                       @RequestParam(value="option2",required=false) String option2,
			                       @RequestParam(value="chPname",required=false) String chPname) throws Exception {
		
		System.out.println("chPNO"+chPNO);
    	System.out.println("option1"+option1);
    	System.out.println("option2"+option2);
    	System.out.println("chPname"+chPname);
    	
    	ArrayList<Product_Option> po = AOService.orderChangeModal(chPNO);
    	
    	System.out.println("PO"+po);
		return po;
	}
	
}
	