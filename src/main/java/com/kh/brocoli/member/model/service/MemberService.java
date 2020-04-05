package com.kh.brocoli.member.model.service;

import java.util.ArrayList;

import com.kh.brocoli.general.model.vo.Auction;
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
	 * 작성자 : 윤석훈
	 * 메인 페이지 로딩
	 * @return
	 */
	ArrayList<Auction> selectList();

	

	/**
	 * 회원 탈퇴
	 * @param mId
	 * @return
	 */
	int deleteMember(String mId);

	
}
