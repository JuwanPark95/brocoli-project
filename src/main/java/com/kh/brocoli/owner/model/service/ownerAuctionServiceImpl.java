package com.kh.brocoli.owner.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.owner.model.dao.ownerAuctionDao;

@Service("ownerAuctionService")
public class ownerAuctionServiceImpl implements ownerAuctionService{

	@Autowired ownerAuctionDao oDao;
	
}
