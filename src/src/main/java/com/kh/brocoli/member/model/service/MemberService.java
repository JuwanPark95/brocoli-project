package com.kh.brocoli.member.model.service;

import java.util.ArrayList;

import com.kh.brocoli.general.model.vo.Auction;
import com.kh.brocoli.member.model.vo.Member;
import com.kh.brocoli.product.model.vo.Brand;
import com.kh.brocoli.product.model.vo.Product;
import com.kh.brocoli.product.model.vo.ProductDetail;

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

	/**
	 * 작성자 : 윤석훈
	 * 상품 페이지 전체 출력
	 * @return
	 */
	ArrayList<Product> selectapList();


	/**
	 * 작성자 : 윤석훈
	 * 상품 디테일
	 * @param p_NO
	 * @return
	 */
	ArrayList<ProductDetail> selectpDetail(String p_NO);

	/**
	 * 일별 랭킹
	 * @return
	 */
	ArrayList<Product> selectdayList();

	/**
	 * 월별 랭킹
	 * @return
	 */
	ArrayList<Product> selectmonthList();

	/**
	 * 년별 랭킹
	 * @return
	 */
	ArrayList<Product> selectyearList();



	


}








	

