package com.kh.brocoli.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.member.model.dao.CartDao;
import com.kh.brocoli.member.model.vo.Cart;
import com.kh.brocoli.product.model.vo.ProductDetail;

@Service("cService")
public class CartServiceimpl implements CartService {

	@Autowired
	private CartDao cDao;
	
	@Override
	public int cInsert(ProductDetail pc) {
		return cDao.cInsert(pc);
	}

}
