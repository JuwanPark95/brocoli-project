package com.kh.brocoli.owner.model.service;

import com.kh.brocoli.member.model.vo.Orders;
import com.kh.brocoli.owner.vo.ownerAge;
import com.kh.brocoli.owner.vo.ownerCategore;
import com.kh.brocoli.product.model.vo.Brand;

public interface ownerBasicService {

	int selectMassegeCount(int bNO);

	int selectReviewCount(int bNO);

	int selectOrderCount(int bNO);

	int selectQnACount(int bNO);

	String selectBrandLogo(int bNO);

	Brand selectBrandInfo(int bNO);

	/*
	 * ownerAge selectAge(int bNO);
	 * 
	 * ownerCategore selectCategore(int bNO);
	 * 
	 * Orders selectProductCount(int bNO);
	 */

}
