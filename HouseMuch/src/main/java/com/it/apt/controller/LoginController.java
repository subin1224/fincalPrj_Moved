package com.it.apt.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/login")
public class LoginController {
   private static final Logger logger=LoggerFactory.getLogger(LoginController.class);

   @RequestMapping(value="/login.do", method=RequestMethod.GET)
   public void login_get() {
      logger.info("로그인 화면 보여주기");
   }

   @RequestMapping(value="/findId.do", method = RequestMethod.GET)
   public void findId_get() {
      logger.info("아이디 찾기 화면 보여주기");
   }

   @RequestMapping(value="/findPwd.do", method = RequestMethod.GET)
   public void findPwd_get() {
      logger.info("비밀번호 찾기 화면 보여주기");
   }
   
   @RequestMapping("/findIdAll.do")
   public void findIdAll() {
      logger.info("전체 아이디 출력");
   }
   
   @RequestMapping(value="/findResetPwd.do", method = RequestMethod.GET)
   public void findRestPwd_get() {
      logger.info("비밀번호 재설정 화면 보여주기");
   }
      
}