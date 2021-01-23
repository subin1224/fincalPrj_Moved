package com.it.apt.userDash.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/userDash/myMngcost")
public class MyMngcostController {
   private static final Logger logger
   =LoggerFactory.getLogger(MyMngcostController.class);
   
   @RequestMapping("/mngcostItemCheck.do")
   public void mngcostItemCheck() {
      logger.info("입주민 대시보드 관리비 항목별 화면 보여주기 - mngcostItemCheck");
   }
   
   @RequestMapping("/mngcostMonthlyCheck.do")
   public void mngcostMonthlyCheck() {
	   logger.info("입주민 대시보드 관리비 항목별 화면 보여주기 - mngcostMonthlyCheck");
   }
   
   
}