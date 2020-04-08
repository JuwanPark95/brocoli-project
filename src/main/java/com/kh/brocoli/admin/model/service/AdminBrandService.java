package com.kh.brocoli.admin.model.service;

import java.util.ArrayList;

import com.kh.brocoli.product.model.vo.Brand;

public interface AdminBrandService {

	/**
	 * 작성자 : 신은지
	 * 1. 브랜드 list 
	 * @return
	 */
	ArrayList<Brand> selectBrandList();

	/**
	 * 작성자 : 신은지
	 * 2. 브랜드 detail
	 * @param brand_NO
	 * @return
	 */
	Brand selectBrandDetail(int brand_NO);

}
