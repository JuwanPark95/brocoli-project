package com.kh.brocoli.member.controller;

import java.io.IOException;
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

import com.kh.brocoli.member.model.service.UserService;
import com.kh.brocoli.member.model.vo.Email;
import com.kh.brocoli.member.model.vo.EmailSender;
import com.kh.brocoli.member.model.vo.Member;

@SessionAttributes("loginUser")
@Controller
public class UserController {
	
	@Autowired
	private UserService uService;

	 @Autowired
	 private EmailSender emailSender;
	 @Autowired
	 private Email email;
	
	 @Autowired
	 private JavaMailSender mailSender;
	 
		
	// 암호화 처리 
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	
	/************************ 로그인 창  이동***************************/
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
	/************************ 로그인 창  이동***************************/

	
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
		
		int result = uService.idCheck(id);
		
		
		
		
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
	  
	  int result = uService.mailCheck(email);
	  
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
		
		  String result = uService.mailCheck2(email);
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
		int result = uService.insertMember(m);
		
		if(result > 0) {
			return "redirect:index.jsp";
	}else {
			model.addAttribute("msg","회원가입실패!!");
			return "common/errorPage";}
		
		
	}
		
	// 암호화 처리 후 로그인 부분
	@RequestMapping(value="login",method=RequestMethod.POST)
	public String memberLogin(Member m,Model model) {
		
		Member loginUser = uService.loginMember(m);

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
			 uService.newPassword(m);

			
			
			
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
