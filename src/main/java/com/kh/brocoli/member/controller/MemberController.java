package com.kh.brocoli.member.controller;



import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.kh.brocoli.general.model.vo.Auction;
import com.kh.brocoli.member.model.service.MemberService;
import com.kh.brocoli.member.model.vo.Member;


@SessionAttributes("loginUser")
@Controller
public class MemberController {
	
	@Autowired
	private MemberService mService;
	
	
	
	/**
	 * 메인페이지 로딩
	 * @return
	 */
	@RequestMapping(value="MainPage")
	public ModelAndView MainPage(Auction ac,ModelAndView mv) {
		
		ArrayList<Auction> list = mService.selectList();
		
		mv.addObject("Auctionlist",list);
		mv.setViewName("main/Main");
		System.out.println(list);
		return mv;
	}
	
	/**
	 * 로그인 페이지 뷰
	 * @return
	 */
	@RequestMapping(value="loginPage.mn")
	public String loginPage() {
		return "Login";
	}
	
	
	/**
	 * 로그아웃
	 * @param status
	 * @return
	 */
	@RequestMapping(value="logoutPage")
	public String logoutPage(SessionStatus status) {
		
		status.setComplete();
		
		return "redirect:index.jsp";
	}
	
	/**
	 * 로그인 기능
	 * @param m
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String memberLogin( Member m, Model model) {

		Member loginUser = mService.loginMember(m);
		System.out.println("loginuser : " + loginUser );
		if (loginUser != null) {
			model.addAttribute("loginUser",loginUser);
			return "main/Main";

		} else {
			model.addAttribute("msg","로그인 실패!!");
			return "common/errorPage";
		}

	}
/************************footer 페이지 이동*******************************/
	/**
	 * 작성자: 임현섭
	 * 작성일 : 20-04-02
	 * 회사소개 페이지 이동
	 * @return
	 */
	@RequestMapping("mIntroduceView.mn")
	public String mIntroduceView() {
		return "Main-Introduce";
	}
	
	/**
	 * 개인정보보호정책 페이지 이동
	 * @return
	 */
	@RequestMapping("pPolicyView.mn")
	public String pPolicyView() {
		return "Privacy-Policy";
	}
	
	/**
	 * Contact 페이지 이동
	 * @return
	 */
	@RequestMapping("mContactView.mn")
	public String mContactView() {
		return "Main-Contact";
	}
	
	/**
	 * 배송조회 페이지 이동
	 * @return
	 */
	@RequestMapping("mTrackListView.mn")
	public String mTrackListView() {
		return "My-Track-List";
	}
	
	/**
	 * 교환 환불 페이지 이동
	 * @return
	 */
	@RequestMapping("pChangeView.mn")
	public String pChangeView() {
		return "My-Product-Change";
	}
	
	/**
	 * 문의하기 페이지 이동
	 * @return
	 */
	@RequestMapping("QnAView.mn")
	public String QnAView() {
		return "Board-QnA-List";
	}
	
	/**
	 * 자주묻는질문 페이지 이동
	 * @return
	 */
	@RequestMapping("FAQView.mn")
	public String FAQView() {
		return "Board-FAQ-List";
	}
	
	/**
	 * 입점문의 페이지 이동
	 * @return
	 */
	@RequestMapping("eStoreView.mn")
	public String eStoreView() {
		return "Main-EnterStore";
	}
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
//	@RequestMapping("mypage.mn")
//	public String MyPageView() {
//		return "MyPage";
//	}
//
//	/**
//	 * 장바구니로 이동
//	 * @return
//	 */
//	@RequestMapping("myCart.mn")
//	public String MyCartView() {
//		return "MyCart";
//	}
//
//	@RequestMapping("myOrderList.mn")
//	public String MyOrderView() {
//		return "MyOrderList";
//	}
	
	
//**************************************마이페이지 이동경로*****************************************//	
	
	 /** 작성자 : 김주희
	 *  작성일 : 2020-04-02
	 *  내용 : 마이페이지에서 개인정보수정으로 이동
	 * @return
	 */
	@RequestMapping("mypage.mn")
	public String mypage() {
		return "MyPage";
	}
	
	
	
	/** 작성자 : 김주희
	 *  작성일 : 2020-04-02
	 *  내용 : 마이페이지에서 개인정보수정으로 이동
	 * @return
	 */
	@RequestMapping("myInfo.mn")
	public String myinfo() {
		return "MyInformation";
	}
	
	
	/** 작성자 : 김주희
	 *  작성일 : 2020-04-02
	 *  내용 : 마이페이지에서 주문현황으로 이동
	 * @return
	 */
	@RequestMapping("myOrderList.mn")
	public String myorderlist() {
		return "MyOrderList";
	}
	
	
	
	/** 작성자 : 김주희
	 *  작성일 : 2020-04-02
	 *  내용 : 마이페이지에서 관심상품으로 이동
	 * @return
	 */
	@RequestMapping("myWishList.mn")
	public String mywishlist() {
		return "MyWishlist";
	}
	
	
	
	/** 작성자 : 김주희
	 *  작성일 : 2020-04-02
	 *  내용 : 마이페이지에서 관심상품으로 이동
	 * @return
	 */
	@RequestMapping("myCart.mn")
	public String myCart() {
		return "MyCart";
	}
	
	
	
	/** 작성자 : 김주희
	 *  작성일 : 2020-04-02
	 *  내용 : 마이페이지에서 내가쓴글로 이동
	 * @return
	 */
	@RequestMapping("B_Alllist.mn")
	public String alllist() {
		return "Board-All-List";
	}
	

//************************************************주문상세 이동경로********************************************************//	
	
	
	/** 작성자 : 김주희
	 *  작성일 : 2020-04-03
	 *  내용 : 주문현황에서 상세페이지
	 * @return
	 */
	@RequestMapping("trackprocess.mn")
	public String T_process() {
		return "My-Track-Process";
	}
	
	
	
	/** 작성자 : 김주희
	 *  작성일 : 2020-04-03
	 *  내용 : 주문현황에서 교환 
	 * @return
	 */
	@RequestMapping("my_p_change.mn")
	public String P_change() {
		return "My-Product-Change";
	}
	
	
	
	/** 작성자 : 김주희
	 *  작성일 : 2020-04-02
	 *  내용 : 교환->반품  
	 * @return
	 */
	@RequestMapping("my_p_reject.mn")
	public String P_reject() {
		return "My-Product-Reject";
	}
	

}
