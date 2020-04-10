package com.kh.brocoli.member.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.kh.brocoli.general.model.vo.Auction;
import com.kh.brocoli.member.model.vo.Member;
import com.kh.brocoli.product.model.vo.Brand;
import com.kh.brocoli.product.model.vo.Product;


@Repository("uDao")
public class UserDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public Member loginMember(Member m) {
		return (Member)sqlSession.selectOne("memberMapper.loginMember",m);
	}

	public int idCheck(String id) {
		
		return sqlSession.selectOne("memberMapper.idCheck",id);
	}

	public int insertMember(Member m) {
		
		return sqlSession.insert("memberMapper.insertMember",m);
	}

	public int mailCheck(String email) {
		return sqlSession.selectOne("memberMapper.mailCheck",email);
	}

	public String mailCheck2(String email) {
		return sqlSession.selectOne("memberMapper.mailCheck2",email);
	}


	public int pwdFind(Member m) {
		return sqlSession.selectOne("memberMapper.pwdFind",m);
	}
	
		public int newPassword(Member m) {
//			String password = AuthenticationKey;
//
			
			
			return sqlSession.update("memberMapper.newPassword", m);
			
		}


}


