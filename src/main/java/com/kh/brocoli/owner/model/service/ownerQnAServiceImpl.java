package com.kh.brocoli.owner.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.owner.model.dao.ownerQnADao;
import com.kh.brocoli.product.model.vo.QNAProduct;
import com.kh.brocoli.product.model.vo.QNAProduct_Reply;

@Service("ownerQnAService")
public class ownerQnAServiceImpl implements ownerQnAService {
	
	@Autowired ownerQnADao oDao;

	@Override
	public ArrayList<QNAProduct> noReadQnASelect(int bNO) {
		return oDao.noReadQnASelect(bNO);
	}

	@Override
	public ArrayList<QNAProduct_Reply> noReadQnAReplySelect(int bNO) {
		return oDao.noReadQnAReplySelect(bNO);
	}

	@Override
	public int QnACheckUpdate(String rNo) {
		return oDao.QnACheckUpdate(rNo);
	}

	@Override
	public int QReplyCheckUpdate(int rNO) {
		return oDao.QReplyCheckUpdate(rNO);
	}
}
