package com.kh.brocoli.main.member.model.vo;

import java.sql.Date;

public class Auction {
		private int a_Cno;
		private String ac_Banner_no;
		private String ac_Id;
		private String ac_Price;
		private Date ac_Date;
		private String ac_Status;
		private String ac_Brand;
		private String ac_Winner;
		private int ac_Brand_no;
		public int getA_Cno() {
			return a_Cno;
		}
		public void setA_Cno(int a_Cno) {
			this.a_Cno = a_Cno;
		}
		public String getAc_Banner_no() {
			return ac_Banner_no;
		}
		public void setAc_Banner_no(String ac_Banner_no) {
			this.ac_Banner_no = ac_Banner_no;
		}
		public String getAc_Id() {
			return ac_Id;
		}
		public void setAc_Id(String ac_Id) {
			this.ac_Id = ac_Id;
		}
		public String getAc_Price() {
			return ac_Price;
		}
		public void setAc_Price(String ac_Price) {
			this.ac_Price = ac_Price;
		}
		public Date getAc_Date() {
			return ac_Date;
		}
		public void setAc_Date(Date ac_Date) {
			this.ac_Date = ac_Date;
		}
		public String getAc_Status() {
			return ac_Status;
		}
		public void setAc_Status(String ac_Status) {
			this.ac_Status = ac_Status;
		}
		public String getAc_Brand() {
			return ac_Brand;
		}
		public void setAc_Brand(String ac_Brand) {
			this.ac_Brand = ac_Brand;
		}
		public String getAc_Winner() {
			return ac_Winner;
		}
		public void setAc_Winner(String ac_Winner) {
			this.ac_Winner = ac_Winner;
		}
		public int getAc_Brand_no() {
			return ac_Brand_no;
		}
		public void setAc_Brand_no(int ac_Brand_no) {
			this.ac_Brand_no = ac_Brand_no;
		}
		public Auction() {
			super();
		}
		public Auction(int a_Cno, String ac_Banner_no, String ac_Id, String ac_Price, Date ac_Date, String ac_Status,
				String ac_Brand, String ac_Winner, int ac_Brand_no) {
			super();
			this.a_Cno = a_Cno;
			this.ac_Banner_no = ac_Banner_no;
			this.ac_Id = ac_Id;
			this.ac_Price = ac_Price;
			this.ac_Date = ac_Date;
			this.ac_Status = ac_Status;
			this.ac_Brand = ac_Brand;
			this.ac_Winner = ac_Winner;
			this.ac_Brand_no = ac_Brand_no;
		}
		@Override
		public String toString() {
			return "Auction [a_Cno=" + a_Cno + ", ac_Banner_no=" + ac_Banner_no + ", ac_Id=" + ac_Id + ", ac_Price="
					+ ac_Price + ", ac_Date=" + ac_Date + ", ac_Status=" + ac_Status + ", ac_Brand=" + ac_Brand
					+ ", ac_Winner=" + ac_Winner + ", ac_Brand_no=" + ac_Brand_no + "]";
		}
		
		
}
