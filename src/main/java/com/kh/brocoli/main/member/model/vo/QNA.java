package com.kh.brocoli.main.member.model.vo;

import java.sql.Date;

public class QNA {
	private int q_No;
	private String q_Writer;
	private String q_Title;
	private String q_Content;
	private Date q_Date;
	private String q_Count;
	private String q_Modify_id;
	private Date q_Modify_date;
	private String q_Status;
	private String q_View_check;
	private String q_Img1;
	private String q_Img1_rename;
	private String q_Img2;
	private String q_Img2_rename;
	private int q_Mno;
	public int getQ_No() {
		return q_No;
	}
	public void setQ_No(int q_No) {
		this.q_No = q_No;
	}
	public String getQ_Writer() {
		return q_Writer;
	}
	public void setQ_Writer(String q_Writer) {
		this.q_Writer = q_Writer;
	}
	public String getQ_Title() {
		return q_Title;
	}
	public void setQ_Title(String q_Title) {
		this.q_Title = q_Title;
	}
	public String getQ_Content() {
		return q_Content;
	}
	public void setQ_Content(String q_Content) {
		this.q_Content = q_Content;
	}
	public Date getQ_Date() {
		return q_Date;
	}
	public void setQ_Date(Date q_Date) {
		this.q_Date = q_Date;
	}
	public String getQ_Count() {
		return q_Count;
	}
	public void setQ_Count(String q_Count) {
		this.q_Count = q_Count;
	}
	public String getQ_Modify_id() {
		return q_Modify_id;
	}
	public void setQ_Modify_id(String q_Modify_id) {
		this.q_Modify_id = q_Modify_id;
	}
	public Date getQ_Modify_date() {
		return q_Modify_date;
	}
	public void setQ_Modify_date(Date q_Modify_date) {
		this.q_Modify_date = q_Modify_date;
	}
	public String getQ_Status() {
		return q_Status;
	}
	public void setQ_Status(String q_Status) {
		this.q_Status = q_Status;
	}
	public String getQ_View_check() {
		return q_View_check;
	}
	public void setQ_View_check(String q_View_check) {
		this.q_View_check = q_View_check;
	}
	public String getQ_Img1() {
		return q_Img1;
	}
	public void setQ_Img1(String q_Img1) {
		this.q_Img1 = q_Img1;
	}
	public String getQ_Img1_rename() {
		return q_Img1_rename;
	}
	public void setQ_Img1_rename(String q_Img1_rename) {
		this.q_Img1_rename = q_Img1_rename;
	}
	public String getQ_Img2() {
		return q_Img2;
	}
	public void setQ_Img2(String q_Img2) {
		this.q_Img2 = q_Img2;
	}
	public String getQ_Img2_rename() {
		return q_Img2_rename;
	}
	public void setQ_Img2_rename(String q_Img2_rename) {
		this.q_Img2_rename = q_Img2_rename;
	}
	public int getQ_Mno() {
		return q_Mno;
	}
	public void setQ_Mno(int q_Mno) {
		this.q_Mno = q_Mno;
	}
	public QNA() {
		super();
	}
	public QNA(int q_No, String q_Writer, String q_Title, String q_Content, Date q_Date, String q_Count,
			String q_Modify_id, Date q_Modify_date, String q_Status, String q_View_check, String q_Img1,
			String q_Img1_rename, String q_Img2, String q_Img2_rename, int q_Mno) {
		super();
		this.q_No = q_No;
		this.q_Writer = q_Writer;
		this.q_Title = q_Title;
		this.q_Content = q_Content;
		this.q_Date = q_Date;
		this.q_Count = q_Count;
		this.q_Modify_id = q_Modify_id;
		this.q_Modify_date = q_Modify_date;
		this.q_Status = q_Status;
		this.q_View_check = q_View_check;
		this.q_Img1 = q_Img1;
		this.q_Img1_rename = q_Img1_rename;
		this.q_Img2 = q_Img2;
		this.q_Img2_rename = q_Img2_rename;
		this.q_Mno = q_Mno;
	}
	@Override
	public String toString() {
		return "QNA [q_No=" + q_No + ", q_Writer=" + q_Writer + ", q_Title=" + q_Title + ", q_Content=" + q_Content
				+ ", q_Date=" + q_Date + ", q_Count=" + q_Count + ", q_Modify_id=" + q_Modify_id + ", q_Modify_date="
				+ q_Modify_date + ", q_Status=" + q_Status + ", q_View_check=" + q_View_check + ", q_Img1=" + q_Img1
				+ ", q_Img1_rename=" + q_Img1_rename + ", q_Img2=" + q_Img2 + ", q_Img2_rename=" + q_Img2_rename
				+ ", q_Mno=" + q_Mno + "]";
	}
	
	
}
