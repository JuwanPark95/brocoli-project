package com.kh.brocoli.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.brocoli.member.model.vo.Orders;

@Repository
public class AdminOrderDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	/**
	 * 작성자 : 신은지 
	 * 1.주문 현황 목록 list Dao
	 * @return
	 */
	public ArrayList<Orders> selectOrderList() {
		return (ArrayList)sqlSession.selectList("AdminOrder.selectOrderList");
	}
}
