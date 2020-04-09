package com.kh.brocoli.admin.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.admin.model.dao.AdminOrderDao;
import com.kh.brocoli.member.model.vo.Orders;

@Service
public class AdminOrderServiceImpl implements AdminOrderService{

	@Autowired
	private AdminOrderDao AODao;

	/**
	 *	작성자 : 신은지
	 *	1. 주문현황 목록 list
	 */
	@Override
	public ArrayList<Orders> selectOrderList() {
		return AODao.selectOrderList();
	}
}
