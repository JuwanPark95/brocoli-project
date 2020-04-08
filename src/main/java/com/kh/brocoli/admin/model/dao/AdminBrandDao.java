package com.kh.brocoli.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.brocoli.product.model.vo.Brand;

@Repository("ABDao")
public class AdminBrandDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	/**
	 * 작성자 : 신은지
	 * 1. 브랜드 list dao
	 * @return
	 */
	public ArrayList<Brand> selectBrandList() {
		return (ArrayList)sqlSession.selectList("AdminBrand.selectBrandList");
	}

	/**
	 * 작성자: 신은지
	 * 2. 브랜드 상세보기 dao
	 * @param brand_NO
	 * @return
	 */
	public Brand selectBrandDetail(int brand_NO) {
		return sqlSession.selectOne("AdminBrand.selectBrandDetail",brand_NO);
	}
	
	
}
