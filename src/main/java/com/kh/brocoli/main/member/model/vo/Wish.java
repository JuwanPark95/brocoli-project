package com.kh.brocoli.main.member.model.vo;

public class Wish {
	private int w_No;
	private String w_Option1;
	private String w_Option2;
	private int w_Mno;
	private int w_P_no;
	public int getW_No() {
		return w_No;
	}
	public void setW_No(int w_No) {
		this.w_No = w_No;
	}
	public String getW_Option1() {
		return w_Option1;
	}
	public void setW_Option1(String w_Option1) {
		this.w_Option1 = w_Option1;
	}
	public String getW_Option2() {
		return w_Option2;
	}
	public void setW_Option2(String w_Option2) {
		this.w_Option2 = w_Option2;
	}
	public int getW_Mno() {
		return w_Mno;
	}
	public void setW_Mno(int w_Mno) {
		this.w_Mno = w_Mno;
	}
	public int getW_P_no() {
		return w_P_no;
	}
	public void setW_P_no(int w_P_no) {
		this.w_P_no = w_P_no;
	}
	public Wish() {
		super();
	}
	public Wish(int w_No, String w_Option1, String w_Option2, int w_Mno, int w_P_no) {
		super();
		this.w_No = w_No;
		this.w_Option1 = w_Option1;
		this.w_Option2 = w_Option2;
		this.w_Mno = w_Mno;
		this.w_P_no = w_P_no;
	}
	@Override
	public String toString() {
		return "Wish [w_No=" + w_No + ", w_Option1=" + w_Option1 + ", w_Option2=" + w_Option2 + ", w_Mno=" + w_Mno
				+ ", w_P_no=" + w_P_no + "]";
	}
	
	
}
