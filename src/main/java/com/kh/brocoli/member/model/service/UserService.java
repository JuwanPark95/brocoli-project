package com.kh.brocoli.member.model.service;

import java.util.ArrayList;

import com.kh.brocoli.general.model.vo.Auction;
import com.kh.brocoli.magazine.model.vo.Magazine;
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

	
    /**
     * 작성자 임현섭
     * 비밀번호 찾기 비밀번호 수정
     * @param m
     * @return
     * @throws Exception
     */
    public int newPassword(Member m) throws Exception;

	/**
	 * 작성자 임현섭
	 * 입점
	 * @param b
	 * @return
	 */
	public int sEnter(Brand b);

	/**
	 * 작성자 임현섭
	 * 브랜드명 중복체크
	 * @param name
	 * @return
	 */
	public int bNameCheck(String name);

	/**
	 * 작성자 임현섭
	 * 조회수 측정
	 * @return
	 */
	int getListCount3();

	/**
	 * 작성자 임현섭
	 * 매거진 목록 조회용
	 * @return
	 */
	ArrayList<Magazine> selectmList(String ob);

	/**
	 * 작성자 임현섭
	 * 메거진 디테일
	 * @param m_NO
	 * @return
	 */
	Magazine selectMagazine(int m_NO);

	/**
	 * 작성자 임현섭
	 * 월별 매거진 갯수 조회
	 * @return
	 */
	

	int selectM1();

	int selectM2();

	int selectM3();

	int selectM4();

	int selectM5();

	int selectM6();

	int selectM7();

	int selectM8();

	int selectM9();

	int selectM10();

	int selectM11();

	int selectM12();

	
 
}








	

