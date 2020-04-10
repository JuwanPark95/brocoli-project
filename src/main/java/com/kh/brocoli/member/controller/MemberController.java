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
		System.out.println(alist);
		System.out.println(plist);
		System.out.println(elist);
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
	 * 홈 화면으로 
	 * @return
	 */
	@RequestMapping("Main")
	public String Main() {
		return "main/Main";
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
	 * 브랜드 페이지로 이동
	 * @return
	 */
	@RequestMapping("brandView.mn")
	public String BrandView() {
		return "Main-Brand";
	}
	
	/**
	 * 상품 페이지로 이동
	 * @return
	 */
	@RequestMapping("productView.mn")
	public String ProductView() {
		return  "Main-Product";
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
