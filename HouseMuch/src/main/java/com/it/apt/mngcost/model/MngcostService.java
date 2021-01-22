package com.it.apt.mngcost.model;

import java.util.List;
import java.util.Map;

public interface MngcostService {
	List<MngcostMainCtgVO> selectMCtgList();
	List<MngcostSubCtgVO> selectSCtgList(int mngcostMCtgNo);
	List<MngcostPaymentListVO> selectPayList(String householdCode);
	List<MngcostInfoVO> selectMngcostInfoByClaim(Map<String, Object> map);
}
