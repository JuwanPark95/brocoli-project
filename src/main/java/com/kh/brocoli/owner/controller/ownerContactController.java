package com.kh.brocoli.owner.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.brocoli.general.model.vo.Contact;
import com.kh.brocoli.member.model.vo.Member;
import com.kh.brocoli.owner.model.service.ownerContactService;

@Controller
@SessionAttributes("loginUser")
public class ownerContactController {

	@Autowired ownerContactService oService;
	
	@RequestMapping("contactListSelect.ow")
	@ResponseBody
	public void contactListSelect(HttpServletResponse response,Contact ct) throws JsonIOException, IOException {
		ArrayList<Contact> list = oService.contactListSelect(ct);
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		Gson gson = new GsonBuilder().create();
		gson.toJson(list,response.getWriter());
	}
	
	@RequestMapping("contactUserSelect.ow")
	@ResponseBody
	public void contactUserSelect(HttpServletResponse response,Member m) throws JsonIOException, IOException{
		
		ArrayList<Member> mlist = oService.contactUserSelect(m);
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		Gson gson = new GsonBuilder().create();
		gson.toJson(mlist,response.getWriter());
		System.out.println("======================================");
	}
	
	@RequestMapping("contactViewCheckUpdate.ow")
	@ResponseBody
	public int contactViewCheckUpdate(int con_NO) {
		int coNO = con_NO;
		int result = oService.contactViewCheckUpdate(con_NO);
		
		if(result > 0) {
			result = coNO;
			System.out.println("읽음 변경한 게시물 번호 : " + result);
		}
		return result;
	}
	
	
	
}
