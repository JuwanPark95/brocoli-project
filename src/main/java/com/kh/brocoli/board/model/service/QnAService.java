package com.kh.brocoli.board.model.service;

import java.util.ArrayList;

import com.kh.brocoli.board.model.vo.PageInfo;
import com.kh.brocoli.board.model.vo.QnA;

public interface QnAService {

	/**
	 * qna 게시판 카운트
	 * @return
	 */
	int getListCount();

	/**
	 * qna 게시판 리스트 조회
	 * @param pi
	 * @return
	 */
	ArrayList<QnA> selectList(PageInfo pi);


}
