package com.kh.brocoli.member.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Random;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.general.model.vo.Auction;
import com.kh.brocoli.member.model.dao.MemberDao;
import com.kh.brocoli.member.model.vo.Member;
import com.kh.brocoli.product.model.vo.Brand;
import com.kh.brocoli.product.model.vo.Product;
import com.kh.brocoli.product.model.vo.ProductDetail;


@Service("mService")
public class MemberServiceimpl implements MemberService {
	
	@Autowired
	private MemberDao mDao;
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public ArrayList<Auction> selectList() {
		return mDao.selectList();
	}

	
	@Override
	public ArrayList<Product> selectpList() {
		return mDao.selectpList();
	}
	
	@Override
	public ArrayList<Product> selectEList() {
		return mDao.selectEList();
	}


	@Override
	public ArrayList<Brand> selectbList() {
		return mDao.selectbList();
	}

	@Override
	public ArrayList<Brand> selectbpList(String b_Name) {
		return mDao.selectbpList(b_Name);
	}


	@Override
	public ArrayList<Product> selectapList() {
		return mDao.selectapList();
	}


	@Override
	public ArrayList<ProductDetail> selectpDetail(String p_NO) {
		return mDao.selectpDetail(p_NO);
	}


	@Override
	public ArrayList<Product> selectdayList() {
		return mDao.selectdayList();
	}


	@Override
	public ArrayList<Product> selectmonthList() {
		return mDao.selectmonthList();
	}


	@Override
	public ArrayList<Product> selectyearList() {
		return mDao.selectyearList();
	}


	@Override
	public ArrayList<ProductDetail> selectOption(HashMap<String,String> hmap) {
		return mDao.selectOption(hmap);
	}


}
