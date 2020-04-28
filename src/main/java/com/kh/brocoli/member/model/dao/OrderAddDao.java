package com.kh.brocoli.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("OaDao")
public class OrderAddDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

}
