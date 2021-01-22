package com.it.apt.mngcost.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MngcostDAOMybatis implements MngcostDAO{
	@Autowired private SqlSessionTemplate sqlSession;
	private String namespace="config.mybatis.mapper.oracle.mngcost.";
	
	@Override
	public List<MngcostMainCtgVO> selectMCtgList() {
		return sqlSession.selectList(namespace+"selectMCtgList");
	}

	@Override
	public List<MngcostSubCtgVO> selectSCtgList(int mngcostMCtgNo) {
		return sqlSession.selectList(namespace+"selectSCtgList", mngcostMCtgNo);
	}

	@Override
	public List<MngcostPaymentListVO> selectPayList(String householdCode) {
		return sqlSession.selectList(namespace+"selectPayList", householdCode);
	}

	@Override
	public List<MngcostInfoVO> selectMngcostInfoByClaim(InquiryInfoVO inqVo) {
		return sqlSession.selectList(namespace+"selectMngcostInfoByClaim", inqVo);
	}
}
