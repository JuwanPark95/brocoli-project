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
import com.kh.brocoli.product.model.vo.ProductDetail;


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

	public ArrayList<ProductDetail> selectpDetail(String p_NO) {
		return (ArrayList)sqlSession.selectList("mainMapper.pDetail",p_NO);
	}

	public ArrayList<Product> selectdayList() {
		return (ArrayList)sqlSession.selectList("mainMapper.daylist");
	}

	public ArrayList<Product> selectmonthList() {
		return (ArrayList)sqlSession.selectList("mainMapper.monthlist");
	}

	public ArrayList<Product> selectyearList() {
		return (ArrayList)sqlSession.selectList("mainMapper.yearlist");
	}


}

