package com.kh.brocoli.owner.model.dao;



import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.brocoli.product.model.vo.Product;
import com.kh.brocoli.product.model.vo.Product_File;


@Repository("oDao")
public class ownerDao {
	
	@Autowired SqlSessionTemplate sqlSession;

	public int insertProduct(Product p) {
		return sqlSession.insert("owner-mapper.insertProduct",p);
	}
	
	public int insertProductImg(Product_File pf) {
		return sqlSession.insert("owner-mapper.insertProductImg",pf);
	}

}
