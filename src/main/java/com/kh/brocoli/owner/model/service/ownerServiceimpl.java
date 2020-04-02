package com.kh.brocoli.owner.model.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.kh.brocoli.owner.model.dao.ownerDao;
import com.kh.brocoli.product.model.vo.Product;
import com.kh.brocoli.product.model.vo.Product_File;


@Service("oService")
public class ownerServiceimpl implements ownerService {

	@Autowired ownerDao oDao;
	
	/**
	 *작성자 : 박주완
	 *작성일 : 2020-04-03
	 *내용 : 파일 등록시 프로덕트,프로덕트파일 2가지 테이블에 insert 하기위한 메소드
	 */
	@Override
	public int productInsert(Product p, Product_File pf) {
		//2개의 DAO 반환값중 1가지만 '0'이 반환되어도 실패!
		int reuslt = oDao.insertProductImg(pf) * oDao.insertProduct(p);
		return reuslt;
	}



}
