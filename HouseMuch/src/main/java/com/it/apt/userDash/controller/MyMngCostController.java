package com.it.apt.userDash.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.it.apt.userBoard.controller.UserBoardController;

@Controller
@RequestMapping("/userDash/myMngCost")
public class MyMngCostController {
	private static final Logger logger
	=LoggerFactory.getLogger(UserBoardController.class);
	
	@RequestMapping("/userMngCost.do")
	public void userMngCost() {
		logger.info("관리비 납부 내역 화면 보여주기 - userMngCost");
	}
}
