package com.kh.brocoli.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.brocoli.admin.model.service.AdminMagazineService;
import com.kh.brocoli.magazine.model.vo.Magazine;

@Controller
@SessionAttributes("loginUser")
public class AdminMagazineController {
	
	   @Autowired
	   private AdminMagazineService AMGService;

   /** 작성자 : 신은지
    * 	1. 메거진 신청 list
	 * @param mv
	 * @return
	 */
	@RequestMapping("magazine-management.ad")
	   public ModelAndView magazineList(ModelAndView mv) {
		   
		   ArrayList<Magazine> magazineList = AMGService.magazineList();
		   
		   mv.addObject("magazineList", magazineList).setViewName("magazine-management");
		   
		   System.out.println("magazineList"+magazineList);
		   return mv;
	   }

}
