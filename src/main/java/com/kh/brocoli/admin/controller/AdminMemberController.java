package com.kh.brocoli.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
		
		return mv;
	}
	
	/**
	 * 작성자: 신은지
	 * 2.회원 상세보기
	 * @param mv
	 * @param mId
	 * @return
	 */
	@RequestMapping("memberDetail.ad")
	public ModelAndView memberManagementDetail (ModelAndView mv,
										  @RequestParam("mId") String mId) {
		
		Member m = AMService.selectMemberDetail(mId);
		
		if(m != null) {
			mv.addObject("m",m);	
			mv.setViewName("member-detail");
		}
		
		return mv;
	}
	
	/**
	 * 작성자 : 신은지
	 * 회원 정보 수정
	 * @param mv
	 * @param m
	 * @param switch1
	 * @param switch2
	 * @param switch3
	 * @return
	 */
	@RequestMapping("memberUpdate.ad")
	public ModelAndView memberUpdate (ModelAndView mv, Member m, 
									  @RequestParam("switch1") String switch1, 
									  @RequestParam("switch2") String switch2) {
		
		System.out.println("나오삼"+ m);
		System.out.println("나오삼"+ switch1);
		System.out.println("나오삼"+ switch2);
		
		Member mUpdate = AMService.memberUpdate(m, switch1, switch2);
		
		return mv;
	}
	
	
}
