package com.kh.brocoli.owner.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.brocoli.member.model.vo.Orders;
import com.kh.brocoli.product.model.vo.Statistics;

@Repository("ownerOrderDao")
public class ownerOrderDao {
	
	@Autowired SqlSessionTemplate sqlSession;

	public ArrayList<Statistics> selectIncomeDay(int bNO) {
		return (ArrayList)sqlSession.selectList("ownerOrder-mapper.selectIncomeDay",bNO);
	}

	public ArrayList<Statistics> selectIncomeMonth(int bNO) {
		return (ArrayList)sqlSession.selectList("ownerOrder-mapper.selectIncomeMonth",bNO);
	}

	public ArrayList<Statistics> selectIncomeYear(int bNO) {
		return (ArrayList)sqlSession.selectList("ownerOrder-mapper.selectIncomeYear",bNO);
	}

}
