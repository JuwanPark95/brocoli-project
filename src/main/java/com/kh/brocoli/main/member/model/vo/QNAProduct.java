package com.kh.brocoli.main.member.model.vo;

import java.sql.Date;

public class QNAProduct {
	private int pq_No;
	private String pq_Writer;
	private String pq_Id;
	private String pq_Code;
	private String pq_Content;
	private Date pq_Date;
	private Date pq_Modify_date;
	private String pq_Count;
	private String pq_Check;
	private String pq_Img1;
	private String pq_Img1_rename;
	private String pq_Img2;
	private String pq_Img2_rename;
	private int pq_Mno;
	private int pq_P_no;
	public int getPq_No() {
		return pq_No;
	}
	public void setPq_No(int pq_No) {
		this.pq_No = pq_No;
	}
	public String getPq_Writer() {
		return pq_Writer;
	}
	public void setPq_Writer(String pq_Writer) {
		this.pq_Writer = pq_Writer;
	}
	public String getPq_Id() {
		return pq_Id;
	}
	public void setPq_Id(String pq_Id) {
		this.pq_Id = pq_Id;
	}
	public String getPq_Code() {
		return pq_Code;
	}
	public void setPq_Code(String pq_Code) {
		this.pq_Code = pq_Code;
	}
	public String getPq_Content() {
		return pq_Content;
	}
	public void setPq_Content(String pq_Content) {
		this.pq_Content = pq_Content;
	}
	public Date getPq_Date() {
		return pq_Date;
	}
	public void setPq_Date(Date pq_Date) {
		this.pq_Date = pq_Date;
	}
	public Date getPq_Modify_date() {
		return pq_Modify_date;
	}
	public void setPq_Modify_date(Date pq_Modify_date) {
		this.pq_Modify_date = pq_Modify_date;
	}
	public String getPq_Count() {
		return pq_Count;
	}
	public void setPq_Count(String pq_Count) {
		this.pq_Count = pq_Count;
	}
	public String getPq_Check() {
		return pq_Check;
	}
	public void setPq_Check(String pq_Check) {
		this.pq_Check = pq_Check;
	}
	public String getPq_Img1() {
		return pq_Img1;
	}
	public void setPq_Img1(String pq_Img1) {
		this.pq_Img1 = pq_Img1;
	}
	public String getPq_Img1_rename() {
		return pq_Img1_rename;
	}
	public void setPq_Img1_rename(String pq_Img1_rename) {
		this.pq_Img1_rename = pq_Img1_rename;
	}
	public String getPq_Img2() {
		return pq_Img2;
	}
	public void setPq_Img2(String pq_Img2) {
		this.pq_Img2 = pq_Img2;
	}
	public String getPq_Img2_rename() {
		return pq_Img2_rename;
	}
	public void setPq_Img2_rename(String pq_Img2_rename) {
		this.pq_Img2_rename = pq_Img2_rename;
	}
	public int getPq_Mno() {
		return pq_Mno;
	}
	public void setPq_Mno(int pq_Mno) {
		this.pq_Mno = pq_Mno;
	}
	public int getPq_P_no() {
		return pq_P_no;
	}
	public void setPq_P_no(int pq_P_no) {
		this.pq_P_no = pq_P_no;
	}
	public QNAProduct() {
		super();
	}
	public QNAProduct(int pq_No, String pq_Writer, String pq_Id, String pq_Code, String pq_Content, Date pq_Date,
			Date pq_Modify_date, String pq_Count, String pq_Check, String pq_Img1, String pq_Img1_rename,
			String pq_Img2, String pq_Img2_rename, int pq_Mno, int pq_P_no) {
		super();
		this.pq_No = pq_No;
		this.pq_Writer = pq_Writer;
		this.pq_Id = pq_Id;
		this.pq_Code = pq_Code;
		this.pq_Content = pq_Content;
		this.pq_Date = pq_Date;
		this.pq_Modify_date = pq_Modify_date;
		this.pq_Count = pq_Count;
		this.pq_Check = pq_Check;
		this.pq_Img1 = pq_Img1;
		this.pq_Img1_rename = pq_Img1_rename;
		this.pq_Img2 = pq_Img2;
		this.pq_Img2_rename = pq_Img2_rename;
		this.pq_Mno = pq_Mno;
		this.pq_P_no = pq_P_no;
	}
	@Override
	public String toString() {
		return "QNAProduct [pq_No=" + pq_No + ", pq_Writer=" + pq_Writer + ", pq_Id=" + pq_Id + ", pq_Code=" + pq_Code
				+ ", pq_Content=" + pq_Content + ", pq_Date=" + pq_Date + ", pq_Modify_date=" + pq_Modify_date
				+ ", pq_Count=" + pq_Count + ", pq_Check=" + pq_Check + ", pq_Img1=" + pq_Img1 + ", pq_Img1_rename="
				+ pq_Img1_rename + ", pq_Img2=" + pq_Img2 + ", pq_Img2_rename=" + pq_Img2_rename + ", pq_Mno=" + pq_Mno
				+ ", pq_P_no=" + pq_P_no + "]";
	}
	
	
}
