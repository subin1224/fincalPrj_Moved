package com.it.apt.userDash.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/userDash/myMngcost")
public class MyMngCostController {
	private static final Logger logger
	=LoggerFactory.getLogger(MyMngCostController.class);
	
	@RequestMapping("/userMngcost.do")
	public void userMngCost() {
		logger.info("관리비 납부 내역 화면 보여주기 - userMngCost");
	}
}
