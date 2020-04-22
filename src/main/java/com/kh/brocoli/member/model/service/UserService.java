package com.kh.brocoli.member.model.service;

import java.util.ArrayList;

import com.kh.brocoli.general.model.vo.Auction;
import com.kh.brocoli.member.model.vo.Member;
import com.kh.brocoli.product.model.vo.Brand;
import com.kh.brocoli.product.model.vo.Product;

public interface UserService {

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
	
	/**
	 * 작성자 : 임현섭
	 * 아이디 찾기
	 * @param email
	 * @return
	 */
	String mailCheck2(String email);


	/**
	 * 작성자 : 임현섭
	 * 비밀번호 차지
	 * @param id
	 * @param email
	 * @return
	 */
	int pwdFind(Member m);

	
    public int newPassword(Member m) throws Exception;
 
}








	

