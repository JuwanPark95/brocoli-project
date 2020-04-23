package com.kh.brocoli.product.model.vo;

import java.sql.Date;

public class QNAProduct {
	
	private int pq_No;
	private String pq_Writer;
	private String pq_Id;
	private String pq_Content;
	private Date pq_Date;
	private Date pq_Modify_Date;
	private String pq_Count;
	private String pq_Check;
	private String pq_Img1;
	private String pq_Img1_ReName;
	private String pq_Img2;
	private String pq_Img2_ReName;
	private int pq_mNo;
	private int pq_P_No;
	private int pq_B_No;
	
	public QNAProduct() {
		super();
	}

	public QNAProduct(int pq_No, String pq_Writer, String pq_Id, String pq_Content, Date pq_Date, Date pq_Modify_Date,
			String pq_Count, String pq_Check, String pq_Img1, String pq_Img1_ReName, String pq_Img2,
			String pq_Img2_ReName, int pq_mNo, int pq_P_No, int pq_B_No) {
		super();
		this.pq_No = pq_No;
		this.pq_Writer = pq_Writer;
		this.pq_Id = pq_Id;
		this.pq_Content = pq_Content;
		this.pq_Date = pq_Date;
		this.pq_Modify_Date = pq_Modify_Date;
		this.pq_Count = pq_Count;
		this.pq_Check = pq_Check;
		this.pq_Img1 = pq_Img1;
		this.pq_Img1_ReName = pq_Img1_ReName;
		this.pq_Img2 = pq_Img2;
		this.pq_Img2_ReName = pq_Img2_ReName;
		this.pq_mNo = pq_mNo;
		this.pq_P_No = pq_P_No;
		this.pq_B_No = pq_B_No;
	}

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

	public Date getPq_Modify_Date() {
		return pq_Modify_Date;
	}

	public void setPq_Modify_Date(Date pq_Modify_Date) {
		this.pq_Modify_Date = pq_Modify_Date;
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

	public String getPq_Img1_ReName() {
		return pq_Img1_ReName;
	}

	public void setPq_Img1_ReName(String pq_Img1_ReName) {
		this.pq_Img1_ReName = pq_Img1_ReName;
	}

	public String getPq_Img2() {
		return pq_Img2;
	}

	public void setPq_Img2(String pq_Img2) {
		this.pq_Img2 = pq_Img2;
	}

	public String getPq_Img2_ReName() {
		return pq_Img2_ReName;
	}

	public void setPq_Img2_ReName(String pq_Img2_ReName) {
		this.pq_Img2_ReName = pq_Img2_ReName;
	}

	public int getPq_mNo() {
		return pq_mNo;
	}

	public void setPq_mNo(int pq_mNo) {
		this.pq_mNo = pq_mNo;
	}

	public int getPq_P_No() {
		return pq_P_No;
	}

	public void setPq_P_No(int pq_P_No) {
		this.pq_P_No = pq_P_No;
	}

	public int getPq_B_No() {
		return pq_B_No;
	}

	public void setPq_B_No(int pq_B_No) {
		this.pq_B_No = pq_B_No;
	}

	@Override
	public String toString() {
		return "QNAProduct [pq_No=" + pq_No + ", pq_Writer=" + pq_Writer + ", pq_Id=" + pq_Id + ", pq_Content="
				+ pq_Content + ", pq_Date=" + pq_Date + ", pq_Modify_Date=" + pq_Modify_Date + ", pq_Count=" + pq_Count
				+ ", pq_Check=" + pq_Check + ", pq_Img1=" + pq_Img1 + ", pq_Img1_ReName=" + pq_Img1_ReName
				+ ", pq_Img2=" + pq_Img2 + ", pq_Img2_ReName=" + pq_Img2_ReName + ", pq_mNo=" + pq_mNo + ", pq_P_No="
				+ pq_P_No + ", pq_B_No=" + pq_B_No + "]";
	}

	
	
}
