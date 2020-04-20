package com.kh.brocoli.member.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.brocoli.member.model.vo.Wish;

@Repository("wDao")
public class WishDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int wInsert(Wish w) {
		return sqlSession.insert("Wish-mapper.wInsert",w);
	}

	public ArrayList<Wish> wishList(int mNo) {
		return (ArrayList)sqlSession.selectList("Wish-mapper.wishList", mNo);
	}

}
