package com.kh.brocoli.owner.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.brocoli.member.model.vo.Orders;
import com.kh.brocoli.product.model.vo.Statistics;

@Repository("ownerBannerDao")
public class ownerBannerDao {
	
	@Autowired SqlSessionTemplate sqlSession;

	
}
