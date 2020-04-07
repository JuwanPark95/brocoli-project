package com.kh.brocoli.owner.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.brocoli.product.model.vo.Product;
import com.kh.brocoli.product.model.vo.Product_File;
import com.kh.brocoli.product.model.vo.Product_Option;


@Repository("oDao")
public class ownerDao {
	
	@Autowired SqlSessionTemplate sqlSession;

	public int insertProduct(Product p) {	//박주완-2020-04-03 상품정보등록
		return sqlSession.insert("owner-mapper.insertProduct",p);
	}
	
	public int insertProductImg(Product_File pf) {	//박주완-2020-04-06 상품사진정보등록
		return sqlSession.insert("owner-mapper.insertProductImg",pf);
	}

	public int insertProductOption(Product_Option po, int PNO) { //박주완-2020-04-06 상품옵션 리스트 정보등록
		int result = 0;
		List<Product_Option> poList =  po.getProduct_OptionVOList();	//VIEW 단에서 보내준 옵션값을 LIST형태로 VO 변수에 저장후 출력.
        for(Product_Option Option : poList) {
        	Option.setOp_P_NO(PNO);
        	result = sqlSession.insert("owner-mapper.insertProductOption",Option);
        }
		return result;
	}

//	public int insertProductOP(ArrayList<Product_Option> po) {	//박주완-2020-04-03-상품옵션정보등록
//		return sqlSession.insert("owner-mapper.insertProductOP",po);
//	}

}
