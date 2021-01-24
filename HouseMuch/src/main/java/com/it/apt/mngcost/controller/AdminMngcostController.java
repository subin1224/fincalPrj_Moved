package com.it.apt.mngcost.controller;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.it.apt.member.model.MemberService;
import com.it.apt.member.model.MemberVO;
import com.it.apt.mngcost.model.InquiryInfoVO;
import com.it.apt.mngcost.model.MngcostInfoVO;
import com.it.apt.mngcost.model.MngcostMainCtgVO;
import com.it.apt.mngcost.model.MngcostService;

@Controller
@RequestMapping("/admin/adminMngcost")
public class AdminMngcostController {
	private static final Logger logger
		=LoggerFactory.getLogger(MngcostController.class);
	
	@Autowired MngcostService mngcostService;
	@Autowired MemberService memberService;
	
	@RequestMapping("/adminMngcostRegister.do")
	public String adminMngcostInquiry(@ModelAttribute InquiryInfoVO inqVo,
			HttpSession session, Model model) {
		logger.info("관리자용 관리비 등록 화면, 파라미터 inqVo={}", inqVo);
		
		MemberVO memVo=(MemberVO)session.getAttribute("memVo");
		if(memVo==null) {
			model.addAttribute("msg", "로그인이 필요합니다.");
			model.addAttribute("url", "/login/login.do");
			
			return "common/message";
		}//인터셉트
		inqVo.setAptNo(memberService.selectAptNo(memVo.getId()));
		Timestamp currDate=new Timestamp(new Date().getTime());
		inqVo.setCurrentdate(currDate);
		
		List<MngcostMainCtgVO> mngcostMainCtgList
			=mngcostService.selectMCtgList();
		logger.info("관리비 대분류 조회 결과 mngcostMainCtgList={}",
										mngcostMainCtgList);
		
		List<MngcostInfoVO> mngcostInfoList
			=mngcostService.adminSelectMngcostInfo(inqVo);
		
		model.addAttribute("mngcostMainCtgList", mngcostMainCtgList);
		model.addAttribute("mngcostInfoList", mngcostInfoList);
		
		return "admin/adminMngcost/adminMngcostRegister";
	}
	
	@ResponseBody
	@RequestMapping("/showDetail.do")
	public List<MngcostInfoVO> showDetail(@ModelAttribute InquiryInfoVO inqVo,
			 HttpSession session) {
		MemberVO memVo=(MemberVO)session.getAttribute("memVo");
		logger.info("관리자용 관리비 상세보기, inqVo={}", inqVo);
		
		inqVo.setAptNo(memberService.selectAptNo(memVo.getId()));
		
		List<MngcostInfoVO> mngcostInfoList
			=mngcostService.adminSelectMngcostInfo(inqVo);
		logger.info("관리비 상세보기 조회 결과 mngcostInfoList={}", mngcostInfoList);
		
		return mngcostInfoList;
	}
}
