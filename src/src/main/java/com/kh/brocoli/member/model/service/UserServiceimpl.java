package com.kh.brocoli.member.model.service;

import java.util.ArrayList;
import java.util.Random;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.general.model.vo.Auction;
import com.kh.brocoli.member.model.dao.MemberDao;
import com.kh.brocoli.member.model.dao.UserDao;
import com.kh.brocoli.member.model.vo.Member;
import com.kh.brocoli.product.model.vo.Brand;
import com.kh.brocoli.product.model.vo.Product;


@Service("uService")
public class UserServiceimpl implements UserService {
	
	@Autowired
	private UserDao uDao;
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public Member loginMember(Member m) {
		
		Member loginUser = uDao.loginMember(m);
		
		return loginUser;
	}

	@Override
	public String mailCheck2(String email) {
		String result = uDao.mailCheck2(email);
		System.out.println("result : " + result);
		if(result != null) {
			return result;
		}else {
			return null;
		}
	}

	@Override
	public int pwdFind(Member m) {
		int result = uDao.pwdFind(m);
		return result;
	}

	
	

	@Override
	public int newPassword(Member m) throws Exception {
		 return uDao.newPassword(m);
		
	}

	@Override
	public int idCheck(String id) {
		return uDao.idCheck(id);
	}

	@Override
	public int insertMember(Member m) {
int result = uDao.insertMember(m);
		
		return result;
	}

	@Override
	public int mailCheck(String email) {
		return uDao.mailCheck(email);
	}

	
}
