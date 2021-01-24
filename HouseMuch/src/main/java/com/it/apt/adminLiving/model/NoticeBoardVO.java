package com.it.apt.adminLiving.model;

import java.sql.Date;
import java.sql.Timestamp;

import com.it.apt.member.model.MemberVO;

public class NoticeBoardVO extends MemberVO{
	private int noticeNo;
	private int nCtgNo;	
	/*  1	일정 공지
		2	시설보수 공지
		3	생활공지
		4	관리비 공지
	 */
	private String noticeTitle;
	private String noticeContent;
	private Timestamp noticeRegdate;
	private int memberNo; //행정 member_no=5
	private int noticeReadcount;
	private int aptNo; //3
	
	//카테고리명 추가하면서 추가된 변수
	private String nCtgName;	//공지 글 분류
	
	
	//스케줄러테이블 컬럼 추가
	// 스케줄러 테이블에 있는 aptNo, noticeNo 컬럼은 이미 notice_board테이블 컬럼으로 있음

	private int scdNo; 			//스케줄번호
	private String scdContent;  //일정요약
	private Date startDate;	//str시작일
	private Date endDate;		//str종료일


	private String startDateStr;	//str시작일
	private String endDateStr;		//str종료일
	 
	//**********************************스케줄러 getter/setter
	public int getScdNo() {
		return scdNo;
	}
	public void setScdNo(int scdNo) {
		this.scdNo = scdNo;
	}
	public String getScdContent() {
		return scdContent;
	}
	public void setScdContent(String scdContent) {
		this.scdContent = scdContent;
	}

	
	//String형 날짜값
	public String getStartDateStr() {
		return startDateStr;
	}
	public void setStartDateStr(String startDateStr) {
		this.startDateStr = startDateStr;
	}
	public String getEndDateStr() {
		return endDateStr;
	}
	public void setEndDateStr(String endDateStr) {
		this.endDateStr = endDateStr;
	}

	//java.sql.date형 날짜값
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	//**********************************스케줄러 getter/setter

	
	//아파트번호
	public int getAptNo() {
		return aptNo;
	}
	public void setAptNo(int aptNo) {
		this.aptNo = aptNo;
	}

	//공지글번호
	public int getNoticeNo() {
		return noticeNo;
	}
	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}
	
	
	public String getnCtgName() {
		return nCtgName;
	}
	public void setnCtgName(String nCtgName) {
		this.nCtgName = nCtgName;
	}
	public int getnCtgNo() {
		return nCtgNo;
	}
	public void setnCtgNo(int nCtgNo) {
		this.nCtgNo = nCtgNo;
	}
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}
	public String getNoticeContent() {
		return noticeContent;
	}
	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}
	public Timestamp getNoticeRegdate() {
		return noticeRegdate;
	}
	public void setNoticeRegdate(Timestamp noticeRegdate) {
		this.noticeRegdate = noticeRegdate;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public int getNoticeReadcount() {
		return noticeReadcount;
	}
	public void setNoticeReadcount(int noticeReadcount) {
		this.noticeReadcount = noticeReadcount;
	}
	@Override
	public String toString() {
		return "NoticeBoardVO [noticeNo=" + noticeNo + ", nCtgNo=" + nCtgNo + ", noticeTitle=" + noticeTitle
				+ ", noticeContent=" + noticeContent + ", noticeRegdate=" + noticeRegdate + ", memberNo=" + memberNo
				+ ", noticeReadcount=" + noticeReadcount + ", aptNo=" + aptNo + ", nCtgName=" + nCtgName + ", scdNo="
				+ scdNo + ", scdContent=" + scdContent + ", startDate=" + startDate + ", endDate=" + endDate
				+ ", startDateStr=" + startDateStr + ", endDateStr=" + endDateStr + ", getHouseholdCode()="
				+ getHouseholdCode() + "]";
	}
	
	

	
}
