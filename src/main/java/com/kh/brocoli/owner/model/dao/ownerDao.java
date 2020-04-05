package com.kh.brocoli.owner.model.dao;



import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.brocoli.product.model.vo.Product;
import com.kh.brocoli.product.model.vo.Product_File;
import com.kh.brocoli.product.model.vo.Product_Option;


@Repository("oDao")
public class ownerDao {
	
	@Autowired SqlSessionTemplate sqlSession;

	public int insertProduct(Product p) {	//박주완-2020-04-03-상품정보등록
		return sqlSession.insert("owner-mapper.insertProduct",p);
	}
	
	public int insertProductImg(Product_File pf) {	//박주완-2020-04-03-상품사진정보등록
		return sqlSession.insert("owner-mapper.insertProductImg",pf);
	}

	public int insertProductOP(ArrayList<Product_Option> po) {	//박주완-2020-04-03-상품옵션정보등록
		return sqlSession.insert("owner-mapper.insertProductOP",po);
	}

}
