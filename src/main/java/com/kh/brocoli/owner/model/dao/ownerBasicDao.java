package com.kh.brocoli.owner.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.brocoli.owner.vo.ownerAge;
import com.kh.brocoli.owner.vo.ownerCategore;
import com.kh.brocoli.product.model.vo.Brand;

@Repository("ownerBasicDao")
public class ownerBasicDao {

	@Autowired SqlSessionTemplate sqlSession;

	public int selectMassegeCount(int bNO) {
		return sqlSession.selectOne("ownerBasic-mapper.selectMassegeCount",bNO);
	}

	public int selectReviewCount(int bNO) {
		return sqlSession.selectOne("ownerBasic-mapper.selectReviewCount",bNO);
	}

	public int selectOrderCount(int bNO) {
		return sqlSession.selectOne("ownerBasic-mapper.selectOrderCount",bNO);
	}

	public int selectQnACount(int bNO) {
		return sqlSession.selectOne("ownerBasic-mapper.selectQnACount",bNO);
	}

	public String selectBrandLogo(int bNO) {
		return sqlSession.selectOne("ownerBasic-mapper.selectBrandLogo",bNO);
	}

	public Brand selectBrandInfo(int bNO) {
		return sqlSession.selectOne("ownerBasic-mapper.selectBrandInfo",bNO);
	}

	/*
	 * public ownerAge selectAge(int bNO) { return
	 * sqlSession.selectOne("ownerBasic-mapper.selectAge",bNO); }
	 * 
	 * public ownerCategore selectCategore(int bNO) { return
	 * sqlSession.selectOne("ownerBasic-mapper.selectCategore",bNO); }
	 */
	
}
