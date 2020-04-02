package com.kh.brocoli.main.member.model.vo;

import java.sql.Date;

public class QNA_Reply {
	private int qr_NO;
	private String qr_Comment;
	private String qr_Qno;
	private Date qr_Date;
	private String qr_Modify_Check;
	private Date qr_Modify_Date;
	private String qr_Status;
	private int qr_Mno;
	
	public QNA_Reply() {
		super();
	}

	public QNA_Reply(int qr_NO, String qr_Comment, String qr_Qno, Date qr_Date, String qr_Modify_Check,
			Date qr_Modify_Date, String qr_Status, int qr_Mno) {
		super();
		this.qr_NO = qr_NO;
		this.qr_Comment = qr_Comment;
		this.qr_Qno = qr_Qno;
		this.qr_Date = qr_Date;
		this.qr_Modify_Check = qr_Modify_Check;
		this.qr_Modify_Date = qr_Modify_Date;
		this.qr_Status = qr_Status;
		this.qr_Mno = qr_Mno;
	}

	public int getQr_NO() {
		return qr_NO;
	}

	public void setQr_NO(int qr_NO) {
		this.qr_NO = qr_NO;
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

	public String getQr_Modify_Check() {
		return qr_Modify_Check;
	}

	public void setQr_Modify_Check(String qr_Modify_Check) {
		this.qr_Modify_Check = qr_Modify_Check;
	}

	public Date getQr_Modify_Date() {
		return qr_Modify_Date;
	}

	public void setQr_Modify_Date(Date qr_Modify_Date) {
		this.qr_Modify_Date = qr_Modify_Date;
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

	@Override
	public String toString() {
		return "QNA_Reply [qr_NO=" + qr_NO + ", qr_Comment=" + qr_Comment + ", qr_Qno=" + qr_Qno + ", qr_Date="
				+ qr_Date + ", qr_Modify_Check=" + qr_Modify_Check + ", qr_Modify_Date=" + qr_Modify_Date
				+ ", qr_Status=" + qr_Status + ", qr_Mno=" + qr_Mno + "]";
	}
	
	
	
	
}
