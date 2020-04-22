package com.kh.brocoli.member.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.kh.brocoli.general.model.vo.Auction;
import com.kh.brocoli.magazine.model.vo.Magazine;
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
				
			
			return sqlSession.update("memberMapper.newPassword", m);
			
		}

		public int sEnter(Brand b) {
			return sqlSession.insert("memberMapper.sEnter",b);
		}

		public int bNameCheck(String name) {
			
			return sqlSession.selectOne("memberMapper.bNameCheck",name);
		}

		public int getListCount3() {
			return sqlSession.selectOne("memberMapper.getListCount3");
		}

		public ArrayList<Magazine> selectmList(String ob) {
			return (ArrayList)sqlSession.selectList("memberMapper.selectmList",ob);
		}

		public Magazine selectMagazine(int m_NO) {
			return sqlSession.selectOne("memberMapper.selectMagazine",m_NO);
		}

		public int updateCount(int m_NO) {
			return sqlSession.update("memberMapper.updateCount",m_NO);
		}

		
		public int selectM1() {
			return sqlSession.selectOne("memberMapper.selectM1");
		}

		public int selectM2() {
			return sqlSession.selectOne("memberMapper.selectM2");
		}

		public int selectM3() {
			return sqlSession.selectOne("memberMapper.selectM3");
		}

		public int selectM4() {
			return sqlSession.selectOne("memberMapper.selectM4");
		}

		public int selectM5() {
			return sqlSession.selectOne("memberMapper.selectM5");
		}

		public int selectM6() {
			return sqlSession.selectOne("memberMapper.selectM6");
		}

		public int selectM7() {
			return sqlSession.selectOne("memberMapper.selectM7");
		}

		public int selectM8() {
			return sqlSession.selectOne("memberMapper.selectM8");
		}

		public int selectM9() {
			return sqlSession.selectOne("memberMapper.selectM9");
		}

		public int selectM10() {
			return sqlSession.selectOne("memberMapper.selectM10");
		}

		public int selectM11() {
			return sqlSession.selectOne("memberMapper.selectM11");
		}

		public int selectM12() {
			return sqlSession.selectOne("memberMapper.selectM12");
		}


}


