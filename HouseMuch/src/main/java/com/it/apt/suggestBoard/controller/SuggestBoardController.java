package com.it.apt.suggestBoard.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.it.apt.userBoard.controller.UserBoardController;

@Controller
@RequestMapping("/suggestBoard")
public class SuggestBoardController {
	private static final Logger logger
	=LoggerFactory.getLogger(UserBoardController.class);

	@RequestMapping(value="/suggestBoardWrite.do",method = RequestMethod.GET)
	public void boardWrite_get() {
		logger.info("건의 게시판 글쓰기 화면 보여주기 - suggestBoardWrite");
	}

	@RequestMapping("/suggestBoardList.do")
	public void boardList() {
		logger.info("건의 게시판 목록 보여주기 - suggestBoardList");
	}

	@RequestMapping(value="/suggestBoardEdit.do",method = RequestMethod.GET)
	public void boardEdit() {
		logger.info("건의 게시판 글수정 화면 보여주기 - suggestBoardEdit");
	}

	@RequestMapping("/suggestBoardDetail.do")
	public void boardDetail() {
		logger.info("건의 게시판 글 상세보기 - suggestBoardDetail");
	}


}
