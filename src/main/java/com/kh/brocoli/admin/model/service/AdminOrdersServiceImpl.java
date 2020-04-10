package com.kh.brocoli.admin.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.admin.model.dao.AdminOrdersDao;
import com.kh.brocoli.member.model.vo.Orders;

@Service("AOSerivce")
public class AdminOrdersServiceImpl implements AdminOrdersService{

	@Autowired
	private AdminOrdersDao AODao;

	/**
	 *	작성자 : 신은지
	 *	1. 주문현황 목록 list
	 */
	@Override
	public ArrayList<Orders> selectOrdersList() {
		return AODao.selectOrdersList();
	}
}
