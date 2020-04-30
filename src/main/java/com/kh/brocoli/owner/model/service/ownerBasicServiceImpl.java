package com.kh.brocoli.owner.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.member.model.vo.Orders;
import com.kh.brocoli.owner.model.dao.ownerBasicDao;
import com.kh.brocoli.owner.vo.ownerAge;
import com.kh.brocoli.owner.vo.ownerCategore;
import com.kh.brocoli.product.model.vo.Brand;

@Service("ownerBasicService")
public class ownerBasicServiceImpl implements ownerBasicService {

	@Autowired ownerBasicDao oDao;
	
	@Override
	public int selectMassegeCount(int bNO) {
		return oDao.selectMassegeCount(bNO);
	}

	@Override
	public int selectReviewCount(int bNO) {
		return oDao.selectReviewCount(bNO);
	}

	@Override
	public int selectOrderCount(int bNO) {
		return oDao.selectOrderCount(bNO);
	}

	@Override
	public int selectQnACount(int bNO) {
		return oDao.selectQnACount(bNO);
	}

	@Override
	public String selectBrandLogo(int bNO) {
		return oDao.selectBrandLogo(bNO);
	}

	@Override
	public Brand selectBrandInfo(int bNO) {
		return oDao.selectBrandInfo(bNO);
	}

	/*
	 * @Override public ownerAge selectAge(int bNO) { return oDao.selectAge(bNO); }
	 * 
	 * @Override public ownerCategore selectCategore(int bNO) { return
	 * oDao.selectCategore(bNO); }
	 */

	/*
	 * @Override public Orders selectProductCount(int bNO) { return null; }
	 */

	
	
}
