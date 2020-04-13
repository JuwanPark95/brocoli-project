package com.kh.brocoli.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.member.model.dao.MypageDao;
import com.kh.brocoli.member.model.vo.Member;

@Service("myService")
public class MypageServiceimpl implements MypageService {
	
	@Autowired
	private MypageDao myDao;
	
	@Override
	public int deleteMember(Member m) {
		return myDao.deleteMember(m);
	}

	@Override
	public int updateMember(Member m) {
		return myDao.updateMember(m);
	}

	@Override
	public int pwdCheck(String password) {
		return myDao.pwdCheck(password);
	}

}
