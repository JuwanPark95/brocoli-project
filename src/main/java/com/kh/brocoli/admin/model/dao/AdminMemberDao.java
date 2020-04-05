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

	/**
	 * 작성자 : 신은지
	 * 1. 회원 리스트 dao
	 * @return
	 */
	public ArrayList<Member> selectMemberList() {
		return (ArrayList)sqlSession.selectList("AdminMember.selectMemberList");
	}

	/**
	 * 작성자 : 신은지
	 * 2. 회원 상세보기 dao
	 * @param mId
	 * @return
	 */
	public Member selectMemberDetail(String mId) {
		return sqlSession.selectOne("AdminMember.selectMemberDetail",mId);
	}


	
}
