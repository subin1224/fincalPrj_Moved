package com.it.apt.adLiving.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin/adminLiving")
public class AdminLivingController {

   private static final Logger logger = LoggerFactory.getLogger(AdminLivingController.class);
   
   @RequestMapping("/adLiving.do")
   public void adLiving_get() {
      logger.info("adLiving - 행정관리자 메인화면 보여주기");
      //return "admin/adminLiving/adLiving";
   }
   
   @RequestMapping(value = "/adNotice.do",method = RequestMethod.GET)
   public String adNotice_get() {
      logger.info("adNotice - 공지등록 화면보여주기");
      return "admin/adminLiving/adNotice";
   }
   
   
   
   
}