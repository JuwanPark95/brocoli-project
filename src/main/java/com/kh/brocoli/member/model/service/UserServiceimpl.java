package com.kh.brocoli.member.model.service;

import java.util.ArrayList;
import java.util.Random;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.general.model.vo.Auction;
import com.kh.brocoli.magazine.model.vo.Magazine;
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

	@Override
	public int sEnter(Brand b) {
		int result = uDao.sEnter(b);
		return result;
	}

	@Override
	public int bNameCheck(String name) {
		
		return uDao.bNameCheck(name);
	}

	@Override
	public int getListCount3() {
		return uDao.getListCount3();
	}

	@Override
	public ArrayList<Magazine> selectmList(String ob) {
		return uDao.selectmList(ob);
	}

	@Override
	public Magazine selectMagazine(int m_NO) {
		
		int result = uDao.updateCount(m_NO);
		
		return uDao.selectMagazine(m_NO);
	}


	@Override
	public int selectM1() {
		return uDao.selectM1();
	}

	@Override
	public int selectM2() {
		return uDao.selectM2();
	}

	@Override
	public int selectM3() {
		return uDao.selectM3();
	}

	@Override
	public int selectM4() {
		return uDao.selectM4();
	}

	@Override
	public int selectM5() {
		return uDao.selectM5();
	}

	@Override
	public int selectM6() {
		return uDao.selectM6();
	}

	@Override
	public int selectM7() {
		return uDao.selectM7();
	}

	@Override
	public int selectM8() {
		return uDao.selectM8();
	}

	@Override
	public int selectM9() {
		return uDao.selectM9();
	}

	@Override
	public int selectM10() {
		return uDao.selectM10();
	}

	@Override
	public int selectM11() {
		return uDao.selectM11();
	}

	@Override
	public int selectM12() {
		return uDao.selectM12();
	}

	
}
