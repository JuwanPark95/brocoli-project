package com.kh.brocoli.owner.model.service;

import com.kh.brocoli.member.model.vo.Member;

public interface ownerService {

	/**
	 * 작성자 : 윤석훈
	 * 회원 로그인
	 * @param m
	 * @return
	 */
	Member loginMember(Member m);
	
}
