package com.kh.brocoli.main.member.model.vo;

import java.sql.Date;

public class Product {
	private int p_No;
	private String p_Code;
	private String p_Name;
	private String p_Price;
	private String p_Sail_price;
	private String p_Last_price;
	private String p_Bcategory;
	private String p_Scategory;
	private String p_Comment;
	private String p_Order_count;
	private String p_Status;
	private String p_Writer;
	private Date p_Insert_date;
	private String p_Modify_id;
	private Date p_Modify_date;
	private String p_Show_YN;
	private int p_Brand_no;
	public int getP_No() {
		return p_No;
	}
	public void setP_No(int p_No) {
		this.p_No = p_No;
	}
	public String getP_Code() {
		return p_Code;
	}
	public void setP_Code(String p_Code) {
		this.p_Code = p_Code;
	}
	public String getP_Name() {
		return p_Name;
	}
	public void setP_Name(String p_Name) {
		this.p_Name = p_Name;
	}
	public String getP_Price() {
		return p_Price;
	}
	public void setP_Price(String p_Price) {
		this.p_Price = p_Price;
	}
	public String getP_Sail_price() {
		return p_Sail_price;
	}
	public void setP_Sail_price(String p_Sail_price) {
		this.p_Sail_price = p_Sail_price;
	}
	public String getP_Last_price() {
		return p_Last_price;
	}
	public void setP_Last_price(String p_Last_price) {
		this.p_Last_price = p_Last_price;
	}
	public String getP_Bcategory() {
		return p_Bcategory;
	}
	public void setP_Bcategory(String p_Bcategory) {
		this.p_Bcategory = p_Bcategory;
	}
	public String getP_Scategory() {
		return p_Scategory;
	}
	public void setP_Scategory(String p_Scategory) {
		this.p_Scategory = p_Scategory;
	}
	public String getP_Comment() {
		return p_Comment;
	}
	public void setP_Comment(String p_Comment) {
		this.p_Comment = p_Comment;
	}
	public String getP_Order_count() {
		return p_Order_count;
	}
	public void setP_Order_count(String p_Order_count) {
		this.p_Order_count = p_Order_count;
	}
	public String getP_Status() {
		return p_Status;
	}
	public void setP_Status(String p_Status) {
		this.p_Status = p_Status;
	}
	public String getP_Writer() {
		return p_Writer;
	}
	public void setP_Writer(String p_Writer) {
		this.p_Writer = p_Writer;
	}
	public Date getP_Insert_date() {
		return p_Insert_date;
	}
	public void setP_Insert_date(Date p_Insert_date) {
		this.p_Insert_date = p_Insert_date;
	}
	public String getP_Modify_id() {
		return p_Modify_id;
	}
	public void setP_Modify_id(String p_Modify_id) {
		this.p_Modify_id = p_Modify_id;
	}
	public Date getP_Modify_date() {
		return p_Modify_date;
	}
	public void setP_Modify_date(Date p_Modify_date) {
		this.p_Modify_date = p_Modify_date;
	}
	public String getP_Show_YN() {
		return p_Show_YN;
	}
	public void setP_Show_YN(String p_Show_YN) {
		this.p_Show_YN = p_Show_YN;
	}
	public int getP_Brand_no() {
		return p_Brand_no;
	}
	public void setP_Brand_no(int p_Brand_no) {
		this.p_Brand_no = p_Brand_no;
	}
	public Product() {
		super();
	}
	public Product(int p_No, String p_Code, String p_Name, String p_Price, String p_Sail_price, String p_Last_price,
			String p_Bcategory, String p_Scategory, String p_Comment, String p_Order_count, String p_Status,
			String p_Writer, Date p_Insert_date, String p_Modify_id, Date p_Modify_date, String p_Show_YN,
			int p_Brand_no) {
		super();
		this.p_No = p_No;
		this.p_Code = p_Code;
		this.p_Name = p_Name;
		this.p_Price = p_Price;
		this.p_Sail_price = p_Sail_price;
		this.p_Last_price = p_Last_price;
		this.p_Bcategory = p_Bcategory;
		this.p_Scategory = p_Scategory;
		this.p_Comment = p_Comment;
		this.p_Order_count = p_Order_count;
		this.p_Status = p_Status;
		this.p_Writer = p_Writer;
		this.p_Insert_date = p_Insert_date;
		this.p_Modify_id = p_Modify_id;
		this.p_Modify_date = p_Modify_date;
		this.p_Show_YN = p_Show_YN;
		this.p_Brand_no = p_Brand_no;
	}
	@Override
	public String toString() {
		return "Product [p_No=" + p_No + ", p_Code=" + p_Code + ", p_Name=" + p_Name + ", p_Price=" + p_Price
				+ ", p_Sail_price=" + p_Sail_price + ", p_Last_price=" + p_Last_price + ", p_Bcategory=" + p_Bcategory
				+ ", p_Scategory=" + p_Scategory + ", p_Comment=" + p_Comment + ", p_Order_count=" + p_Order_count
				+ ", p_Status=" + p_Status + ", p_Writer=" + p_Writer + ", p_Insert_date=" + p_Insert_date
				+ ", p_Modify_id=" + p_Modify_id + ", p_Modify_date=" + p_Modify_date + ", p_Show_YN=" + p_Show_YN
				+ ", p_Brand_no=" + p_Brand_no + "]";
	}
	
	
}
