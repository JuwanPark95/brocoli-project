package com.kh.brocoli.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.kh.brocoli.member.model.service.MypageService;
import com.kh.brocoli.member.model.vo.Member;

@SessionAttributes("loginUser")
@Controller
public class MypageController {
	
	
	@Autowired
	private MypageService myService;
	
	// 암호화 처리 
//	@Autowired
//	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	
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
		int result = myService.pwdCheck(password);
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
		public String memberUpdate(Member m,Model model,SessionStatus status,
				   @RequestParam("post") String post,
				   @RequestParam("address1") String addr1,
				   @RequestParam("address2") String addr2) {
			
			
	   // 주소데이터들 ','를 구분자로 저장
	   if(!post.equals("")) {
	   m.setAddress(post+","+addr1+","+addr2);
	   }
	
	   System.out.println("id :" + m.getmId());
	   int result = myService.updateMember(m);
	   System.out.println("result : " +  result);
	
	   if(result > 0) {
	   model.addAttribute("loginUser",m);
	   status.setComplete();
	   return "redirect:index.jsp";
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
		public String p_ChangeView() {
			return "My-P-Change";
		}

		
		/**
		* 사용자 비밀번호 변경
		* @author 김주희
		* @param model
		* @param session
		* @param pwd2
		* @return
		*/
		@RequestMapping(value="password_change.mn" ,method=RequestMethod.POST)
		public String p_Change(Model model,
				   HttpSession session,
				   @RequestParam("p_change2") String pwd2) {
		   // Session에서 사용자 정보 추출해서 새로받은 password를 갱신
		   Member m = (Member)session.getAttribute("loginUser");
		    m.setPwd(pwd2);
		
		   // password 업데이트 
		   int result = myService.updateMember(m);
		   
		   if(result > 0) {
		   	
		   	session.setAttribute("loginUser", m);
		   	
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
		public String memberDelete(String mId, Model model,SessionStatus status) {
			
				//SessionStatus : 세션의 상태값을 찾아서 sestComplete를 사용해서 세션을 초기
				int result = myService.deleteMember(mId);
				if(result > 0) {
					status.setComplete();
			    	return "redirect:index.jsp";
			    }else {
			    model.addAttribute("msg","비밀번호 변경 실패");
			    	return "common/errorPage";
			    }
		
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
	

}
