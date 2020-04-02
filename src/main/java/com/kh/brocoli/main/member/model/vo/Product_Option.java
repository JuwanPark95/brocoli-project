package com.kh.brocoli.main.member.model.vo;

import java.sql.Date;

public class Product_Option {
    private int op_No;
	private String option_1;
	private String option_2;
	private String op_Stock;
	private Date op_Rec_date;
	private String op_Status_YN;
	private int op_P_no;
	public int getOp_No() {
		return op_No;
	}
	public void setOp_No(int op_No) {
		this.op_No = op_No;
	}
	public String getOption_1() {
		return option_1;
	}
	public void setOption_1(String option_1) {
		this.option_1 = option_1;
	}
	public String getOption_2() {
		return option_2;
	}
	public void setOption_2(String option_2) {
		this.option_2 = option_2;
	}
	public String getOp_Stock() {
		return op_Stock;
	}
	public void setOp_Stock(String op_Stock) {
		this.op_Stock = op_Stock;
	}
	public Date getOp_Rec_date() {
		return op_Rec_date;
	}
	public void setOp_Rec_date(Date op_Rec_date) {
		this.op_Rec_date = op_Rec_date;
	}
	public String getOp_Status_YN() {
		return op_Status_YN;
	}
	public void setOp_Status_YN(String op_Status_YN) {
		this.op_Status_YN = op_Status_YN;
	}
	public int getOp_P_no() {
		return op_P_no;
	}
	public void setOp_P_no(int op_P_no) {
		this.op_P_no = op_P_no;
	}
	public Product_Option() {
		super();
	}
	public Product_Option(int op_No, String option_1, String option_2, String op_Stock, Date op_Rec_date,
			String op_Status_YN, int op_P_no) {
		super();
		this.op_No = op_No;
		this.option_1 = option_1;
		this.option_2 = option_2;
		this.op_Stock = op_Stock;
		this.op_Rec_date = op_Rec_date;
		this.op_Status_YN = op_Status_YN;
		this.op_P_no = op_P_no;
	}
	@Override
	public String toString() {
		return "Product_Option [op_No=" + op_No + ", option_1=" + option_1 + ", option_2=" + option_2 + ", op_Stock="
				+ op_Stock + ", op_Rec_date=" + op_Rec_date + ", op_Status_YN=" + op_Status_YN + ", op_P_no=" + op_P_no
				+ "]";
	}
	
	
}
