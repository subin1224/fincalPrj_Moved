package com.it.apt.mngcost.model;

import java.util.List;
import java.util.Map;

public interface MngcostDAO {
	List<MngcostMainCtgVO> selectMCtgList();
	List<MngcostSubCtgVO> selectSCtgList(int mngcostMCtgNo);
	List<MngcostPaymentListVO> selectPayList(String householdCode);
	List<MngcostInfoVO> selectMngcostInfoByClaim(InquiryInfoVO inqVo);
	
	//관리자
	List<MngcostInfoVO> adminSelectMngcostInfo(InquiryInfoVO inqVo);
}
