package com.it.apt.mngcost.model;

import java.sql.Timestamp;

public class InquiryInfoVO {
	private int aptNo;
    private Timestamp mngcostClaimdate;
    private Timestamp currentdate;
    private int mngcostSCtgNo;
    private int mngcostMCtgNo;
    
	public int getAptNo() {
		return aptNo;
	}
	public void setAptNo(int aptNo) {
		this.aptNo = aptNo;
	}
	public Timestamp getMngcostClaimdate() {
		return mngcostClaimdate;
	}
	public void setMngcostClaimdate(Timestamp mngcostClaimdate) {
		this.mngcostClaimdate = mngcostClaimdate;
	}
	public Timestamp getCurrentdate() {
		return currentdate;
	}
	public void setCurrentdate(Timestamp currentdate) {
		this.currentdate = currentdate;
	}
	public int getMngcostSCtgNo() {
		return mngcostSCtgNo;
	}
	public void setMngcostSCtgNo(int mngcostSCtgNo) {
		this.mngcostSCtgNo = mngcostSCtgNo;
	}
	public int getMngcostMCtgNo() {
		return mngcostMCtgNo;
	}
	public void setMngcostMCtgNo(int mngcostMCtgNo) {
		this.mngcostMCtgNo = mngcostMCtgNo;
	}
	
	@Override
	public String toString() {
		return "InquiryInfoVO [aptNo=" + aptNo + ", mngcostClaimdate=" + mngcostClaimdate + ", currentdate="
				+ currentdate + ", mngcostSCtgNo=" + mngcostSCtgNo + ", mngcostMCtgNo=" + mngcostMCtgNo + "]";
	}
}
