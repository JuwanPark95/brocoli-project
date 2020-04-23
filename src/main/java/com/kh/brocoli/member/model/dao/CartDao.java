package com.kh.brocoli.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.brocoli.member.model.vo.Cart;
import com.kh.brocoli.product.model.vo.ProductDetail;

@Repository("cDao")
public class CartDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int cInsert(Cart c) {
		System.out.println("DAO 찍히나유 ? :"+c.getCt_Mno());
		return sqlSession.insert("Cart-mapper.cInsert", c);
	}

}
