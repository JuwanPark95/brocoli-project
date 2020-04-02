package com.kh.brocoli.admin.admin_brand.admin_model.admin_service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.admin.admin_brand.admin_model.admin_dao.Admin_BrandDao;
import com.kh.brocoli.admin.admin_brand.admin_model.admin_vo.Admin_Brand;

@Service("ABService")
public class Admin_BrandServiceImpl implements Admin_BrandService {

	@Autowired
	private Admin_BrandDao ABDao;
	
	@Override
	public ArrayList<Admin_Brand> brandSelectList() {
		return ABDao.brandSelectList();
	}

}
