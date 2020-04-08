package com.kh.brocoli.member.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.kh.brocoli.member.model.service.MemberService;
import com.kh.brocoli.member.model.vo.Member;


@SessionAttributes("loginUser")
@Controller
public class MemberController {
	
	@Autowired
	private MemberService mService;
	
	// 암호화 처리 
		@Autowired
		private BCryptPasswordEncoder bcryptPasswordEncoder;
	
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
	
/************************ 로그인 창  이동***************************/
	/**
	 * 작성자 : 임현섭
	 * 작성일 200408
	 * 아이디 찾기 페이지 이동
	 * @return
	 */
	@RequestMapping("findId.mn")
	public String findId() {
		return "Login-IdFind";
	}
	@RequestMapping("findPwd")
	public String findPwd() {
		return "Login-PwdFind";
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
	/**
	 * 마이페이지로 이동
	 * @return
	 */
	@RequestMapping("myPageView.mn")
	public String MyPageView() {
		return "MyPage";
	}

	/**
	 * 장바구니로 이동
	 * @return
	 */
	@RequestMapping("myCartView")
	public String MyCartView() {
		return "MyCart";
	}

	/**주문조회 페이지로 이동
	 * @return
	 */
	@RequestMapping("myOrderView.mn")
	public String MyOrderView() {
		return "MyOrderList";
	}
	
	/**
	 * 회원가입 페이지로 이동
	 * @return
	 */
	@RequestMapping("joinView.mn")
	public String JoinView() {
		return "Login-Join"; 
	}
	
	/**
	 * 작성자 : 임현섭
	 * 작성일 : 20-04-03
	 * Id 중복체크
	 * @return
	 */
	@ResponseBody
	@RequestMapping("idCheck.do")
	public String idCheck(String id) throws IOException {
		
		int result = mService.idCheck(id);
		
		
		
		
		if(result > 0) {
			return "fail";
		}else {
			return "ok";
		}
	}
	
	
	  @ResponseBody
	  
	  @RequestMapping("mailCheck.do") public String mailCheck(String email) throws
	  IOException{
	  
	  int result = mService.mailCheck(email);
	  
	  if(result > 0) { return "fail"; }else { return "ok"; } }
	 
	
	@RequestMapping("join.mn")
	public String insertMember(Member m,Model model,
							   @RequestParam("post") String post,
							   @RequestParam("address1") String address1,
							   @RequestParam("address2") String address2) {
		// 회원 가입 전 회원정보를 출력
		System.out.println(m);
		System.out.println(post + ", " + address1 + ", " + address2);
		
		
		String encPwd = bcryptPasswordEncoder.encode(m.getPwd());
		
		m.setPwd(encPwd);
		
		// 주소데이터들 ","를 구분자로 저장
		if(!post.contentEquals("")) {
			m.setAddress(post+","+address1 + "," + address2);
		}
		System.out.println(m.getAddress());
		int result = mService.insertMember(m);
		
		if(result > 0) {
			return "redirect:index.jsp";
	}else {
			model.addAttribute("msg","회원가입실패!!");
			return "common/errorPage";}
		
		
	}
		
	// 암호화 처리 후 로그인 부분
	@RequestMapping(value="login",method=RequestMethod.POST)
	public String memberLogin(Member m,Model model) {
		
		Member loginUser = mService.loginMember(m);

		if(loginUser != null && bcryptPasswordEncoder.matches(m.getPwd(), loginUser.getPwd())) {
			model.addAttribute("loginUser", loginUser);
			return "redirect:index.jsp";
		}else {
			System.out.println("에러에러~~");
			model.addAttribute("msg","로그인 실패!!");
			return "common/errorPage";
		}
	}
	
	
}
