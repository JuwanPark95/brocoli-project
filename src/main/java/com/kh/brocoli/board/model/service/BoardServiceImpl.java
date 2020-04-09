package com.kh.brocoli.board.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.board.model.dao.BoardDao;
import com.kh.brocoli.board.model.vo.Notice;
import com.kh.brocoli.board.model.vo.Notice_PageInfo;
import com.kh.brocoli.board.model.vo.Search;

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
		return bnDao.selectList(pi);
	}
	
	@Override
	public int insertBoardNotice(Notice n) {
		return bnDao.insertBoardNotice(n);
	}

	@Override
	public Notice selectBoardNotice(int n_No) {
		
		int result = bnDao.updateCount(n_No);
		if(result > 0) {
			return bnDao.selectBoardNotice(n_No);
		}else {
			return null;
		}		
	}

	@Override
	public Notice selectUpdateBoardNotice(int n_No) {
		return bnDao.selectBoardNotice(n_No);
	}

	@Override
	public int updateBoardNotice(Notice n) {
		return bnDao.updateBoardNotice(n);
	}

	@Override
	public int deleteBoardNtice(int n_No) {
		return bnDao.deleteBoardNotice(n_No);
	}

}
