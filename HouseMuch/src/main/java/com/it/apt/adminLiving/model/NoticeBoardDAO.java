package com.it.apt.adminLiving.model;

import java.util.List;

public interface NoticeBoardDAO {
	//기본공지등록
	int insertNotice(NoticeBoardVO vo);
	
	//전체 공지 목록 조회
	List<NoticeBoardVO> selectAllNoticeList(NoticeBoardVO vo);
	
	// 수정화면 보여줄 때 번호로 공지글 가져오기
	NoticeBoardVO selectNoticeByNo(int noticeNo);
	
	// 기본공지 수정
	int updateNotice(NoticeBoardVO vo); 
	
	// 일정 테이블에 일정만 등록하는 메서드
	// startDate 와 endDate가 들어있는 NoticeBoardVO 를 매개변수로 넣어서사용
	int insertScheduler(NoticeBoardVO vo); 
}
