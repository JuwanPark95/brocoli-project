package com.kh.brocoli.admin.model.service;

import java.util.ArrayList;

import com.kh.brocoli.magazine.model.vo.Magazine;

public interface AdminMagazineService {

	/**
	 * 작성자 : 신은지
	 * 1. 메거진 신청 list
	 * @return
	 */
	ArrayList<Magazine> magazineList();

}
