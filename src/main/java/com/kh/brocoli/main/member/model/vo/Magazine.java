package com.kh.brocoli.main.member.model.vo;

import java.sql.Date;

public class Magazine {
	private int m_No;
	  private String m_Id;
	  private String m_Title;
	  private String m_Comment;
	  private Date m_Date;
	  private String m_Status;
	  private String m_Category;
	  private String m_Count;
	  private int m_Brand_no;
	  private int m_Mno;
	public int getM_No() {
		return m_No;
	}
	public void setM_No(int m_No) {
		this.m_No = m_No;
	}
	public String getM_Id() {
		return m_Id;
	}
	public void setM_Id(String m_Id) {
		this.m_Id = m_Id;
	}
	public String getM_Title() {
		return m_Title;
	}
	public void setM_Title(String m_Title) {
		this.m_Title = m_Title;
	}
	public String getM_Comment() {
		return m_Comment;
	}
	public void setM_Comment(String m_Comment) {
		this.m_Comment = m_Comment;
	}
	public Date getM_Date() {
		return m_Date;
	}
	public void setM_Date(Date m_Date) {
		this.m_Date = m_Date;
	}
	public String getM_Status() {
		return m_Status;
	}
	public void setM_Status(String m_Status) {
		this.m_Status = m_Status;
	}
	public String getM_Category() {
		return m_Category;
	}
	public void setM_Category(String m_Category) {
		this.m_Category = m_Category;
	}
	public String getM_Count() {
		return m_Count;
	}
	public void setM_Count(String m_Count) {
		this.m_Count = m_Count;
	}
	public int getM_Brand_no() {
		return m_Brand_no;
	}
	public void setM_Brand_no(int m_Brand_no) {
		this.m_Brand_no = m_Brand_no;
	}
	public int getM_Mno() {
		return m_Mno;
	}
	public void setM_Mno(int m_Mno) {
		this.m_Mno = m_Mno;
	}
			
	public Magazine() {
		super();
	}
	
	
	public Magazine(int m_No, String m_Id, String m_Title, String m_Comment, Date m_Date, String m_Status,
			String m_Category, String m_Count, int m_Brand_no, int m_Mno) {
		super();
		this.m_No = m_No;
		this.m_Id = m_Id;
		this.m_Title = m_Title;
		this.m_Comment = m_Comment;
		this.m_Date = m_Date;
		this.m_Status = m_Status;
		this.m_Category = m_Category;
		this.m_Count = m_Count;
		this.m_Brand_no = m_Brand_no;
		this.m_Mno = m_Mno;
	}
	@Override
	public String toString() {
		return "Magazine_File [m_No=" + m_No + ", m_Id=" + m_Id + ", m_Title=" + m_Title + ", m_Comment=" + m_Comment
				+ ", m_Status=" + m_Status + ", m_Category=" + m_Category + ", m_Count=" + m_Count + ", m_Brand_no="
				+ m_Brand_no + ", m_Mno=" + m_Mno + "]";
	}
	  
	  
}
