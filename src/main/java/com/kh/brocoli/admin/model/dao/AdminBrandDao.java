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
	 * 작성자 : 신은지 1. 브랜드 list dao
	 * 
	 * @return
	 */
	public ArrayList<Brand> selectBrandList() {
		return (ArrayList) sqlSession.selectList("AdminBrand.selectBrandList");
	}

	/**
	 * 작성자: 신은지 2. 브랜드 상세보기 dao
	 * 
	 * @param brand_NO
	 * @return
	 */
	public Brand selectBrandDetail(int brand_NO) {
		return sqlSession.selectOne("AdminBrand.selectBrandDetail", brand_NO);
	}

	/**
	 * 작성자 : 신은지 3. 브랜드 수정 dao
	 * 
	 * @param b
	 * @return
	 */
	public int updateBrandUpdate(Brand b) {
		return sqlSession.update("AdminBrand.updateBrand", b);
	}
	/*
		*//**
			 * 작성자 : 신은지 4. 브랜드 삭제 dao
			 * 
			 * @param brand_NO
			 * @return
			 *//*
				 * public int deleteBrand(int brand_NO) { return
				 * sqlSession.update("AdminBrand.deleteBrand", ); }
				 */

}
