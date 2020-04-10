package com.kh.brocoli.member.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Random;

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
import com.kh.brocoli.product.model.vo.Product;



@SessionAttributes("loginUser")
@Controller
public class MemberController {
	
	@Autowired
	private MemberService mService;
	
	 @Autowired
	   private EmailSender emailSender;
	   @Autowired
	   private Email email;

	   @Autowired
	   private JavaMailSender mailSender;

	  
	
	
	
	
	
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
	//**************************************마이페이지 이동경로*****************************************//	
	
		 /** 작성자 : 김주희
		 *  작성일 : 2020-04-02
		 *  내용 : 마이페이지로 이동
		 * @return
		 */
		@RequestMapping("mypage.mn")
		public String mypage() {
			return "MyPage";
		}
		
		
		/** 작성자 : 김주희
		 *  작성일 : 2020-04-02
		 *  내용 : 마이페이지에서 개인정보수정으로 이동중 비밀번호 체크
		 * @return
		 * @param pwd
		 */

		@RequestMapping("p_check.mn")
		public String pwdCheckPage() {
			return "My-P-Check";
		}
		
		@RequestMapping(value="password_check.mn",method=RequestMethod.POST)
		public ModelAndView pwdCheck(@RequestParam("password") String password, ModelAndView mv, Member m) {
			System.out.println("pwd1 : " + password);
			int result = mService.pwdCheck(password);
			System.out.println("result : " + result);
			
		
			if(result > 0 ) {
				mv.setViewName("MyInformation");
			}else {
			
			mv.addObject("msg","로그인 실패!!");
			mv.setViewName("My-P-Check");
			}
			return mv;
			
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
		 *  내용 : 개인정보수정
		 * @return
		 */
		@RequestMapping("mupdate.mn")
		public String memberUpdate(Member m,Model model,
				   @RequestParam("post") String post,
				   @RequestParam("address1") String addr1,
				   @RequestParam("address2") String addr2) {
			
			
	    // 주소데이터들 ','를 구분자로 저장
	    if(!post.equals("")) {
	    m.setAddress(post+","+addr1+","+addr2);
	    }

	    int result = mService.updateMember(m);
	    System.out.println("result : " +  result);

	    if(result > 0) {
	    model.addAttribute("loginUser",m);
	    return "redirect:logout";
	    }else {
	    model.addAttribute("msg","회원 정보 수정 실패!");
	    return "common/errorPage";
	   }
	}
		
		
		
		/** 작성자 : 김주희
		 *  작성일 : 2020-04-02
		 *  내용 : 정보수정 -> 비밀번호변경
		 * @return
		 */
		@RequestMapping("p_change.mn")
		public String p_change(Member m,Model model,
				   @RequestParam("password1") String pwd1,
				   @RequestParam("password2") String pwd2) {
	    
	    

	    int result = mService.updateMember(m);

	    if(result > 0) {
	    model.addAttribute("loginUser",m);
	    return "redirect:index.jsp";
	    }else {
	    model.addAttribute("msg","비밀번호 변경 실패");
	    return "common/errorPage";
	    }

		}
		
		
		
		/** 작성자 : 김주희
		 *  작성일 : 2020-04-02
		 *  내용 : 회원탈퇴
		 * @return
		 */
		@RequestMapping("mdelete.mn")
		public String memberDelete(String mId, Model model) {
			int result = mService.deleteMember(mId);
			
			if(result > 0) {
				return "redirect:index.jsp";
			}else {
				model.addAttribute("msg","회원 탈퇴 실패");
				return null;
			}
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
		 *  내용 : 마이페이지에서 장바구니로 이동
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
		

	/*****************************로그인***************************************/
	
	@RequestMapping("idEmail.mn")
	public String idEmail() {
		return "Login-IdEmail";
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
	
	
	  /**
	   * 작성자 : 임현섭
	   * 회원가입창 Email 중복조회
	 * @param email
	 * @return
	 * @throws IOException
	 */
	@ResponseBody
	  @RequestMapping("mailCheck.do") 
	  public String mailCheck(String email) throws
	  IOException{
	  
	  int result = mService.mailCheck(email);
	  
	  if(result > 0) {
		  return "fail"; 
		  }else { 
		  return "ok"; 
		  } 
	  	}
	 
	  /**
	   * 작성자: 임현섭
	   * ID찾기
	 * @param email
	 * @return
	 * @throws IOException
	 */
	@ResponseBody
	  @RequestMapping("loginIdCheck.do")
	  public String mailCheck2(String email) throws IOException{
		
		  String result = mService.mailCheck2(email);
		  System.out.println(result);
		  
		  	
		  
		  StringBuffer sb = new StringBuffer( result );

		  String mId = sb.replace( result.length()-4, result.length()-2, "**" ).toString();

			 	
		  if(result == null ) {
			  return "fail"; 
		  }else { 
			  return mId; 
		  } 
	  }
	
	/**
	 * 작성자 : 임현섭
	 * 회원가입
	 * @param m
	 * @param model
	 * @param post
	 * @param address1
	 * @param address2
	 * @return
	 */
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
	
	//@RequestMapping("pwdFind.mn")
	//public ModelAndView pwdFind(ModelAndView mv,String mId, String email) {
	//	Member m = new Member();
	//	m.setmId(mId);
	//	m.setEmail(email);
	//	System.out.println("m:::"+ m);
	//	int result = mService.pwdFind(m);
	//	System.out.println("result :::"+result);
	//	/*****************************난수생성************************************/
	//	StringBuffer temp =new StringBuffer();
    //    Random rnd = new Random();
    //    for(int i=0;i<10;i++){
    //        int rIndex = rnd.nextInt(3);
    //        switch (rIndex) {
    //        case 0:
    //            // a-z
    //            temp.append((char) ((int) (rnd.nextInt(26)) + 97));
    //            break;
    //        case 1:
    //            // A-Z
    //            temp.append((char) ((int) (rnd.nextInt(26)) + 65));
    //            break;
    //        case 2:
    //            // 0-9
    //            temp.append((rnd.nextInt(10)));
    //            break;
    //        }
    //    }
    //    String AuthenticationKey = temp.toString();
    //    System.out.println(AuthenticationKey);
    //   
    //    session.setAttribute("AuthenticationKey", AuthenticationKey);

		/*******************************난수생성끝***********************************/
        
    //    email.setContent("인증번호는 "+pw+" 입니다.");
    //    email.setReceiver(email);
    //    email.setSubject(id+"님 비밀번호 찾기 메일입니다.");
    //    emailSender.SendEmail(email);


        
	//	if(result >0) {
	//		mv.setViewName("Login-PwdEmail");
	//	}else {
	//		mv.setViewName("common/errorPage");
	//	}
	//	return mv;
	//}
	
	// 새로운 비밀번호가 생성된다.

		@RequestMapping("pwdFind.mn")

		public String newPassword( Member m, HttpSession session) throws Exception {

//			Random r = new Random();
//
//			int num = r.nextInt(89999) + 10000;

			 //인증 번호 생성기
	        StringBuffer temp =new StringBuffer();
	        Random rnd = new Random();
	        for(int i=0;i<10;i++)
	        {
	            int rIndex = rnd.nextInt(3);
	            switch (rIndex) {
	            case 0:
	                // a-z
	                temp.append((char) ((int) (rnd.nextInt(26)) + 97));
	                break;
	            case 1:
	                // A-Z
	                temp.append((char) ((int) (rnd.nextInt(26)) + 65));
	                break;
	            case 2:
	                // 0-9
	                temp.append((rnd.nextInt(10)));
	                break;
	            }
	        }
	        String AuthenticationKey = temp.toString();
	        System.out.println("인증번호 값 " + AuthenticationKey);
			
//			String npassword = "bapsi" + Integer.toString(num);// 새로운 비밀번호 변경
			
			String encPwd = bcryptPasswordEncoder.encode(AuthenticationKey);
			
			m.setPwd(encPwd);
			
//			m.setPwd(npassword);

			session.setAttribute("m", m);
			session.setAttribute("pass", AuthenticationKey);
			 mService.newPassword(m);

			
			
			
			return "redirect:findPassword.mn";

		}



		// 이메일로 비밀번호가 전송이된다.

		@RequestMapping("findPassword.mn")

		public String findPasswordOK(Member m, HttpSession session) throws Exception {

			m = (Member) session.getAttribute("m");
			String str = (String)session.getAttribute("pass");
				email.setContent("새로운 비밀번호는 " + str + " 입니다." );
				
				email.setReceiver(m.getEmail());

				email.setSubject("안녕하세요"+m.getEmail() +"님  재설정된 비밀번호를 확인해주세요");

				emailSender.SendEmail(email);

				System.out.println(email);

				session.invalidate();
				
			
				return "Login";
		}


}
