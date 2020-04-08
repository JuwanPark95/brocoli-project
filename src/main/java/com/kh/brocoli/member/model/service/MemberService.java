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

	/**
	 * 작성자 : 임현섭
	 * ID 중복체크
	 * @param id
	 * @return
	 */
	int idCheck(String id);

	/**
	 * 작성자 : 임현섭
	 * 회원가입 
	 * @param m
	 * @return
	 */
	int insertMember(Member m);

	/**
	 * 작성자 : 임현섭
	 * mail 중복체크
	 * @param email
	 * @return
	 */
	int mailCheck(String email);

	
	
	
}
