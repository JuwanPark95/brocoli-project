package com.kh.brocoli.admin.model.service;

import java.util.ArrayList;

import com.kh.brocoli.member.model.vo.Member;

public interface AdminMemberService {

	/**
	 * 작성자: 신은지
	 * 1. 회원 리스트 
	 * @return
	 */
	ArrayList<Member> selectMemberList();

}
