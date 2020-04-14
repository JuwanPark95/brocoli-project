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
		return (ArrayList)sqlSession.selectList("mainMapper.auctionlist");
	}
	
	public ArrayList<Product> selectpList() {
		return (ArrayList)sqlSession.selectList("mainMapper.ranklist");
	}
	
	public ArrayList<Product> selectEList() {
		return (ArrayList)sqlSession.selectList("mainMapper.eventlist");
	}


	public ArrayList<Brand> selectbList() {
		return (ArrayList)sqlSession.selectList("mainMapper.brandlist");
	}

	public ArrayList<Brand> selectbpList(String b_Name) {
		return (ArrayList)sqlSession.selectList("mainMapper.bproductlist",b_Name);
	}

	public ArrayList<Product> selectapList() {
		return (ArrayList)sqlSession.selectList("mainMapper.aproductlist");
	}




}

