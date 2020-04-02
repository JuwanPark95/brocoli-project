package com.kh.brocoli.owner.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.brocoli.product.model.vo.Product;

@SessionAttributes("loginUser")
@Controller
public class ownerController {

	/** 작성자 : 박주완
	 *  작성일 : 2020-04-02
	 *  내용  : 상품업로드
	 * @return
	 */
	@RequestMapping("ownerPage")
	public String ownerPage() {
		return "redirect:index-owner.jsp";
	}
	
//	@RequestMapping("product-insert.ow")
//	public String productInsert(Product p, HttpServletRequest request,
//							@RequestParam(name="uploadImage",required=false) MultipartFile file) {
//		
//		if(!file.getOriginalFilename().equals("")) {
//			
//			String renameFileName = saveFIle(file, request);
//			
//			if(renameFileName != null) {
//				p.setO
//			}
//		}
//	}
//	
	
	
	
	
	
}
