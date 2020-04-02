package com.kh.brocoli.main.member.model.vo;

import java.sql.Date;

public class Review_Reply {
	private int vr_No;
	private String vr_Parentno;
	private String vr_Writer;
	private String vr_Code;
	private String vr_Content;
	private Date vr_Date;
	private Date vr_Modify_date;
	private String vr_Count;
	private String vr_Check;
	private int vr_Mno;
	public int getVr_No() {
		return vr_No;
	}
	public void setVr_No(int vr_No) {
		this.vr_No = vr_No;
	}
	public String getVr_Parentno() {
		return vr_Parentno;
	}
	public void setVr_Parentno(String vr_Parentno) {
		this.vr_Parentno = vr_Parentno;
	}
	public String getVr_Writer() {
		return vr_Writer;
	}
	public void setVr_Writer(String vr_Writer) {
		this.vr_Writer = vr_Writer;
	}
	public String getVr_Code() {
		return vr_Code;
	}
	public void setVr_Code(String vr_Code) {
		this.vr_Code = vr_Code;
	}
	public String getVr_Content() {
		return vr_Content;
	}
	public void setVr_Content(String vr_Content) {
		this.vr_Content = vr_Content;
	}
	public Date getVr_Date() {
		return vr_Date;
	}
	public void setVr_Date(Date vr_Date) {
		this.vr_Date = vr_Date;
	}
	public Date getVr_Modify_date() {
		return vr_Modify_date;
	}
	public void setVr_Modify_date(Date vr_Modify_date) {
		this.vr_Modify_date = vr_Modify_date;
	}
	public String getVr_Count() {
		return vr_Count;
	}
	public void setVr_Count(String vr_Count) {
		this.vr_Count = vr_Count;
	}
	public String getVr_Check() {
		return vr_Check;
	}
	public void setVr_Check(String vr_Check) {
		this.vr_Check = vr_Check;
	}
	public int getVr_Mno() {
		return vr_Mno;
	}
	public void setVr_Mno(int vr_Mno) {
		this.vr_Mno = vr_Mno;
	}
	public Review_Reply() {
		super();
	}
	public Review_Reply(int vr_No, String vr_Parentno, String vr_Writer, String vr_Code, String vr_Content,
			Date vr_Date, Date vr_Modify_date, String vr_Count, String vr_Check, int vr_Mno) {
		super();
		this.vr_No = vr_No;
		this.vr_Parentno = vr_Parentno;
		this.vr_Writer = vr_Writer;
		this.vr_Code = vr_Code;
		this.vr_Content = vr_Content;
		this.vr_Date = vr_Date;
		this.vr_Modify_date = vr_Modify_date;
		this.vr_Count = vr_Count;
		this.vr_Check = vr_Check;
		this.vr_Mno = vr_Mno;
	}
	@Override
	public String toString() {
		return "Review_Reply [vr_No=" + vr_No + ", vr_Parentno=" + vr_Parentno + ", vr_Writer=" + vr_Writer
				+ ", vr_Code=" + vr_Code + ", vr_Content=" + vr_Content + ", vr_Date=" + vr_Date + ", vr_Modify_date="
				+ vr_Modify_date + ", vr_Count=" + vr_Count + ", vr_Check=" + vr_Check + ", vr_Mno=" + vr_Mno + "]";
	}
	
	
}
