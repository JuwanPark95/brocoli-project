package com.kh.brocoli.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.brocoli.admin.model.service.AdminMemberService;
import com.kh.brocoli.member.model.vo.Member;

@SessionAttributes("loginUser")
@Controller
public class AdminMemberController {

	@Autowired
	private AdminMemberService AMService;
	
	/**
	 * 작성자: 신은지
	 * 1. 회원 리스트 
	 * @param mv
	 * @return
	 */
	@RequestMapping("memberManagement.ad")
	public ModelAndView memberManagement (ModelAndView mv) {
		
		ArrayList<Member> MemberList = AMService.selectMemberList();
		
		mv.addObject("MemberList",MemberList);
		mv.setViewName("member-management");
		
		System.out.println("member"+mv);
		return mv;
	}
	
}
