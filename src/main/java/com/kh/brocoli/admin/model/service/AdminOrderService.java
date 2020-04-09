package com.kh.brocoli.admin.model.service;

import java.util.ArrayList;

import com.kh.brocoli.member.model.vo.Orders;

public interface AdminOrderService {

	/**
	 * 작성자 : 신은지
	 * 1.주문현황 목록 list Service
	 * @return
	 */
	ArrayList<Orders> selectOrderList();

}
