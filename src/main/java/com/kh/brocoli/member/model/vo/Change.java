package com.kh.brocoli.member.model.vo;

import java.sql.Date;

public class Change {
	private String ch_Pname;
	private String ch_Price;
	private String ch_Reason;
	private String ch_Comment;
	private Date ch_Date;
	private Date ch_EnDate;
	private String ch_Status;
	private int ch_Or_NO;
	private int ch_Mno;
	
	
	
	
	public Change() {
		super();
	}
	
	
	public Change(String ch_Pname, String ch_Price, String ch_Reason, String ch_Comment, Date ch_Date,
			Date ch_EnDate, String ch_Status, int ch_Or_NO, int ch_Mno) {
		super();

		this.ch_Pname = ch_Pname;
		this.ch_Price = ch_Price;
		this.ch_Reason = ch_Reason;
		this.ch_Comment = ch_Comment;
		this.ch_Date = ch_Date;
		this.ch_EnDate = ch_EnDate;
		this.ch_Status = ch_Status;
		this.ch_Or_NO = ch_Or_NO;
		this.ch_Mno = ch_Mno;
	}

	
	public String getCh_Pname() {
		return ch_Pname;
	}
	
	
	public void setCh_Pname(String ch_Pname) {
		this.ch_Pname = ch_Pname;
	}
	
	
	public String getCh_Price() {
		return ch_Price;
	}
	
	
	public void setCh_Price(String ch_Price) {
		this.ch_Price = ch_Price;
	}
	
	
	public String getCh_Reason() {
		return ch_Reason;
	}
	
	
	public void setCh_Reason(String ch_Reason) {
		this.ch_Reason = ch_Reason;
	}
	
	
	public String getCh_Comment() {
		return ch_Comment;
	}
	
	
	public void setCh_Comment(String ch_Comment) {
		this.ch_Comment = ch_Comment;
	}
	
	
	public Date getCh_Date() {
		return ch_Date;
	}
	
	
	public void setCh_Date(Date ch_Date) {
		this.ch_Date = ch_Date;
	}
	public Date getCh_EnDate() {
		return ch_EnDate;
	}
	
	
	public void setCh_EnDate(Date ch_EnDate) {
		this.ch_EnDate = ch_EnDate;
	}
	
	
	public String getCh_Status() {
		return ch_Status;
	}
	
	
	public void setCh_Status(String ch_Status) {
		this.ch_Status = ch_Status;
	}

	
	public int getCh_Or_NO() {
		return ch_Or_NO;
	}
	
	
	public void setCh_Or_NO(int ch_Or_NO) {
		this.ch_Or_NO = ch_Or_NO;
	}
	
	
	public int getCh_Mno() {
		return ch_Mno;
	}
	
	
	public void setCh_Mno(int ch_Mno) {
		this.ch_Mno = ch_Mno;
	}
	
	
	
	@Override
	public String toString() {
		return "Change [ch_Pname=" + ch_Pname + ", ch_Price=" + ch_Price + ", ch_Reason="
				+ ch_Reason + ", ch_Comment=" + ch_Comment + ", ch_Date=" + ch_Date + ", ch_EnDate=" + ch_EnDate
				+ ", ch_Status=" + ch_Status + ", ch_Or_NO=" + ch_Or_NO + ", ch_Mno=" + ch_Mno + "]";
	}
	
	
}
