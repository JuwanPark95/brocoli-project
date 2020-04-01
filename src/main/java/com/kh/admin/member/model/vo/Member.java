package com.kh.admin.member.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Member {
	private int mno;
	private String mid;
	private String pwd;
	private String mname;
	private String email;
	private String phone;
	private String address;
	private String gender;
	private String birthday;
	private String mgrant;
	private String mpoint;
	private String order_count;
	private String order_price;
	private String report_yn;
	private String block_yn;
	private String block_content;
	private String del_flag_yn;
	private Date del_date;
	private Date enrollDate;
	private String brand;
	private String brand_no;
}
