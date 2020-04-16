package com.kh.brocoli.member.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Random;

import javax.servlet.http.HttpSession;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.kh.brocoli.general.model.vo.Auction;
import com.kh.brocoli.member.model.service.MemberService;
import com.kh.brocoli.member.model.vo.Email;
import com.kh.brocoli.member.model.vo.EmailSender;
import com.kh.brocoli.member.model.vo.Member;
import com.kh.brocoli.product.model.vo.Brand;
import com.kh.brocoli.product.model.vo.Product;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService mService;
	
	/**
	 * 메인페이지 로딩
	 * @return
	 */
	@RequestMapping(value="MainPage")
	public ModelAndView MainPage(Auction ac,Product rank,ModelAndView mv) {
		
		ArrayList<Auction> alist = mService.selectList();
		
		ArrayList<Product> plist = mService.selectpList();
		
		ArrayList<Product> elist = mService.selectEList();
		
		mv.addObject("Auctionlist",alist);
		mv.addObject("RankList",plist);
		mv.addObject("EventList",elist);
		mv.setViewName("main/Main");
		return mv;
	}

	
	
	/**
	 * 로그인 기능
	 * @param m
	 * @param model
	 * @return
	 */
//	@RequestMapping(value = "login", method = RequestMethod.POST)
//	public String memberLogin( Member m, Model model) {
//
//		Member loginUser = mService.loginMember(m);  
//		System.out.println("loginuser : " + loginUser );
//		if (loginUser != null) {
//			model.addAttribute("loginUser",loginUser);
//			return "main/Main";
//
//		} else {
//			model.addAttribute("msg","로그인 실패!!");
//			return "common/errorPage";
//		}
//
//	}
	
	/*************************Header 페이지 이동 (못찾을시 Footer 참조)********************************/
	/**
	 * 공지사항 페이지 이동
	 * @return
	 */
	@RequestMapping("NoticeView.mn")
	public String NoticeView() {
		return "Board-Notice-List";
	}
	
	
	/**
	 * 랭킹 페이지로 이동
	 * @return
	 */
	@RequestMapping("rankView.mn")
	public String RankView() {
		return "Main-Rank";
	}
	
	/**
	 * 브랜드 이름 페이지로 이동
	 * @return
	 */
	@RequestMapping("brandView.mn")
	public ModelAndView BrandView(Brand br,ModelAndView mv) {
		
		ArrayList<Brand> blist = mService.selectbList();
		mv.addObject("BrandList",blist);
		mv.setViewName("Main-Brand");
		return mv;
	}
	
	/**
	 * 브랜드 상품 페이지로 이동
	 * 작성자 : 윤석훈
	 * @param br
	 * @param mv
	 * @return
	 */
	@RequestMapping("bproduct.mn")
	public ModelAndView BrandProductView(Brand br,ModelAndView mv,String b_Name) {
		
		ArrayList<Brand> bplist = mService.selectbpList(b_Name);
		mv.addObject("bProductList",bplist);
		mv.setViewName("Main-BrandProduct");
		System.out.println("bplist : " + bplist);
		return mv;
	}
	
	/**
	 * 상품 페이지로 이동
	 * @return
	 */
	@RequestMapping("productView.mn")
	public ModelAndView ProductView(Product pr,ModelAndView mv) {
		
		ArrayList<Product> aplist = mService.selectapList();
		mv.addObject("aProductList",aplist);
		mv.setViewName("Main-Product");
		return  mv;
	}
	
	/**
	 * 메거진 페이지로 이동
	 * @return
	 */
	@RequestMapping("magazineView.mn")
	public String MagazineView() {
		return "Main-Magazine";
	}
	
	/**
	 * 찜목록 페이지로 이동
	 * @return
	 */
	@RequestMapping("wishlistView.mn")
	public String WishlistView() {
		return "MyWishlist";
	}
	
	/**
	 * 검색결과창으로 이동
	 * @return
	 */
	@RequestMapping("searchPage.mn")
	public String SearchPage() {
		return "Main-Search"; 
	}
	
	@RequestMapping("adminPage")
	public String loginAdmin() {
		return "redirect:index-admin.jsp";
	}
	
	@RequestMapping("productDetail.mn")
	public ModelAndView ProductDetail(Product pd,String p_NO,ModelAndView mv) {
		mv.setViewName("Main-Product-Detail");
		return mv;
	}
	
/************************************사이드 바*******************************/	
//	/**
//	 * 마이페이지로 이동
//	 * @return
//	 */
//	@RequestMapping("myPageView.mn")
//	public String MyPageView() {
//		return "MyPage";
//	}
//
//	/**
//	 * 장바구니로 이동
//	 * @return
//	 */
//	@RequestMapping("myCartView")
//	public String MyCartView() {
//		return "MyCart";
//	}
//
//	/**주문조회 페이지로 이동
//	 * @return
//	 */
//	@RequestMapping("myOrderView.mn")
//	public String MyOrderView() {
//		return "MyOrderList";
//	}



}
