package com.kh.brocoli.board.model.service;

import java.util.ArrayList;

import com.kh.brocoli.board.model.vo.Notice;
import com.kh.brocoli.board.model.vo.Notice_PageInfo;

public interface BoardService {

	/**
	 * 게시판 카운트
	 * @return
	 */
	int getListCount();

	/**
	 * 게시판 리스트 조회
	 * @param pi
	 * @return
	 */
	ArrayList<Notice> selectList(Notice_PageInfo pi);

	/**
	 * 게시판 작성
	 * @param n
	 * @return
	 */
	int insertBoardNotice(Notice n);

	/**
	 * 게시판 상세조회
	 * @param mno
	 * @return
	 */
	Notice selectBoardNotice(int n_No);

}
