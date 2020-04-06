package com.kh.brocoli.board.model.service;

import java.util.ArrayList;

import com.kh.brocoli.board.model.vo.Notice;
import com.kh.brocoli.board.model.vo.Notice_PageInfo;

public interface BoardService {

	static ArrayList<Notice> listAll() {
		// TODO Auto-generated method stub
		return null;
	}

	int getListCount();

	ArrayList<Notice> selectList(Notice_PageInfo pi);


}
