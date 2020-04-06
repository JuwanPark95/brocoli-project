package com.kh.brocoli.board.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.board.model.dao.BoardDao;
import com.kh.brocoli.board.model.vo.Notice;
import com.kh.brocoli.board.model.vo.Notice_PageInfo;

@Service("bnService")
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardDao bnDao;
	
	@Override
	public int getListCount() {
		return bnDao.getListCount();
	}

	@Override
	public ArrayList<Notice> selectList(Notice_PageInfo pi) {
		return null;
	}

}
