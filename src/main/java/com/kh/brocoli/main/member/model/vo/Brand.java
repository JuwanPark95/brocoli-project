package com.kh.brocoli.main.member.model.vo;

import java.sql.Date;

public class Brand {
		private int brand_No;
		private String b_Name;
		private String b_Logo;
		private String b_Logo_rename;
		private String b_Business_no;
		private String b_Status;
		private Date b_Enter_date;
		private Date b_Close_date;
		private String b_Close_content;
		private String b_Modify_id;
		private Date b_Modify_date;
		private String b_Owner1_id;
		private String b_Owner2_id;
		private String b_Owner3_id;
		private String b_Phone;
		private String b_Address;
		private String b_Owner_name;
		private String b_Comment;
		private String b_Email1;
		private String b_Email2;
		private String b_Email3;
		public int getBrand_No() {
			return brand_No;
		}
		public void setBrand_No(int brand_No) {
			this.brand_No = brand_No;
		}
		public String getB_Name() {
			return b_Name;
		}
		public void setB_Name(String b_Name) {
			this.b_Name = b_Name;
		}
		public String getB_Logo() {
			return b_Logo;
		}
		public void setB_Logo(String b_Logo) {
			this.b_Logo = b_Logo;
		}
		public String getB_Logo_rename() {
			return b_Logo_rename;
		}
		public void setB_Logo_rename(String b_Logo_rename) {
			this.b_Logo_rename = b_Logo_rename;
		}
		public String getB_Business_no() {
			return b_Business_no;
		}
		public void setB_Business_no(String b_Business_no) {
			this.b_Business_no = b_Business_no;
		}
		public String getB_Status() {
			return b_Status;
		}
		public void setB_Status(String b_Status) {
			this.b_Status = b_Status;
		}
		public Date getB_Enter_date() {
			return b_Enter_date;
		}
		public void setB_Enter_date(Date b_Enter_date) {
			this.b_Enter_date = b_Enter_date;
		}
		public Date getB_Close_date() {
			return b_Close_date;
		}
		public void setB_Close_date(Date b_Close_date) {
			this.b_Close_date = b_Close_date;
		}
		public String getB_Close_content() {
			return b_Close_content;
		}
		public void setB_Close_content(String b_Close_content) {
			this.b_Close_content = b_Close_content;
		}
		public String getB_Modify_id() {
			return b_Modify_id;
		}
		public void setB_Modify_id(String b_Modify_id) {
			this.b_Modify_id = b_Modify_id;
		}
		public Date getB_Modify_date() {
			return b_Modify_date;
		}
		public void setB_Modify_date(Date b_Modify_date) {
			this.b_Modify_date = b_Modify_date;
		}
		public String getB_Owner1_id() {
			return b_Owner1_id;
		}
		public void setB_Owner1_id(String b_Owner1_id) {
			this.b_Owner1_id = b_Owner1_id;
		}
		public String getB_Owner2_id() {
			return b_Owner2_id;
		}
		public void setB_Owner2_id(String b_Owner2_id) {
			this.b_Owner2_id = b_Owner2_id;
		}
		public String getB_Owner3_id() {
			return b_Owner3_id;
		}
		public void setB_Owner3_id(String b_Owner3_id) {
			this.b_Owner3_id = b_Owner3_id;
		}
		public String getB_Phone() {
			return b_Phone;
		}
		public void setB_Phone(String b_Phone) {
			this.b_Phone = b_Phone;
		}
		public String getB_Address() {
			return b_Address;
		}
		public void setB_Address(String b_Address) {
			this.b_Address = b_Address;
		}
		public String getB_Owner_name() {
			return b_Owner_name;
		}
		public void setB_Owner_name(String b_Owner_name) {
			this.b_Owner_name = b_Owner_name;
		}
		public String getB_Comment() {
			return b_Comment;
		}
		public void setB_Comment(String b_Comment) {
			this.b_Comment = b_Comment;
		}
		public String getB_Email1() {
			return b_Email1;
		}
		public void setB_Email1(String b_Email1) {
			this.b_Email1 = b_Email1;
		}
		public String getB_Email2() {
			return b_Email2;
		}
		public void setB_Email2(String b_Email2) {
			this.b_Email2 = b_Email2;
		}
		public String getB_Email3() {
			return b_Email3;
		}
		public void setB_Email3(String b_Email3) {
			this.b_Email3 = b_Email3;
		}
		public Brand() {
			super();
		}
		public Brand(int brand_No, String b_Name, String b_Logo, String b_Logo_rename, String b_Business_no,
				String b_Status, Date b_Enter_date, Date b_Close_date, String b_Close_content, String b_Modify_id,
				Date b_Modify_date, String b_Owner1_id, String b_Owner2_id, String b_Owner3_id, String b_Phone,
				String b_Address, String b_Owner_name, String b_Comment, String b_Email1, String b_Email2,
				String b_Email3) {
			super();
			this.brand_No = brand_No;
			this.b_Name = b_Name;
			this.b_Logo = b_Logo;
			this.b_Logo_rename = b_Logo_rename;
			this.b_Business_no = b_Business_no;
			this.b_Status = b_Status;
			this.b_Enter_date = b_Enter_date;
			this.b_Close_date = b_Close_date;
			this.b_Close_content = b_Close_content;
			this.b_Modify_id = b_Modify_id;
			this.b_Modify_date = b_Modify_date;
			this.b_Owner1_id = b_Owner1_id;
			this.b_Owner2_id = b_Owner2_id;
			this.b_Owner3_id = b_Owner3_id;
			this.b_Phone = b_Phone;
			this.b_Address = b_Address;
			this.b_Owner_name = b_Owner_name;
			this.b_Comment = b_Comment;
			this.b_Email1 = b_Email1;
			this.b_Email2 = b_Email2;
			this.b_Email3 = b_Email3;
		}
		@Override
		public String toString() {
			return "Brand [brand_No=" + brand_No + ", b_Name=" + b_Name + ", b_Logo=" + b_Logo + ", b_Logo_rename="
					+ b_Logo_rename + ", b_Business_no=" + b_Business_no + ", b_Status=" + b_Status + ", b_Enter_date="
					+ b_Enter_date + ", b_Close_date=" + b_Close_date + ", b_Close_content=" + b_Close_content
					+ ", b_Modify_id=" + b_Modify_id + ", b_Modify_date=" + b_Modify_date + ", b_Owner1_id="
					+ b_Owner1_id + ", b_Owner2_id=" + b_Owner2_id + ", b_Owner3_id=" + b_Owner3_id + ", b_Phone="
					+ b_Phone + ", b_Address=" + b_Address + ", b_Owner_name=" + b_Owner_name + ", b_Comment="
					+ b_Comment + ", b_Email1=" + b_Email1 + ", b_Email2=" + b_Email2 + ", b_Email3=" + b_Email3 + "]";
		}
		
		
}
