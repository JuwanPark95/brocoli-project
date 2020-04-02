package com.kh.brocoli.owner.controller;

import java.io.File;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.kh.brocoli.owner.model.service.ownerService;
import com.kh.brocoli.product.model.vo.Product;
import com.kh.brocoli.product.model.vo.Product_File;

@SessionAttributes("loginUser")
@Controller
public class ownerController {

	
		@Autowired ownerService oService;
	
	/** 작성자 : 박주완
	 *  작성일 : 2020-04-02
	 *  내용  : 상품업로드
	 * @return
	 */
	@RequestMapping("ownerPage")
	public String ownerPage() {
		return "redirect:index-owner.jsp";
	}
	
	/** 작성자 : 박주완
	 *  작성일 : 2020-04-02
	 *  내용  : 상품등록
	 * @param p
	 * @param request
	 * @param file
	 * @return
	 */
	@RequestMapping("product-insert.ow")
	public String productInsert(Product p,Product_File pf, HttpServletRequest request,
							@RequestParam(name="uploadImage",required=false) MultipartFile file) {
		
		if(!file.getOriginalFilename().equals("")) {
			
			String renameImageName = saveImages(file, request);
			
			if(renameImageName != null) {
				pf.setPf_Img1(file.getOriginalFilename());//DB에 파일명 저장
				pf.setPf_Img1_ReName(renameImageName);
			}
		}
		
		int result = oService.productInsert(p,pf);
		
		if(result > 0) {
			return "redirect:";
		}else {
			return "redirect:";
		}
	}
	

	public String saveImages(MultipartFile file, HttpServletRequest request) {
		//경로지정
		String root = request.getSession().getServletContext().getRealPath("resources/product-Img");
		String savePath = root + "\\product_uploadImages";
		
		File folder = new File(savePath);
		
		if(!folder.exists()) {
			folder.mkdir();	//폴더가 없으면 새로생성시킨다
		}
		
		String originImageName = file.getOriginalFilename();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		
		String renameImageName = sdf.format(new java.sql.Date(System.currentTimeMillis())) + "." + 
									originImageName.substring(originImageName.lastIndexOf(".")+1); 
		
		String renamePath = folder + "\\" + renameImageName;
		
		try {
			file.transferTo(new File(renamePath));
		} catch (Exception e) {
			System.out.println("상품 이미지 등록 에러 : " +  e.getMessage());
		}
		
		return "renameImageName";
	}
	
	
	
	
	
}
