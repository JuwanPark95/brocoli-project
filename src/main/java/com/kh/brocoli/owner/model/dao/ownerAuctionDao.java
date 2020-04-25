package com.kh.brocoli.owner.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("ownerAuctionDao")
public class ownerAuctionDao {

	@Autowired SqlSessionTemplate sqlSession;
	
}
