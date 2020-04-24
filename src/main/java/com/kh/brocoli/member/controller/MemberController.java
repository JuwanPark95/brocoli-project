package com.kh.brocoli.member.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.brocoli.general.model.vo.Auction;
import com.kh.brocoli.member.model.service.MemberService;
import com.kh.brocoli.member.model.vo.Email;
import com.kh.brocoli.member.model.vo.EmailSender;
import com.kh.brocoli.member.model.vo.Member;
import com.kh.brocoli.product.model.vo.Brand;
import com.kh.brocoli.product.model.vo.Product;
import com.kh.brocoli.product.model.vo.ProductDetail;
import com.kh.brocoli.product.model.vo.QNAProduct;

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
	 * 랭킹 요일 페이지로 이동
	 * @return
	 */
	@RequestMapping("rankday.mn")
	public ModelAndView dayRank(Product pd, ModelAndView mv) {
		
		ArrayList<Product> daylist = mService.selectdayList();
		
		mv.addObject("dayList",daylist);
		
		mv.setViewName("Main-Rank-day");
		return mv;
	}
	
	/**
	 * 랭킹 월별 페이지로 이동
	 * @param pd
	 * @param mv
	 * @return
	 */
	@RequestMapping("rankmonth.mn")
	public ModelAndView monthRank(Product pd, ModelAndView mv) {
		
		
		ArrayList<Product> monthlist = mService.selectmonthList();
		
		mv.addObject("monthList",monthlist);
		
		mv.setViewName("Main-Rank-month");
		return mv;
	}
	
	/**
	 * 랭킹 년별 페이지로 이동
	 * @param pd
	 * @param mv
	 * @return
	 */
	@RequestMapping("rankyear.mn")
	public ModelAndView yearRank(Product pd, ModelAndView mv) {
		
		ArrayList<Product> yearlist = mService.selectyearList();
		
		mv.addObject("yearList",yearlist);
		
		mv.setViewName("Main-Rank-year");
		return mv;
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
	 * 찜목록 페이지로 이동
	 * @return
	 */
	@RequestMapping("wishlistView.mn")
	public String WishlistView() {
		return "MyWishlist";
	}
	
	@RequestMapping("adminPage")
	public String loginAdmin() {
		return "redirect:index-admin.jsp";
	}
	
	/**
	 * 상품 상세화면
	 * @return
	 */
	@RequestMapping("productDetail.mn")
	public ModelAndView ProductDetail(ProductDetail pd,String p_NO,ModelAndView mv) {
		
		ArrayList<ProductDetail> pDetail = mService.selectpDetail(p_NO);
		mv.addObject("aProducDetailtList",pDetail);
		mv.setViewName("Main-Product-Detail");
		return mv;
	}
	
	@RequestMapping("productModal")
	public void productModal(HttpServletResponse response,String p_NO) throws JsonIOException, IOException{
		
		ArrayList<ProductDetail> pDetail = mService.selectpDetail(p_NO);
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		System.out.println("pDetail : " + pDetail );
		Gson gson = new GsonBuilder().create();
		gson.toJson(pDetail,response.getWriter());
		
	}
	
	@RequestMapping("optionDetail")
	public void optionDetail(HttpServletResponse response,String p_NO,String option_1) throws JsonIOException, IOException{
		HashMap<String,String> hmap = new HashMap<>();
		hmap.put("p_NO", p_NO);
		hmap.put("option_1", option_1);
		
		
		ArrayList<ProductDetail> option = mService.selectOption(hmap);
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		Gson gson = new GsonBuilder().create();
		gson.toJson(option,response.getWriter());
	}
	@RequestMapping("qnacomment")
	public String qnacomment(QNAProduct pq,HttpServletResponse response,HttpServletRequest request,
			@RequestParam(name = "uploadFile1", required = false) MultipartFile file1 ,
			@RequestParam(name = "uploadFile2", required = false) MultipartFile file2,String pq_Writer) throws JsonIOException, IOException{
		

			System.out.println("파일1이유 : " + file1);
			System.out.println("파일2이유 : " + file2);
			
			int count=1;
			if(!file1.getOriginalFilename().equals("")) {
				
				String q_Img1_Rename = saveFile(file1, request,pq_Writer,count);
				
				if(q_Img1_Rename != null) {
					pq.setPq_Img1(file1.getOriginalFilename());
					pq.setPq_Img1_ReName(q_Img1_Rename);
				}
			}
			
			if(!file2.getOriginalFilename().equals("")) {
				
				String q_Img2_Rename = saveFile(file2, request,pq_Writer,count+1);
				
				if(q_Img2_Rename != null) {
					pq.setPq_Img2(file2.getOriginalFilename());
					pq.setPq_Img2_ReName(q_Img2_Rename);
				}
			}
			
			int result = mService.insertQnaCommant(pq);
			
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			
			Gson gson = new GsonBuilder().create();
			gson.toJson(result,response.getWriter());
			
			if(result > 0) {
				return "ok";
			}else {
				return "false";
			}
			
		
	}
	
	/**
	 * 파일 업로드
	 * @param file
	 * @param request
	 * @return
	 */
	private String saveFile(MultipartFile file, HttpServletRequest request,String pq_Writer,int count) {

		String root = request.getSession().getServletContext().getRealPath("resources");

		String savePath = root + "\\review-Img";

		File folder = new File(savePath);

		if (!folder.exists()) {
			folder.mkdir();
		}

		String q_Img1 = file.getOriginalFilename();

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String ReName = pq_Writer+"_"+count+ "_" +sdf.format(new java.sql.Date(System.currentTimeMillis())) + "."
				+ q_Img1.substring(q_Img1.lastIndexOf(".") + 1);


		String renamePath = folder + "\\" + ReName;

		try {
			file.transferTo(new File(renamePath)); // 이때 전달받은 file이 rename명으로 저장이된다.
		} catch (Exception e) {
			System.out.println("파일 전송 에러 : " + e.getMessage());
		}

		return ReName;
	}
	
	



}
