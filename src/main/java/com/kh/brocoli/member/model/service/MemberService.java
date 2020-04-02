package com.kh.brocoli.member.model.service;

import com.kh.brocoli.member.model.vo.Member;

public interface MemberService {

	/**
	 * 작성자 : 윤석훈
	 * 회원 로그인
	 * @param m
	 * @return
	 */
	Member loginMember(Member m);
	
}
