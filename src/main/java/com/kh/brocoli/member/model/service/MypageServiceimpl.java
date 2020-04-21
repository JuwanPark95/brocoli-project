package com.kh.brocoli.member.model.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.board.model.dao.QnADao;
import com.kh.brocoli.board.model.vo.PageInfo;
import com.kh.brocoli.board.model.vo.QnA;
import com.kh.brocoli.board.model.vo.SearchCondition;
import com.kh.brocoli.member.model.dao.MypageDao;
import com.kh.brocoli.member.model.vo.Member;
import com.kh.brocoli.member.model.vo.Orders;

@Service("myService")
public class MypageServiceimpl implements MypageService {
	
	@Autowired
	private MypageDao myDao;
	
	@Autowired
	private QnADao qDao;
	
	@Override
	public int deleteMember(Member m) {
		return myDao.deleteMember(m);
	}

	@Override
	public int updateMember(Member m) {
		return myDao.updateMember(m);
	}

	@Override
	public int pwdCheck(String password) {
		return myDao.pwdCheck(password);
	}

	@Override
	public int getmyListCount() {
		return qDao.getmyListCount();
	}

	@Override
	public ArrayList<QnA> myselectList(PageInfo pi, Member m) {
		return qDao.myselectList(pi,m);
	}

	@Override
	public int getSearchResultListCount(SearchCondition sc) {
		return myDao.getSearchResultListCount(sc);
	}

	@Override
	public ArrayList<QnA> selectSearchResultList(HttpSession session, SearchCondition sc, PageInfo pi) {
		return myDao.selectSearchResultList(session,sc,pi);
	}

	@Override
	public ArrayList<Orders> myorderList(Member m) {
		return myDao.myorderList(m);
	}

	@Override
	public ArrayList<Orders> P_change(Member m) {
		return myDao.P_change(m);
	}

	




}
