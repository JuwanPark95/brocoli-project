package com.kh.brocoli.member.model.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import com.kh.brocoli.board.model.vo.PageInfo;
import com.kh.brocoli.board.model.vo.QnA;
import com.kh.brocoli.board.model.vo.SearchCondition;
import com.kh.brocoli.member.model.vo.Member;
import com.kh.brocoli.member.model.vo.Orders;


public interface MypageService {
	
	/**
	 * 작성자 : 김주희
	 * 회원 탈퇴
	 * @param mId
	 * @return
	 */
	int deleteMember(Member m);


	/**
	 * 작성자 : 김주희
	 * 회원 수정
	 * @param m
	 * @return
	 */
	int updateMember(Member m);


	/**
	 * 작성자 : 김주희
	 * 비밀번호 확인
	 * @param pwd
	 * @return
	 */
	int pwdCheck(String password);


	/**
	 * 작성자 : 김주희
	 * 내가쓴글 게시판 총 횟수
	 * @return
	 */
	int getmyListCount();


	/**
	 * 게시판 리스트 조회
	 * @param pi
	 * @return
	 */
	ArrayList<QnA> myselectList(PageInfo pi, Member m);


	/**
	 * 검색
	 * @param sc
	 * @return
	 */
	int getSearchResultListCount(SearchCondition sc);

    ArrayList<QnA> selectSearchResultList(HttpSession session, SearchCondition sc, PageInfo pi);


	/**
	 * 주문정보
	 * @param m
	 * @return
	 */
	ArrayList<Orders> myorderList(String Pname);






}
