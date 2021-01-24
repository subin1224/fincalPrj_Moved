package com.it.apt.adminLiving.controller;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.it.apt.adminLiving.model.NoticeBoardService;
import com.it.apt.adminLiving.model.NoticeBoardVO;
import com.it.apt.member.model.MemberVO;

@Controller
@RequestMapping("/admin/adminLiving/adminNoti")
public class NoticeBoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(NoticeBoardController.class);
	@Autowired
	private NoticeBoardService noticeService;
	
	@RequestMapping("/adminNotiRegister.do")
	public void adminNotice() {
		logger.info("adminNotiRegister 화면보여주기");
	}
	

	//****************************** 공지 등록  *************************************//
	@RequestMapping(value = "/adminNotiRegister.do",method = RequestMethod.POST)
	public String adminNotice_post(@ModelAttribute NoticeBoardVO vo
			, Model model, HttpSession session) {
		logger.info("공지등록 처리, 처음들어온 vo={}",vo);
		
		//session에서 작성자 정보 가져와서 vo에 넣기
		MemberVO memVo=(MemberVO)session.getAttribute("memVo");
		vo.setMemberNo(memVo.getMemberNo());
		vo.setHouseholdCode(memVo.getHouseholdCode());
		logger.info("공지등록 처리, 작성자 정보 들어간 vo={}",vo);
			
		
		/*
		 *  공지 분류가 3이고 + 일정값이 있으면 일정등록 먼저 하고나서 공지등록
		 *  일정값이 null이 아니면 -> 공지등록 메서드 호출 , null이면 if안타고 바로 일반공지 등록 메서드 호출
		 */
		int nCtgNo = vo.getnCtgNo();
		String startDateStr = vo.getStartDateStr();
		String endDateStr = vo.getEndDateStr();
		 
		int result = noticeService.insertNotice(vo);
		logger.info("공지등록 처리 vo={}",vo);
		
		String msg="",url="";
		msg="등록 실패";
		url="/admin/adminLiving/adminNoti/adminNotiRegister.do";
		if(result>0){
			logger.info("공지등록 성공 후 반환된 result={}",result);
			msg="등록 성공";
			url="/admin/adminLiving/adminNoti/adminNotiList.do";
			logger.info("if안에서 url={}",url);
			
			if(nCtgNo==1) {	// 일정공지(분류번호1)
				//일정공지카테고리 No일 때만
				if( (startDateStr!=null || !startDateStr.isEmpty()) && (endDateStr!=null || !endDateStr.isEmpty()) ){
					// string인 날짜들을 java.sql.date로 변환해서 
					
					Date startDate = Date.valueOf(startDateStr);
					Date endDate = Date.valueOf(endDateStr);

					//변환된 sql.date를 vo에 넣고 
					vo.setStartDate(startDate);
					vo.setEndDate(endDate);
					
					//일정 등록
					int scdResult = noticeService.insertScheduler(vo); 
					
					//일정등록 실패시  msg바뀜
					if(scdResult<=0){
						msg="일정 등록은 실패";
					}
					logger.info("일정등록 처리, scdResult={}",scdResult);
				}
			}
			
		}
		
		logger.info("model에 담기 직전 url={}",url);
		model.addAttribute("vo",vo);
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
	}
	
	
	
/*
 * 기본공지 등록 핸들러
	@RequestMapping(value = "/adminNotiRegister.do",method = RequestMethod.POST)
	public String adminNotice_post(@ModelAttribute NoticeBoardVO vo, Model model, HttpSession session) {
		MemberVO memVo=(MemberVO)session.getAttribute("memVo");
		vo.setMemberNo(memVo.getMemberNo());
		vo.setHouseholdCode(memVo.getHouseholdCode());
		
		
		logger.info("공지등록 처리 vo={}",vo);
		
		//행정관리권한만 등록할 수 있음
		int result = noticeService.insertNotice(vo);
		logger.info("공지등록 처리 result={}",result);
		
		String msg="등록 실패", url="/adminNotiRegister.do";
		if(result>0){
			msg="등록 성공";
			url="/adminNotiList.do";
		}
		
		//model.addAttribute("vo",vo);
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
	}
*/
	
	//*************************************공지 조회********************************************0//
	@RequestMapping("/adminNotiList.do")
	public void adminNotiList(Model model, HttpSession session) {
		logger.info("공지전체리스트 조회 처리");
		MemberVO memVo=(MemberVO)session.getAttribute("memVo");
		
		NoticeBoardVO vo = new NoticeBoardVO();
		vo.setMemberNo(memVo.getMemberNo());
		vo.setHouseholdCode(memVo.getHouseholdCode()); //해당 아파트NO릐 공지리스트 조회 -> 서브쿼리로 xml에서 aptNo 조회
		
		List<NoticeBoardVO> list = noticeService.selectAllNoticeList(vo);
		
		//java.sql.date를 꺼내서 str로 바꿔줌??
//		for (int i = 0; i < list.size(); i++) {
//			vo.getStartDate();
//			vo.getEndDate();
//		}
		
		logger.info("공지전체리스트 list.size={}",list.size());
		
		model.addAttribute("list",list);
	}

	

	//************************************* 공지 수정 ********************************************0//
	@RequestMapping(value = "/adminNotiEdit.do",method = RequestMethod.GET)
	public String adminNotiEdit(@RequestParam(defaultValue = "0") int noticeNo, Model model) {
		logger.info("공지 수정 화면보여주기,파라미터 글번호 noticeNo={}",noticeNo);
		if(noticeNo==0) {
			model.addAttribute("msg","존재하지 않는 공지글입니다");
			model.addAttribute("url","/admin/adminLiving/adminNoti/adminNotiList.do");
			return "common/message";
		}
		
		//DB작업
		NoticeBoardVO vo = noticeService.selectNoticeByNo(noticeNo);
		logger.info("공지글번호로 조회결과 ,vo={}",vo);
				
		model.addAttribute("vo",vo);
		return "admin/adminLiving/adminNoti/adminNotiEdit";
	}

	
	@RequestMapping(value = "/adminNotiEdit.do",method = RequestMethod.POST)
	public String adminNotiEdit_post(@ModelAttribute NoticeBoardVO vo, Model model) {
		logger.info("공지 수정 처리, vo={}",vo);

		int result=noticeService.updateNotice(vo);
		logger.info("공지 수정 처리 결과, result={}",result);
		
		String msg="공지 수정 실패";
		String url="/admin/adminLiving/adminNoti/adminNotiEdit.do?noticeNo="+vo.getNoticeNo();
		if(result>0) {
			msg="공지 수정 성공";
		}
		
		model.addAttribute("msg",msg);
		model.addAttribute("url",url);
		
		return "common/message";
		
	}
	

	
	
	
	
	
	

}
