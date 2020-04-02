package com.kh.brocoli.main.member.model.vo;

import java.sql.Date;

public class QNA_Reply {
	private int qr_No;
	private String qr_Comment;
	private String qr_Qno;
	private Date qr_Date;
	private String qr_Modify_check;
	private Date qr_Modify_date;
	private String qr_Status;
	private int qr_Mno;
	public int getQr_No() {
		return qr_No;
	}
	public void setQr_No(int qr_No) {
		this.qr_No = qr_No;
	}
	public String getQr_Comment() {
		return qr_Comment;
	}
	public void setQr_Comment(String qr_Comment) {
		this.qr_Comment = qr_Comment;
	}
	public String getQr_Qno() {
		return qr_Qno;
	}
	public void setQr_Qno(String qr_Qno) {
		this.qr_Qno = qr_Qno;
	}
	public Date getQr_Date() {
		return qr_Date;
	}
	public void setQr_Date(Date qr_Date) {
		this.qr_Date = qr_Date;
	}
	public String getQr_Modify_check() {
		return qr_Modify_check;
	}
	public void setQr_Modify_check(String qr_Modify_check) {
		this.qr_Modify_check = qr_Modify_check;
	}
	public Date getQr_Modify_date() {
		return qr_Modify_date;
	}
	public void setQr_Modify_date(Date qr_Modify_date) {
		this.qr_Modify_date = qr_Modify_date;
	}
	public String getQr_Status() {
		return qr_Status;
	}
	public void setQr_Status(String qr_Status) {
		this.qr_Status = qr_Status;
	}
	public int getQr_Mno() {
		return qr_Mno;
	}
	public void setQr_Mno(int qr_Mno) {
		this.qr_Mno = qr_Mno;
	}
	public QNA_Reply() {
		super();
	}
	public QNA_Reply(int qr_No, String qr_Comment, String qr_Qno, Date qr_Date, String qr_Modify_check,
			Date qr_Modify_date, String qr_Status, int qr_Mno) {
		super();
		this.qr_No = qr_No;
		this.qr_Comment = qr_Comment;
		this.qr_Qno = qr_Qno;
		this.qr_Date = qr_Date;
		this.qr_Modify_check = qr_Modify_check;
		this.qr_Modify_date = qr_Modify_date;
		this.qr_Status = qr_Status;
		this.qr_Mno = qr_Mno;
	}
	@Override
	public String toString() {
		return "QNA_Reply [qr_No=" + qr_No + ", qr_Comment=" + qr_Comment + ", qr_Qno=" + qr_Qno + ", qr_Date="
				+ qr_Date + ", qr_Modify_check=" + qr_Modify_check + ", qr_Modify_date=" + qr_Modify_date
				+ ", qr_Status=" + qr_Status + ", qr_Mno=" + qr_Mno + "]";
	}
	
	
}
