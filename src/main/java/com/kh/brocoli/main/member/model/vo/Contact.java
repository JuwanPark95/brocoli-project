package com.kh.brocoli.main.member.model.vo;

import java.sql.Date;

public class Contact {
	private int con_No;	
	private Date con_Date;
	private String con_Writer;
	private String con_Content;
	private String con_Title;
	private String con_View_check;
	private String con_Img;
	private String con_Img_rename;
	private String con_Status;
	private int con_Mno;
	public int getCon_No() {
		return con_No;
	}
	public void setCon_No(int con_No) {
		this.con_No = con_No;
	}
	public Date getCon_Date() {
		return con_Date;
	}
	public void setCon_Date(Date con_Date) {
		this.con_Date = con_Date;
	}
	public String getCon_Writer() {
		return con_Writer;
	}
	public void setCon_Writer(String con_Writer) {
		this.con_Writer = con_Writer;
	}
	public String getCon_Content() {
		return con_Content;
	}
	public void setCon_Content(String con_Content) {
		this.con_Content = con_Content;
	}
	public String getCon_Title() {
		return con_Title;
	}
	public void setCon_Title(String con_Title) {
		this.con_Title = con_Title;
	}
	public String getCon_View_check() {
		return con_View_check;
	}
	public void setCon_View_check(String con_View_check) {
		this.con_View_check = con_View_check;
	}
	public String getCon_Img() {
		return con_Img;
	}
	public void setCon_Img(String con_Img) {
		this.con_Img = con_Img;
	}
	public String getCon_Img_rename() {
		return con_Img_rename;
	}
	public void setCon_Img_rename(String con_Img_rename) {
		this.con_Img_rename = con_Img_rename;
	}
	public String getCon_Status() {
		return con_Status;
	}
	public void setCon_Status(String con_Status) {
		this.con_Status = con_Status;
	}
	public int getCon_Mno() {
		return con_Mno;
	}
	public void setCon_Mno(int con_Mno) {
		this.con_Mno = con_Mno;
	}
	public Contact() {
		super();
	}
	public Contact(int con_No, Date con_Date, String con_Writer, String con_Content, String con_Title,
			String con_View_check, String con_Img, String con_Img_rename, String con_Status, int con_Mno) {
		super();
		this.con_No = con_No;
		this.con_Date = con_Date;
		this.con_Writer = con_Writer;
		this.con_Content = con_Content;
		this.con_Title = con_Title;
		this.con_View_check = con_View_check;
		this.con_Img = con_Img;
		this.con_Img_rename = con_Img_rename;
		this.con_Status = con_Status;
		this.con_Mno = con_Mno;
	}
	@Override
	public String toString() {
		return "Contact [con_No=" + con_No + ", con_Date=" + con_Date + ", con_Writer=" + con_Writer + ", con_Content="
				+ con_Content + ", con_Title=" + con_Title + ", con_View_check=" + con_View_check + ", con_Img="
				+ con_Img + ", con_Img_rename=" + con_Img_rename + ", con_Status=" + con_Status + ", con_Mno=" + con_Mno
				+ "]";
	}
	
	
}
