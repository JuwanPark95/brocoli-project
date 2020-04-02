package com.kh.admin.admin_brand.admin_model.admin_vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Admin_Brand {
	private int brandNo;				//브랜드번호
	private String bName;				//브랜드명
	private String bLogo;				//브랜드 이미지
	private String bLogoRename;			//브랜드 이미지 리네임
	private String bBusinessNo;			//사업자번호
	private String bStatus;				//입점유무(기본값Y)
	private Date bEnterDate;			//입점일
	private Date bCloseDate;			//폐점일
	private String bCloseContent;		//폐점사유
	private String bModifyId;			//수정자
	private Date bModifyDate;			//수정일
	private String bOwner1Id;			//오우너 아이디 1
	private String bOwner2Id;			//오우너 아이디2
	private String bOwner3Id;			//오우너 아이디3
	private String bPhone;				//전화번호
	private String bAddress;			//브랜드주소
	private String bOwnerName;			//대표이름
	private String bComment;			//브랜드설명
	private String bEmail1;				//오우너 이메일1
	private String bEmail2;				//오우너 이메일2
	private String bEmail3;				//오우너 이메일3
	
	public Admin_Brand() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Admin_Brand(int brandNo, String bName, String bLogo, String bLogoRename, String bBusinessNo, String bStatus,
			Date bEnterDate, Date bCloseDate, String bCloseContent, String bModifyId, Date bModifyDate,
			String bOwner1Id, String bOwner2Id, String bOwner3Id, String bPhone, String bAddress, String bOwnerName,
			String bComment, String bEmail1, String bEmail2, String bEmail3) {
		super();
		this.brandNo = brandNo;
		this.bName = bName;
		this.bLogo = bLogo;
		this.bLogoRename = bLogoRename;
		this.bBusinessNo = bBusinessNo;
		this.bStatus = bStatus;
		this.bEnterDate = bEnterDate;
		this.bCloseDate = bCloseDate;
		this.bCloseContent = bCloseContent;
		this.bModifyId = bModifyId;
		this.bModifyDate = bModifyDate;
		this.bOwner1Id = bOwner1Id;
		this.bOwner2Id = bOwner2Id;
		this.bOwner3Id = bOwner3Id;
		this.bPhone = bPhone;
		this.bAddress = bAddress;
		this.bOwnerName = bOwnerName;
		this.bComment = bComment;
		this.bEmail1 = bEmail1;
		this.bEmail2 = bEmail2;
		this.bEmail3 = bEmail3;
	}

	public int getBrandNo() {
		return brandNo;
	}

	public void setBrandNo(int brandNo) {
		this.brandNo = brandNo;
	}

	public String getbName() {
		return bName;
	}

	public void setbName(String bName) {
		this.bName = bName;
	}

	public String getbLogo() {
		return bLogo;
	}

	public void setbLogo(String bLogo) {
		this.bLogo = bLogo;
	}

	public String getbLogoRename() {
		return bLogoRename;
	}

	public void setbLogoRename(String bLogoRename) {
		this.bLogoRename = bLogoRename;
	}

	public String getbBusinessNo() {
		return bBusinessNo;
	}

	public void setbBusinessNo(String bBusinessNo) {
		this.bBusinessNo = bBusinessNo;
	}

	public String getbStatus() {
		return bStatus;
	}

	public void setbStatus(String bStatus) {
		this.bStatus = bStatus;
	}

	public Date getbEnterDate() {
		return bEnterDate;
	}

	public void setbEnterDate(Date bEnterDate) {
		this.bEnterDate = bEnterDate;
	}

	public Date getbCloseDate() {
		return bCloseDate;
	}

	public void setbCloseDate(Date bCloseDate) {
		this.bCloseDate = bCloseDate;
	}

	public String getbCloseContent() {
		return bCloseContent;
	}

	public void setbCloseContent(String bCloseContent) {
		this.bCloseContent = bCloseContent;
	}

	public String getbModifyId() {
		return bModifyId;
	}

	public void setbModifyId(String bModifyId) {
		this.bModifyId = bModifyId;
	}

	public Date getbModifyDate() {
		return bModifyDate;
	}

	public void setbModifyDate(Date bModifyDate) {
		this.bModifyDate = bModifyDate;
	}

	public String getbOwner1Id() {
		return bOwner1Id;
	}

	public void setbOwner1Id(String bOwner1Id) {
		this.bOwner1Id = bOwner1Id;
	}

	public String getbOwner2Id() {
		return bOwner2Id;
	}

	public void setbOwner2Id(String bOwner2Id) {
		this.bOwner2Id = bOwner2Id;
	}

	public String getbOwner3Id() {
		return bOwner3Id;
	}

	public void setbOwner3Id(String bOwner3Id) {
		this.bOwner3Id = bOwner3Id;
	}

	public String getbPhone() {
		return bPhone;
	}

	public void setbPhone(String bPhone) {
		this.bPhone = bPhone;
	}

	public String getbAddress() {
		return bAddress;
	}

	public void setbAddress(String bAddress) {
		this.bAddress = bAddress;
	}

	public String getbOwnerName() {
		return bOwnerName;
	}

	public void setbOwnerName(String bOwnerName) {
		this.bOwnerName = bOwnerName;
	}

	public String getbComment() {
		return bComment;
	}

	public void setbComment(String bComment) {
		this.bComment = bComment;
	}

	public String getbEmail1() {
		return bEmail1;
	}

	public void setbEmail1(String bEmail1) {
		this.bEmail1 = bEmail1;
	}

	public String getbEmail2() {
		return bEmail2;
	}

	public void setbEmail2(String bEmail2) {
		this.bEmail2 = bEmail2;
	}

	public String getbEmail3() {
		return bEmail3;
	}

	public void setbEmail3(String bEmail3) {
		this.bEmail3 = bEmail3;
	}

	@Override
	public String toString() {
		return "Admin_Brand [brandNo=" + brandNo + ", bName=" + bName + ", bLogo=" + bLogo + ", bLogoRename="
				+ bLogoRename + ", bBusinessNo=" + bBusinessNo + ", bStatus=" + bStatus + ", bEnterDate=" + bEnterDate
				+ ", bCloseDate=" + bCloseDate + ", bCloseContent=" + bCloseContent + ", bModifyId=" + bModifyId
				+ ", bModifyDate=" + bModifyDate + ", bOwner1Id=" + bOwner1Id + ", bOwner2Id=" + bOwner2Id
				+ ", bOwner3Id=" + bOwner3Id + ", bPhone=" + bPhone + ", bAddress=" + bAddress + ", bOwnerName="
				+ bOwnerName + ", bComment=" + bComment + ", bEmail1=" + bEmail1 + ", bEmail2=" + bEmail2 + ", bEmail3="
				+ bEmail3 + "]";
	}
	
	
	
}
