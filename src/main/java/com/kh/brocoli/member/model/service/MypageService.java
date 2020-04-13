package com.kh.brocoli.member.model.service;

import com.kh.brocoli.member.model.vo.Member;

public interface MypageService {
	
	/**
	 * 작성자 : 김주희
	 * 회원 탈퇴
	 * @param mId
	 * @return
	 */
	int deleteMember(Member m);


	/**
	 * 작성자 : 김주희
	 * 회원 수정
	 * @param m
	 * @return
	 */
	int updateMember(Member m);


	/**
	 * 작성자 : 김주희
	 * 비밀번호 확인
	 * @param pwd
	 * @return
	 */
	int pwdCheck(String password);

}
