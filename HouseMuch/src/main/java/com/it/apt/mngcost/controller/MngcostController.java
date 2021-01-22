package com.it.apt.mngcost.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.it.apt.mngcost.model.InquiryInfoVO;
import com.it.apt.mngcost.model.MngcostInfoVO;
import com.it.apt.mngcost.model.MngcostMainCtgVO;
import com.it.apt.mngcost.model.MngcostPaymentListVO;
import com.it.apt.mngcost.model.MngcostService;
import com.it.apt.mngcost.model.MngcostSubCtgVO;

@Controller
@RequestMapping("/mngcost")
public class MngcostController {
	private static final Logger logger
		=LoggerFactory.getLogger(MngcostController.class);
	
	@Autowired private MngcostService mngcostService;
	
	@RequestMapping("/mngcostInquiry.do")
	public void mngcostInquiry(HttpSession session, Model model) {
		//String householdCode=(String)session.getAttribute("");
		logger.info("관리비조회 페이지");
		
		List<MngcostMainCtgVO> mngcostMainCtgList
			=mngcostService.selectMCtgList();
		logger.info("관리비 대분류 조회 결과 mngcostMainCtgList={}",
										mngcostMainCtgList);
		
		List<MngcostPaymentListVO> mngcostPayList
			=mngcostService.selectPayList("aa"); //세션 세대코드로 변경해야함
		logger.info("관리비 납부내역 조회 결과 mngcostPayList={}",
										mngcostPayList);
		model.addAttribute("mngcostMainCtgList", mngcostMainCtgList);
		model.addAttribute("mngcostPayList", mngcostPayList);
	}
	
	@ResponseBody
	@RequestMapping("/showSubCtg.do")
	public List<MngcostSubCtgVO> showSubCtg
			(@RequestParam(defaultValue = "0") int mngcostMCtgNo) {
		logger.info("관리비 소분류 리스트 보여주기, 파라미터 mngcostMCtgNo={}", mngcostMCtgNo);
		
		List<MngcostSubCtgVO> mngcostSubCtgList
			=mngcostService.selectSCtgList(mngcostMCtgNo);
		logger.info("관리비 소분류 조회 결과 mngcostSubCtgList={}", mngcostSubCtgList);
		
		return mngcostSubCtgList;
	}
	
	@ResponseBody
	@RequestMapping("/showDetail.do")
	public List<MngcostInfoVO> showDetail(@ModelAttribute InquiryInfoVO inqVo,
			 HttpSession session) {
		//String aptNo=(String)session.getAttribute("");
		logger.info("관리비 상세보기, inqVo={}", inqVo);
		
		inqVo.setAptNo(1);//세션 아파트번호
		
		List<MngcostInfoVO> MngcostInfoList
			=mngcostService.selectMngcostInfoByClaim(inqVo);
		logger.info("관리비 상세보기 조회 결과 MngcostInfoList={}", MngcostInfoList);
		
		return MngcostInfoList;
	}
}
