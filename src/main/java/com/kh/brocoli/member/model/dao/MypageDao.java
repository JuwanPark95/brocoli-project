package com.kh.brocoli.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.brocoli.member.model.vo.Member;

@Repository("myDao")
public class MypageDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int deleteMember(String mId) {
		return sqlSession.delete("memberMapper.deleteMember",mId);
	}

	public int updateMember(Member m) {
		return sqlSession.update("memberMapper.updateMember",m);
	}
	
	public int pwdCheck(String password) {
		return sqlSession.selectOne("memberMapper.pwdCheck",password);
	}

}
