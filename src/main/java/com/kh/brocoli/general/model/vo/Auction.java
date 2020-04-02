package com.kh.brocoli.general.model.vo;

import java.sql.Date;

public class Auction {
		private int a_Cno;
		private String ac_Banner_NO;
		private String ac_ID;
		private String ac_Price;
		private Date ac_Date;
		private String ac_Status;
		private String ac_Brand;
		private String ac_Winner;
		private int ac_Brand_NO;
		public Auction() {
			super();
		}
		public Auction(int a_Cno, String ac_Banner_NO, String ac_ID, String ac_Price, Date ac_Date, String ac_Status,
				String ac_Brand, String ac_Winner, int ac_Brand_NO) {
			super();
			this.a_Cno = a_Cno;
			this.ac_Banner_NO = ac_Banner_NO;
			this.ac_ID = ac_ID;
			this.ac_Price = ac_Price;
			this.ac_Date = ac_Date;
			this.ac_Status = ac_Status;
			this.ac_Brand = ac_Brand;
			this.ac_Winner = ac_Winner;
			this.ac_Brand_NO = ac_Brand_NO;
		}
		public int getA_Cno() {
			return a_Cno;
		}
		public void setA_Cno(int a_Cno) {
			this.a_Cno = a_Cno;
		}
		public String getAc_Banner_NO() {
			return ac_Banner_NO;
		}
		public void setAc_Banner_NO(String ac_Banner_NO) {
			this.ac_Banner_NO = ac_Banner_NO;
		}
		public String getAc_ID() {
			return ac_ID;
		}
		public void setAc_ID(String ac_ID) {
			this.ac_ID = ac_ID;
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
		public int getAc_Brand_NO() {
			return ac_Brand_NO;
		}
		public void setAc_Brand_NO(int ac_Brand_NO) {
			this.ac_Brand_NO = ac_Brand_NO;
		}
		@Override
		public String toString() {
			return "Auction [a_Cno=" + a_Cno + ", ac_Banner_NO=" + ac_Banner_NO + ", ac_ID=" + ac_ID + ", ac_Price="
					+ ac_Price + ", ac_Date=" + ac_Date + ", ac_Status=" + ac_Status + ", ac_Brand=" + ac_Brand
					+ ", ac_Winner=" + ac_Winner + ", ac_Brand_NO=" + ac_Brand_NO + "]";
		}
		
		
}