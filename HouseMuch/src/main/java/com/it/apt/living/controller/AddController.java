package com.it.apt.living.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.it.apt.adminLiving.controller.AdminLivingController;

@Controller
@RequestMapping("/livingCenter")
public class AddController {

	private static final Logger logger = LoggerFactory.getLogger(AdminLivingController.class);
	
	@RequestMapping("/addFacilityList.do")
	public void addLivingList() {
		logger.info("addFacilityList - 부가시설 목록 입주민뷰 보여주기");
	}

	@RequestMapping("/addFacilityDetail.do")
	public void addLivingDetail() {
		logger.info("addFacilityDetail - 부가시설  상세정보 입주민뷰 보여주기");
	}



	@RequestMapping("/applicationAdd.do")
	public void applicationAdd() {
		logger.info("/applicationAdd 부가시설 신청하는 입주민뷰 보여주기");
	}
	
}