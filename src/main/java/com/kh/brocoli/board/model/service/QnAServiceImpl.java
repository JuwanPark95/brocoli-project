package com.kh.brocoli.board.model.service;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.board.model.dao.QnADao;
import com.kh.brocoli.board.model.vo.PageInfo;
import com.kh.brocoli.board.model.vo.QnA;


@Service("qService")
public class QnAServiceImpl implements QnAService{
	
	@Autowired
	private QnADao qDao;

	@Override
	public int getListCount() {	
		return qDao.getListCount();
	}

	@Override
	public ArrayList<QnA> selectList(PageInfo pi) {
		return qDao.selectList(pi);
	}



}
