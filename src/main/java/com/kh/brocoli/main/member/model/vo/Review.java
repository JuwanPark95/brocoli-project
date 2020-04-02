package com.kh.brocoli.main.member.model.vo;

import java.sql.Date;

public class Review {
	private int v_No;	
	private String v_Writer;
	private String v_Code;
	private String v_Content;
	private Date v_Date;
	private Date v_Modify_date;
	private String v_Count;
	private String v_Score;
	private String v_Check;
	private String v_Img1;
	private String v_Img1_rename;
	private String v_Img2;
	private String v_Img2_rename;
	private int v_Mno;
	private int v_P_no;
	public int getV_No() {
		return v_No;
	}
	public void setV_No(int v_No) {
		this.v_No = v_No;
	}
	public String getV_Writer() {
		return v_Writer;
	}
	public void setV_Writer(String v_Writer) {
		this.v_Writer = v_Writer;
	}
	public String getV_Code() {
		return v_Code;
	}
	public void setV_Code(String v_Code) {
		this.v_Code = v_Code;
	}
	public String getV_Content() {
		return v_Content;
	}
	public void setV_Content(String v_Content) {
		this.v_Content = v_Content;
	}
	public Date getV_Date() {
		return v_Date;
	}
	public void setV_Date(Date v_Date) {
		this.v_Date = v_Date;
	}
	public Date getV_Modify_date() {
		return v_Modify_date;
	}
	public void setV_Modify_date(Date v_Modify_date) {
		this.v_Modify_date = v_Modify_date;
	}
	public String getV_Count() {
		return v_Count;
	}
	public void setV_Count(String v_Count) {
		this.v_Count = v_Count;
	}
	public String getV_Score() {
		return v_Score;
	}
	public void setV_Score(String v_Score) {
		this.v_Score = v_Score;
	}
	public String getV_Check() {
		return v_Check;
	}
	public void setV_Check(String v_Check) {
		this.v_Check = v_Check;
	}
	public String getV_Img1() {
		return v_Img1;
	}
	public void setV_Img1(String v_Img1) {
		this.v_Img1 = v_Img1;
	}
	public String getV_Img1_rename() {
		return v_Img1_rename;
	}
	public void setV_Img1_rename(String v_Img1_rename) {
		this.v_Img1_rename = v_Img1_rename;
	}
	public String getV_Img2() {
		return v_Img2;
	}
	public void setV_Img2(String v_Img2) {
		this.v_Img2 = v_Img2;
	}
	public String getV_Img2_rename() {
		return v_Img2_rename;
	}
	public void setV_Img2_rename(String v_Img2_rename) {
		this.v_Img2_rename = v_Img2_rename;
	}
	public int getV_Mno() {
		return v_Mno;
	}
	public void setV_Mno(int v_Mno) {
		this.v_Mno = v_Mno;
	}
	public int getV_P_no() {
		return v_P_no;
	}
	public void setV_P_no(int v_P_no) {
		this.v_P_no = v_P_no;
	}
	public Review() {
		super();
	}
	public Review(int v_No, String v_Writer, String v_Code, String v_Content, Date v_Date, Date v_Modify_date,
			String v_Count, String v_Score, String v_Check, String v_Img1, String v_Img1_rename, String v_Img2,
			String v_Img2_rename, int v_Mno, int v_P_no) {
		super();
		this.v_No = v_No;
		this.v_Writer = v_Writer;
		this.v_Code = v_Code;
		this.v_Content = v_Content;
		this.v_Date = v_Date;
		this.v_Modify_date = v_Modify_date;
		this.v_Count = v_Count;
		this.v_Score = v_Score;
		this.v_Check = v_Check;
		this.v_Img1 = v_Img1;
		this.v_Img1_rename = v_Img1_rename;
		this.v_Img2 = v_Img2;
		this.v_Img2_rename = v_Img2_rename;
		this.v_Mno = v_Mno;
		this.v_P_no = v_P_no;
	}
	@Override
	public String toString() {
		return "Review [v_No=" + v_No + ", v_Writer=" + v_Writer + ", v_Code=" + v_Code + ", v_Content=" + v_Content
				+ ", v_Date=" + v_Date + ", v_Modify_date=" + v_Modify_date + ", v_Count=" + v_Count + ", v_Score="
				+ v_Score + ", v_Check=" + v_Check + ", v_Img1=" + v_Img1 + ", v_Img1_rename=" + v_Img1_rename
				+ ", v_Img2=" + v_Img2 + ", v_Img2_rename=" + v_Img2_rename + ", v_Mno=" + v_Mno + ", v_P_no=" + v_P_no
				+ "]";
	}
	
	
}
