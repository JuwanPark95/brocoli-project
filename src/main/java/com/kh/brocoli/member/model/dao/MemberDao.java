package com.kh.brocoli.member.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.kh.brocoli.general.model.vo.Auction;
import com.kh.brocoli.member.model.vo.Member;
import com.kh.brocoli.product.model.vo.Brand;
import com.kh.brocoli.product.model.vo.Product;


@Repository("mDao")
public class MemberDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public ArrayList<Auction> selectList() {
		return (ArrayList)sqlSession.selectList("main-Mapper.auctionlist");
	}
	
	public ArrayList<Product> selectpList() {
		return (ArrayList)sqlSession.selectList("main-Mapper.ranklist");
	}
	
	public ArrayList<Product> selectEList() {
		return (ArrayList)sqlSession.selectList("main-Mapper.eventlist");
	}


	public ArrayList<Brand> selectbList() {
		return (ArrayList)sqlSession.selectList("main-Mapper.brandlist");
	}

	public ArrayList<Brand> selectbpList(String b_Name) {
		return (ArrayList)sqlSession.selectList("main-Mapper.bproductlist",b_Name);
	}



}

