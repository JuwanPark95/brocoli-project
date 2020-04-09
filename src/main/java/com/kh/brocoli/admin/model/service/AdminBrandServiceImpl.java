package com.kh.brocoli.admin.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.admin.model.dao.AdminBrandDao;
import com.kh.brocoli.product.model.vo.Brand;

@Service("ABService")
public class AdminBrandServiceImpl implements AdminBrandService{

	@Autowired
	private AdminBrandDao ABDao;
	/**
	 *	작성자 : 신은지
	 *	1. 브랜드 list service
	 */
	@Override
	public ArrayList<Brand> selectBrandList() {
		return ABDao.selectBrandList();
	}
	
	/**
	 *  작성자 : 신은지
	 *	2. 브랜드 상세보기 service
	 */
	@Override
	public Brand selectBrandDetail(int brand_NO) {
		return ABDao.selectBrandDetail(brand_NO);
	}

	/**
	 *	작성자 : 신은지
	 *	3.브랜드 수정 service
	 */
	@Override
	public int brandUpdate(Brand b) {
		return ABDao.updateBrandUpdate(b);
	}

	@Override
	public int brandDelte(int brand_NO) {
		// TODO Auto-generated method stub
		return 0;
	}

//	/**
//	 *	작성자 : 신은지
//	 *	4. 브랜드 삭제 service
//	 */
//	@Override
//	public int brandDelte(int brand_NO) {
//		return ABDao.deleteBrand(brand_NO);
//	}

}
