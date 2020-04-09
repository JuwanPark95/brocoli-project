package com.kh.brocoli.admin.model.service;

import java.util.ArrayList;

import com.kh.brocoli.product.model.vo.Brand;

public interface AdminBrandService {

	/**
	 * 작성자 : 신은지
	 * 1. 브랜드 목록 
	 * @return
	 */
	ArrayList<Brand> selectBrandList();

	/**
	 * 작성자 : 신은지
	 * 2. 브랜드 상세보기
	 * @param brand_NO
	 * @return
	 */
	Brand selectBrandDetail(int brand_NO);

	/**
	 * 작성자 : 신은지
	 * 3. 브랜드 수정
	 * @param b
	 * @return
	 */
	int brandUpdate(Brand b);

	/**
	 * 작성자 : 신은지
	 * 4. 브랜드 삭제 (상태Y=>N)
	 * @param brand_NO
	 * @return
	 */
	int brandDelte(int brand_NO);

}
