package com.kh.brocoli.member.model.vo;

public class OrderAdd {

	private int oa_no;
	private String oa_Option_1;
	private String oa_Option_2;
	private String oa_Amount;
	private int oa_Mno;
	private int oa_P_NO;
	
	public OrderAdd() {
		super();
	}

	public OrderAdd(int oa_no, String oa_Option_1, String oa_Option_2, String oa_Amount, int oa_Mno, int oa_P_NO) {
		super();
		this.oa_no = oa_no;
		this.oa_Option_1 = oa_Option_1;
		this.oa_Option_2 = oa_Option_2;
		this.oa_Amount = oa_Amount;
		this.oa_Mno = oa_Mno;
		this.oa_P_NO = oa_P_NO;
	}

	public int getOa_no() {
		return oa_no;
	}

	public void setOa_no(int oa_no) {
		this.oa_no = oa_no;
	}

	public String getOa_Option_1() {
		return oa_Option_1;
	}

	public void setOa_Option_1(String oa_Option_1) {
		this.oa_Option_1 = oa_Option_1;
	}

	public String getOa_Option_2() {
		return oa_Option_2;
	}

	public void setOa_Option_2(String oa_Option_2) {
		this.oa_Option_2 = oa_Option_2;
	}

	public String getOa_Amount() {
		return oa_Amount;
	}

	public void setOa_Amount(String oa_Amount) {
		this.oa_Amount = oa_Amount;
	}

	public int getOa_Mno() {
		return oa_Mno;
	}

	public void setOa_Mno(int oa_Mno) {
		this.oa_Mno = oa_Mno;
	}

	public int getOa_P_NO() {
		return oa_P_NO;
	}

	public void setOa_P_NO(int oa_P_NO) {
		this.oa_P_NO = oa_P_NO;
	}

	@Override
	public String toString() {
		return "OrderAdd [oa_no=" + oa_no + ", oa_Option_1=" + oa_Option_1 + ", oa_Option_2=" + oa_Option_2
				+ ", oa_Amount=" + oa_Amount + ", oa_Mno=" + oa_Mno + ", oa_P_NO=" + oa_P_NO + "]";
	}
}
