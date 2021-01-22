package com.it.apt.mngcost.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MngcostServiceImpl implements MngcostService{
	@Autowired private MngcostDAO mngcostDao;

	@Override
	public List<MngcostMainCtgVO> selectMCtgList() {
		return mngcostDao.selectMCtgList();
	}

	@Override
	public List<MngcostSubCtgVO> selectSCtgList(int mngcostMCtgNo) {
		return mngcostDao.selectSCtgList(mngcostMCtgNo);
	}

	@Override
	public List<MngcostPaymentListVO> selectPayList(String householdCode) {
		return mngcostDao.selectPayList(householdCode);
	}

	@Override
	public List<MngcostInfoVO> selectMngcostInfoByClaim(Map<String, Object> map) {
		return mngcostDao.selectMngcostInfoByClaim(map);
	}
}
