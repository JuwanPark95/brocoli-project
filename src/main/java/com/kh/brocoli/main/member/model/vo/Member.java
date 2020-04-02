package com.kh.brocoli.main.member.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Member {
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
	private String del_date;
	private Date enrolldate;
	private String brand;
	private String brand_no;
	
	
	public Member() {
		super();
	}


	public Member(String mid, String pwd, String mname, String email, String phone, String address, String gender,
			String birthday, String mgrant, String mpoint, String order_count, String order_price, String report_yn,
			String block_yn, String block_content, String del_flag_yn, String del_date, Date enrolldate, String brand,
			String brand_no) {
		super();
		this.mid = mid;
		this.pwd = pwd;
		this.mname = mname;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.gender = gender;
		this.birthday = birthday;
		this.mgrant = mgrant;
		this.mpoint = mpoint;
		this.order_count = order_count;
		this.order_price = order_price;
		this.report_yn = report_yn;
		this.block_yn = block_yn;
		this.block_content = block_content;
		this.del_flag_yn = del_flag_yn;
		this.del_date = del_date;
		this.enrolldate = enrolldate;
		this.brand = brand;
		this.brand_no = brand_no;
	}


	public String getMid() {
		return mid;
	}


	public void setMid(String mid) {
		this.mid = mid;
	}


	public String getPwd() {
		return pwd;
	}


	public void setPwd(String pwd) {
		this.pwd = pwd;
	}


	public String getMname() {
		return mname;
	}


	public void setMname(String mname) {
		this.mname = mname;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getBirthday() {
		return birthday;
	}


	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}


	public String getMgrant() {
		return mgrant;
	}


	public void setMgrant(String mgrant) {
		this.mgrant = mgrant;
	}


	public String getMpoint() {
		return mpoint;
	}


	public void setMpoint(String mpoint) {
		this.mpoint = mpoint;
	}


	public String getOrder_count() {
		return order_count;
	}


	public void setOrder_count(String order_count) {
		this.order_count = order_count;
	}


	public String getOrder_price() {
		return order_price;
	}


	public void setOrder_price(String order_price) {
		this.order_price = order_price;
	}


	public String getReport_yn() {
		return report_yn;
	}


	public void setReport_yn(String report_yn) {
		this.report_yn = report_yn;
	}


	public String getBlock_yn() {
		return block_yn;
	}


	public void setBlock_yn(String block_yn) {
		this.block_yn = block_yn;
	}


	public String getBlock_content() {
		return block_content;
	}


	public void setBlock_content(String block_content) {
		this.block_content = block_content;
	}


	public String getDel_flag_yn() {
		return del_flag_yn;
	}


	public void setDel_flag_yn(String del_flag_yn) {
		this.del_flag_yn = del_flag_yn;
	}


	public String getDel_date() {
		return del_date;
	}


	public void setDel_date(String del_date) {
		this.del_date = del_date;
	}


	public Date getEnrolldate() {
		return enrolldate;
	}


	public void setEnrolldate(Date enrolldate) {
		this.enrolldate = enrolldate;
	}


	public String getBrand() {
		return brand;
	}


	public void setBrand(String brand) {
		this.brand = brand;
	}


	public String getBrand_no() {
		return brand_no;
	}


	public void setBrand_no(String brand_no) {
		this.brand_no = brand_no;
	}


	@Override
	public String toString() {
		return "Member [mid=" + mid + ", pwd=" + pwd + ", mname=" + mname + ", email=" + email + ", phone=" + phone
				+ ", address=" + address + ", gender=" + gender + ", birthday=" + birthday + ", mgrant=" + mgrant
				+ ", mpoint=" + mpoint + ", order_count=" + order_count + ", order_price=" + order_price
				+ ", report_yn=" + report_yn + ", block_yn=" + block_yn + ", block_content=" + block_content
				+ ", del_flag_yn=" + del_flag_yn + ", del_date=" + del_date + ", enrolldate=" + enrolldate + ", brand="
				+ brand + ", brand_no=" + brand_no + "]";
	}
	
	
}
