package com.it.apt.mngcost.model;

import java.sql.Timestamp;

public class InquiryInfoVO {
	private int aptNo;
    private Timestamp mngcostClaimdate;
    private int mngcostSCtgNo;
    
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
	public int getMngcostSCtgNo() {
		return mngcostSCtgNo;
	}
	public void setMngcostSCtgNo(int mngcostSCtgNo) {
		this.mngcostSCtgNo = mngcostSCtgNo;
	}
	
	@Override
	public String toString() {
		return "InquiryInfoVO [aptNo=" + aptNo + ", mngcostClaimdate=" + mngcostClaimdate + ", mngcostSCtgNo="
				+ mngcostSCtgNo + "]";
	}
}
