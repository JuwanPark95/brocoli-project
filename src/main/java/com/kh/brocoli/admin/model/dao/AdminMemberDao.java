package com.kh.brocoli.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.brocoli.member.model.vo.Member;

@Repository("AMDao")
public class AdminMemberDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public ArrayList<Member> selectMemberList() {
		return (ArrayList)sqlSession.selectList("AdminMember.selectMemberList");
	}
	
}
