package com.kh.brocoli.member.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.brocoli.general.model.vo.Auction;
import com.kh.brocoli.member.model.vo.Member;
import com.kh.brocoli.product.model.vo.Brand;
import com.kh.brocoli.product.model.vo.Product;


@Repository("mDao")
public class MemberDao {

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
	public ArrayList<Auction> selectList() {
		return (ArrayList)sqlSession.selectList("mainMapper.auctionlist");
	}
	
	public ArrayList<Product> selectpList() {
		return (ArrayList)sqlSession.selectList("mainMapper.ranklist");
	}
	
	public ArrayList<Product> selectEList() {
		return (ArrayList)sqlSession.selectList("mainMapper.eventlist");
	}

	public int deleteMember(String mId) {
		return sqlSession.delete("memberMapper.deleteMember",mId);
	}

	public int updateMember(Member m) {
		return sqlSession.update("memberMapper.updateMember",m);
	}

	public ArrayList<Brand> selectbList() {
		return (ArrayList)sqlSession.selectList("mainMapper.brandlist");
	}

	public ArrayList<Brand> selectbpList(String b_Name) {
		return (ArrayList)sqlSession.selectList("mainMapper.bproductlist",b_Name);
	}


	public int pwdCheck(String password) {
		return sqlSession.selectOne("memberMapper.pwdCheck",password);
	}


	public String mailCheck2(String email) {
		return sqlSession.selectOne("memberMapper.mailCheck2",email);
	}

	

}


