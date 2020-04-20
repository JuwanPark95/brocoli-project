package com.kh.brocoli.admin.model.service;

import java.util.ArrayList;

import com.kh.brocoli.member.model.vo.Orders;

public interface AdminSalesService {

	/**
	 * 작성자 : 신은지
	 * 1. 매출 검색 list
	 * @return
	 */
	ArrayList<Orders> selectSalesList();

}
