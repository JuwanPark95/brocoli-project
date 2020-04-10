package com.kh.brocoli.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.brocoli.member.model.vo.Member;
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
		return (ArrayList) sqlSession.selectList("AdminBrand.selectBrandList");
	}

	/**
	 * 작성자: 신은지 
	 * 2. 브랜드 상세보기 dao
	 * @param brand_NO
	 * @return
	 */
	public Brand selectBrandDetail(int brand_NO) {
		return sqlSession.selectOne("AdminBrand.selectBrandDetail", brand_NO);
	}

	/**
	 * 작성자 : 신은지 
	 * 3. 브랜드 수정 dao
	 * @param b
	 * @return
	 */
	public int updateBrandUpdate(Brand b) {
		return sqlSession.update("AdminBrand.updateBrand", b);
	}
	
	
	/**
	 * 작성자 : 신은지 
	 * 4. 브랜드 삭제 dao
	 * @param brand_NO
	 * @return
	 */
		/*
		 * public int deleteBrand(int brand_NO) { return
		 * sqlSession.update("AdminBrand.deleteBrand", ); }
		 */

	/**
	 * 작성자 : 신은지
	 * 5. ajax 브랜드이름 유효성 검사 dao
	 * @param brandName
	 * @return
	 */
	public int brandNameCheck(String brandName) {
		return sqlSession.selectOne("AdminBrand.brandNameCheck",brandName);
	}

	/**
	 * 작성자 : 신은지
	 * 6. ajax 브랜드 ownerId1 유효성 검사 dao
	 * @param ownerId
	 * @return
	 */
	public int ownerId1Check(String ownerId) {
		return sqlSession.selectOne("AdminBrand.ownerId1Check",ownerId);
	}
	
	/**
	 * 작성자 : 신은지
	 * 7. ajax 브랜드 ownerId2 유효성 검사 dao
	 * @param ownerId
	 * @return
	 */
	public int ownerId2Check(String ownerId) {
		return sqlSession.selectOne("AdminBrand.ownerId2Check",ownerId);
	}
	
	/**
	 * 작성자 : 신은지
	 * 8. ajax 브랜드 ownerId3 유효성 검사 dao
	 * @param ownerId
	 * @return
	 */
	public int ownerId3Check(String ownerId) {
		return sqlSession.selectOne("AdminBrand.ownerId3Check",ownerId);
	}

	/**
	 * 	작성자 : 신은지
	 *	9. 브랜드 등록
	 * @param b
	 * @return
	 */
	public int brandEnroll(Brand b) {
		return sqlSession.insert("AdminBrand.brandEnroll",b);
	}

	/**
	 * 작성자 : 신은지
	 * 10. 브랜드 등록시 owner 권한 수정
	 * @param b
	 * @return
	 */
	public int brandOwnerUpdate(Brand b) {
		return sqlSession.update("AdminBrand.brandOwnerUpdate",b);
	}

}
