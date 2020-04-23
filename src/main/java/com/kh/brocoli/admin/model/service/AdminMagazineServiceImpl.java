package com.kh.brocoli.admin.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.admin.model.dao.AdminMagazineDao;
import com.kh.brocoli.magazine.model.vo.Magazine;

@Service("AMGService")
public class AdminMagazineServiceImpl implements AdminMagazineService {
	
	
	@Autowired
	private AdminMagazineDao AMGDao;

	/**
	 * 작성자 신은지 
	 * 1. 메거진 신청 list
	 */
	@Override
	public ArrayList<Magazine> magazineList() {
		return AMGDao.magazineList();
	}

}
