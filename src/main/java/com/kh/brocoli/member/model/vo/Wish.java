package com.kh.brocoli.member.model.vo;

public class Wish {
	private String w_Option1;
	private String w_Option2;
	private int w_Mno;
	private int w_P_NO;
	
	public Wish() {
		super();
	}

	public Wish(String w_Option1, String w_Option2, int w_Mno, int w_P_NO) {
		super();
		this.w_Option1 = w_Option1;
		this.w_Option2 = w_Option2;
		this.w_Mno = w_Mno;
		this.w_P_NO = w_P_NO;
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

	public int getW_P_NO() {
		return w_P_NO;
	}

	public void setW_P_NO(int w_P_NO) {
		this.w_P_NO = w_P_NO;
	}

	@Override
	public String toString() {
		return "Wish [w_Option1=" + w_Option1 + ", w_Option2=" + w_Option2 + ", w_Mno=" + w_Mno
				+ ", w_P_NO=" + w_P_NO + "]";
	}
	
	
	
	
}
