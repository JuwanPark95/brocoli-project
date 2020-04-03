package com.kh.brocoli.member.model.vo;

public class Cart {
	private String ct_Option_1;
	private String ct_Option_2;
	private String ct_Amount;
	private int ct_Mno;
	private int ct_P_NO;
	
	public Cart() {
		super();
	}
	public Cart(String ct_Option_1, String ct_Option_2, String ct_Amount, int ct_Mno, int ct_P_NO) {
		super();
		this.ct_Option_1 = ct_Option_1;
		this.ct_Option_2 = ct_Option_2;
		this.ct_Amount = ct_Amount;
		this.ct_Mno = ct_Mno;
		this.ct_P_NO = ct_P_NO;
	}
	public String getCt_Option_1() {
		return ct_Option_1;
	}
	public void setCt_Option_1(String ct_Option_1) {
		this.ct_Option_1 = ct_Option_1;
	}
	public String getCt_Option_2() {
		return ct_Option_2;
	}
	public void setCt_Option_2(String ct_Option_2) {
		this.ct_Option_2 = ct_Option_2;
	}
	public String getCt_Amount() {
		return ct_Amount;
	}
	public void setCt_Amount(String ct_Amount) {
		this.ct_Amount = ct_Amount;
	}
	public int getCt_Mno() {
		return ct_Mno;
	}
	public void setCt_Mno(int ct_Mno) {
		this.ct_Mno = ct_Mno;
	}
	public int getCt_P_NO() {
		return ct_P_NO;
	}
	public void setCt_P_NO(int ct_P_NO) {
		this.ct_P_NO = ct_P_NO;
	}
	@Override
	public String toString() {
		return "Cart [ct_Option_1=" + ct_Option_1 + ", ct_Option_2=" + ct_Option_2 + ", ct_Amount="
				+ ct_Amount + ", ct_Mno=" + ct_Mno + ", ct_P_NO=" + ct_P_NO + "]";
	}
	
	
	
}
