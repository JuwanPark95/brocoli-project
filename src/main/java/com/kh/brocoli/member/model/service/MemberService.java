package com.kh.brocoli.member.model.service;

import java.util.ArrayList;

import com.kh.brocoli.general.model.vo.Auction;
import com.kh.brocoli.member.model.vo.Member;
import com.kh.brocoli.product.model.vo.Brand;
import com.kh.brocoli.product.model.vo.Product;

public interface MemberService {

	/**
	 * 작성자 : 윤석훈
	 * 메인 페이지 옥션
	 * @return
	 */
	ArrayList<Auction> selectList();
	
	/**
	 * 작성자 : 윤석훈  
	 * 메인 페이지 랭킹
	 * @return
	 */
	ArrayList<Product> selectpList();

	
	
	/**
	 * 작성자 : 윤석훈
	 * 메인 페이지 이벤트
	 * @return
	 */
	ArrayList<Product> selectEList();

	/**
	 * 작성자 : 윤석훈
	 * 브랜드 페이지 브랜드명 출력
	 * @return
	 */
	ArrayList<Brand> selectbList();
	
	
	/**
	 * 작성자 : 윤석훈
	 * 브랜드 페이지 브랜드별 상품 출력
	 * @param brandName
	 * @return
	 */
	ArrayList<Brand> selectbpList(String b_Name);


	


}








	

