package com.kh.brocoli.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.member.model.dao.MemberDao;
import com.kh.brocoli.member.model.vo.Member;


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

	

}
