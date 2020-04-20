package com.kh.brocoli.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.brocoli.member.model.vo.Orders;

@Repository("ASDao")
public class AdminSalesDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	/**
	 *  작성자  : 신은지
	 *  1. 매출 검색 list
	 * @return
	 */
	public ArrayList<Orders> selectSalesList() {
		return (ArrayList)sqlSession.selectList("AdminSales.selectSalesList");
	}

}
