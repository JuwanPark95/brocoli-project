package com.kh.brocoli.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.brocoli.magazine.model.vo.Magazine;

@Repository
public class AdminMagazineDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	/**
	 *  작성자 : 신은지
	 *  1. 메거진 신청 list
	 * @return
	 */
	public ArrayList<Magazine> magazineList() {
		return (ArrayList)sqlSession.selectList("AdminMagazine.magazineList");
	}
	
}
