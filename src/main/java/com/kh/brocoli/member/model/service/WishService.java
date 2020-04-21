package com.kh.brocoli.member.model.service;

import java.util.ArrayList;

import com.kh.brocoli.member.model.vo.Wish;

public interface WishService {

	public int wInsert(Wish w);

	public ArrayList<Wish> wishList(int mNo);

	public int deleteWish(int mNo);

}
