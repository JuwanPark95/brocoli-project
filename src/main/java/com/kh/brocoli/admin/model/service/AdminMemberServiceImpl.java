package com.kh.brocoli.admin.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.admin.model.dao.AdminMemberDao;
import com.kh.brocoli.member.model.vo.Member;

@Service("AMService")
public class AdminMemberServiceImpl implements AdminMemberService {

	@Autowired
	private AdminMemberDao AMDao;

	/**
	 *작성자 : 신은지
	 *1. 회원 리스트 service
	 */
	@Override
	public ArrayList<Member> selectMemberList() {
		return AMDao.selectMemberList();
	}
}
