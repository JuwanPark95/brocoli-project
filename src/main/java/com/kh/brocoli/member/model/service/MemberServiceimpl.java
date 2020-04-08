package com.kh.brocoli.member.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.general.model.vo.Auction;
import com.kh.brocoli.member.model.dao.MemberDao;
import com.kh.brocoli.member.model.vo.Member;
import com.kh.brocoli.product.model.vo.Brand;
import com.kh.brocoli.product.model.vo.Product;


@Service("mService")
public class MemberServiceimpl implements MemberService {
	
	@Autowired
	private MemberDao mDao;
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public Member loginMember(Member m) {
		
		Member loginUser = mDao.loginMember(m);
		
		return loginUser;
	}

	@Override

	public int idCheck(String id) {
		
		return mDao.idCheck(id);
	}

	@Override
	public int insertMember(Member m) {
		int result = mDao.insertMember(m);
		
		return result;
	}

	@Override
	public int mailCheck(String email) {
		return mDao.mailCheck(email);
	}

	

	public ArrayList<Auction> selectList() {
		return mDao.selectList();
	}

	
	@Override
	public ArrayList<Product> selectpList() {
		return mDao.selectpList();
	}
	
	@Override
	public ArrayList<Product> selectEList() {
		return mDao.selectEList();
	}
	
	@Override
	public int deleteMember(String mId) {
		return mDao.deleteMember(mId);
	}

	@Override
	public int updateMember(Member m) {
		return mDao.updateMember(m);
	}

	@Override
	public int pwdCheck(String password) {
		return mDao.pwdCheck(password);
	}


	@Override
	public ArrayList<Brand> selectbList() {
		return mDao.selectbList();
	}

	@Override
	public ArrayList<Brand> selectbpList(String b_Name) {
		return mDao.selectbpList(b_Name);
	}




}
