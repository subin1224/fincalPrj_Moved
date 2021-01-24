package com.it.apt.apart.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ApartDAOMybatis implements ApartDAO{
	@Autowired private SqlSessionTemplate sqlSession;
	
	private String namespace="config.mybatis.mapper.oracle.apart.";

	@Override
	public String selectAptNameById(String id) {
		return sqlSession.selectOne(namespace+"selectAptNameById",id);
	}


}
