package com.kh.brocoli.owner.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.member.model.dao.MemberDao;
import com.kh.brocoli.member.model.vo.Member;


@Service("mService")
public class ownerServiceimpl implements ownerService {
	
	@Autowired
	private MemberDao mDao;
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public Member loginMember(Member m) {
		
		Member loginUser = mDao.loginMember(m);
		
		return loginUser;
	}

}
