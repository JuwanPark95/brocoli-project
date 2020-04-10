package com.kh.brocoli.board.model.service;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.board.model.dao.QnADao;
import com.kh.brocoli.board.model.vo.PageInfo;
import com.kh.brocoli.board.model.vo.QnA;
import com.kh.brocoli.board.model.vo.QnA_Reply;


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

	@Override
	public int insertQnA(QnA q) {
		return qDao.insertQnA(q);
	}

	@Override
	public QnA selectQnA(int q_No) {
		
		int result = qDao.updateCount(q_No);
		if(result > 0) {
			return qDao.selectQnA(q_No);
		}else {
			return null;
		}
	}

	@Override
	public int insertReply(QnA_Reply qr) {
		return qDao.insertReply(qr);
	}

	@Override
	public ArrayList<QnA_Reply> selectReplyList(int bId) {
		return qDao.selectReplyList(bId);
	}

	@Override
	public QnA selectUpdateQnA(int q_No) {
		return qDao.selectQnA(q_No);
	}

	@Override
	public int deleteQnA(int q_No) {
		return qDao.deleteQnA(q_No);
	}

	@Override
	public int updateQnA(QnA q) {
		return qDao.updateQnA(q);
	}
}
