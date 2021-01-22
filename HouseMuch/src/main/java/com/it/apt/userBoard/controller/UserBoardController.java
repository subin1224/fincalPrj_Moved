package com.it.apt.userBoard.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/userBoard")
public class UserBoardController {
	private static final Logger logger
		=LoggerFactory.getLogger(UserBoardController.class);

	@RequestMapping(value="/userBoardWrite.do",method = RequestMethod.GET)
	public void boardWrite() {
		logger.info("입주민 게시판 글쓰기 화면 보여주기 - userBoardWrite");
	}
	
	@RequestMapping("/userBoardList.do")
	public void boardList() {
		logger.info("입주민 게시판 목록 보여주기 - userBoardList");
	}
	
	@RequestMapping(value="/userBoardEdit.do",method = RequestMethod.GET)
	public void boardEdit() {
		logger.info("입주민 게시판 글수정 화면 보여주기 - userBoardEdit");
	}
	
	@RequestMapping("/userBoardDetail.do")
	public void boardDetail() {
		logger.info("입주민 게시판 글 상세보기 - userBoardDetail");
	}
	
	@RequestMapping("/test.do")
	public void test() {
		logger.info("입주민 게시판 글쓰기 화면 보여주기 - test");
	}
}
