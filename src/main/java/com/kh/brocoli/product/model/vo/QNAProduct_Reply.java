package com.kh.brocoli.product.model.vo;

import java.sql.Date;

public class QNAProduct_Reply {
	
	private int pqr_No;
	private String pqr_ParentNo;
	private String pqr_Writer;
	private String pqr_Id;
	private String pqr_Content;
	private Date pqr_Date;
	private Date pqr_Modify_Date;
	private String pqr_Count;
	private String pqr_Check;
	private int pqr_Mno;
	private int pqr_bNo;
	
	public QNAProduct_Reply() {
		super();
	}

	public QNAProduct_Reply(int pqr_No, String pqr_ParentNo, String pqr_Writer, String pqr_Id, String pqr_Content,
			Date pqr_Date, Date pqr_Modify_Date, String pqr_Count, String pqr_Check, int pqr_Mno, int pqr_bNo) {
		super();
		this.pqr_No = pqr_No;
		this.pqr_ParentNo = pqr_ParentNo;
		this.pqr_Writer = pqr_Writer;
		this.pqr_Id = pqr_Id;
		this.pqr_Content = pqr_Content;
		this.pqr_Date = pqr_Date;
		this.pqr_Modify_Date = pqr_Modify_Date;
		this.pqr_Count = pqr_Count;
		this.pqr_Check = pqr_Check;
		this.pqr_Mno = pqr_Mno;
		this.pqr_bNo = pqr_bNo;
	}

	public int getPqr_No() {
		return pqr_No;
	}

	public void setPqr_No(int pqr_No) {
		this.pqr_No = pqr_No;
	}

	public String getPqr_ParentNo() {
		return pqr_ParentNo;
	}

	public void setPqr_ParentNo(String pqr_ParentNo) {
		this.pqr_ParentNo = pqr_ParentNo;
	}

	public String getPqr_Writer() {
		return pqr_Writer;
	}

	public void setPqr_Writer(String pqr_Writer) {
		this.pqr_Writer = pqr_Writer;
	}

	public String getPqr_Id() {
		return pqr_Id;
	}

	public void setPqr_Id(String pqr_Id) {
		this.pqr_Id = pqr_Id;
	}

	public String getPqr_Content() {
		return pqr_Content;
	}

	public void setPqr_Content(String pqr_Content) {
		this.pqr_Content = pqr_Content;
	}

	public Date getPqr_Date() {
		return pqr_Date;
	}

	public void setPqr_Date(Date pqr_Date) {
		this.pqr_Date = pqr_Date;
	}

	public Date getPqr_Modify_Date() {
		return pqr_Modify_Date;
	}

	public void setPqr_Modify_Date(Date pqr_Modify_Date) {
		this.pqr_Modify_Date = pqr_Modify_Date;
	}

	public String getPqr_Count() {
		return pqr_Count;
	}

	public void setPqr_Count(String pqr_Count) {
		this.pqr_Count = pqr_Count;
	}

	public String getPqr_Check() {
		return pqr_Check;
	}

	public void setPqr_Check(String pqr_Check) {
		this.pqr_Check = pqr_Check;
	}

	public int getPqr_Mno() {
		return pqr_Mno;
	}

	public void setPqr_Mno(int pqr_Mno) {
		this.pqr_Mno = pqr_Mno;
	}

	public int getPqr_bNo() {
		return pqr_bNo;
	}

	public void setPqr_bNo(int pqr_bNo) {
		this.pqr_bNo = pqr_bNo;
	}

	@Override
	public String toString() {
		return "QNAProduct_Reply [pqr_No=" + pqr_No + ", pqr_ParentNo=" + pqr_ParentNo + ", pqr_Writer=" + pqr_Writer
				+ ", pqr_Id=" + pqr_Id + ", pqr_Content=" + pqr_Content + ", pqr_Date=" + pqr_Date
				+ ", pqr_Modify_Date=" + pqr_Modify_Date + ", pqr_Count=" + pqr_Count + ", pqr_Check=" + pqr_Check
				+ ", pqr_Mno=" + pqr_Mno + ", pqr_bNo=" + pqr_bNo + "]";
	}
	
	
	
}
