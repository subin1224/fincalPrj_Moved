package com.it.apt.apart.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ApartServiceImpl implements ApartService{
	@Autowired ApartDAO apartDao;

	@Override
	public String selectAptNameById(String id) {
		return apartDao.selectAptNameById(id);
	}
	
}
