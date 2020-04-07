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

}
