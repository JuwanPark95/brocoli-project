package com.kh.brocoli.main.member.model.service;

import com.kh.brocoli.main.member.model.vo.Member;

public interface MemberService {

	/**
	 * 작성자 : 윤석훈
	 * 회원 로그인
	 * @param m
	 * @return
	 */
	Member loginMember(Member m);
	
}
