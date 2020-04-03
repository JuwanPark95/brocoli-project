package com.kh.brocoli.product.model.vo;

import java.sql.Date;

public class Product_Option {
	private String Option_1;
	private String Option_2;
	private String op_Stock;
	private Date op_Rec_Date;
	private String op_Status_YN;
	private int op_P_NO;
	
	
	public Product_Option() {
		super();
	}


	public Product_Option(String option_1, String option_2, String op_Stock, Date op_Rec_Date,
			String op_Status_YN, int op_P_NO) {
		super();
		Option_1 = option_1;
		Option_2 = option_2;
		this.op_Stock = op_Stock;
		this.op_Rec_Date = op_Rec_Date;
		this.op_Status_YN = op_Status_YN;
		this.op_P_NO = op_P_NO;
	}





	public String getOption_1() {
		return Option_1;
	}


	public void setOption_1(String option_1) {
		Option_1 = option_1;
	}


	public String getOption_2() {
		return Option_2;
	}


	public void setOption_2(String option_2) {
		Option_2 = option_2;
	}


	public String getOp_Stock() {
		return op_Stock;
	}


	public void setOp_Stock(String op_Stock) {
		this.op_Stock = op_Stock;
	}


	public Date getOp_Rec_Date() {
		return op_Rec_Date;
	}


	public void setOp_Rec_Date(Date op_Rec_Date) {
		this.op_Rec_Date = op_Rec_Date;
	}


	public String getOp_Status_YN() {
		return op_Status_YN;
	}


	public void setOp_Status_YN(String op_Status_YN) {
		this.op_Status_YN = op_Status_YN;
	}


	public int getOp_P_NO() {
		return op_P_NO;
	}


	public void setOp_P_NO(int op_P_NO) {
		this.op_P_NO = op_P_NO;
	}


	@Override
	public String toString() {
		return "Product_Option [Option_1=" + Option_1 + ", Option_2=" + Option_2 + ", op_Stock="
				+ op_Stock + ", op_Rec_Date=" + op_Rec_Date + ", op_Status_YN=" + op_Status_YN + ", op_P_NO=" + op_P_NO
				+ "]";
	}
	
	
	
	
}
