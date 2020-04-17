package com.kh.brocoli.admin.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.admin.model.dao.AdminOrdersDao;
import com.kh.brocoli.member.model.vo.Change;
import com.kh.brocoli.member.model.vo.Orders;
import com.kh.brocoli.member.model.vo.Reject;

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

	/**
	 * 작성자 : 신은지
	 * 2. Ajax 주문현황 상태 변경
	 */
	@Override
	public int orderStatusChange(Orders orders) {
		return AODao.orderStatusChange(orders);
	}

	/**
	 * 작성자 : 신은지
	 * 3. 교환 list
	 */
	@Override
	public ArrayList<Change> selectChangeList() {
		return AODao.selectChangeList();
	}

	/**
	 *	작성자: 신은지
	 *  4. 환불 list
	 */
	@Override
	public ArrayList<Reject> selectRejectList() {
		return AODao.selectRejectList();
	}
}
