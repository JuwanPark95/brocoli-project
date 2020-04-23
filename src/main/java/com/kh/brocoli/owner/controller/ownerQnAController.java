package com.kh.brocoli.owner.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.brocoli.owner.model.service.ownerQnAService;
import com.kh.brocoli.product.model.vo.QNAProduct;
import com.kh.brocoli.product.model.vo.QNAProduct_Reply;
import com.kh.brocoli.product.model.vo.Review;
import com.kh.brocoli.product.model.vo.Review_Reply;

@Controller
@SessionAttributes("loginUser")
public class ownerQnAController {
	
	@Autowired ownerQnAService oService;
	
	@RequestMapping("noReadQNA.ow")
	public ModelAndView noReadQNA(ModelAndView mv, int bNO) {

		ArrayList<QNAProduct> list = oService.noReadQnASelect(bNO);
		ArrayList<QNAProduct_Reply> rlist = oService.noReadQnAReplySelect(bNO);
		for (QNAProduct_Reply QNAProduct_Reply : rlist) {
			String rNo = QNAProduct_Reply.getPqr_ParentNo();
			int rNO = QNAProduct_Reply.getPqr_Mno();
			int result = oService.QnACheckUpdate(rNo);
			int result2 = oService.QReplyCheckUpdate(rNO);
			if(result == 0) {
				System.out.println("QnA 답글작성 여부 변경 실패");
			}
			if(result2 == 0) {
				System.out.println("QnA 읽음여부 변경 실패");
			}			
		}
		
		if(list != null) {
			mv.addObject("list",list);
			mv.addObject("rlist",rlist);
			mv.setViewName("QnA-management");
		}else {
			mv.setViewName("404-Page");
		}
		
		return mv;
	}
	
	@RequestMapping("readQNA.ow")
	public ModelAndView readQNA(ModelAndView mv, int bNO) {
		
		
		
		return mv;
	}
	
	
}
