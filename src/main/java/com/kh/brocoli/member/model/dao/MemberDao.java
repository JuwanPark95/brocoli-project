package com.kh.brocoli.member.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.brocoli.general.model.vo.Auction;
import com.kh.brocoli.member.model.vo.Member;


@Repository("mDao")
public class MemberDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public Member loginMember(Member m) {
		return (Member)sqlSession.selectOne("memberMapper.loginMember",m);
	}

	public ArrayList<Auction> selectList() {
		return (ArrayList)sqlSession.selectList("mainMapper.auctionlist");
	}
	
    public int deleteMember(String mId) {
		return sqlSession.delete("memberMapper.deleteMember",mId);
	}

}


