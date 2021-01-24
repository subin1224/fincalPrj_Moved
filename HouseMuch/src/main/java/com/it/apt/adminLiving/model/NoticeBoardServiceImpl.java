package com.it.apt.adminLiving.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service 
public class NoticeBoardServiceImpl implements NoticeBoardService{

	@Autowired NoticeBoardDAO noticeBoardDao;

	@Override
	public int insertNotice(NoticeBoardVO vo) {
		return noticeBoardDao.insertNotice(vo);
	}

	@Override
	public List<NoticeBoardVO> selectAllNoticeList(NoticeBoardVO vo) {
		return noticeBoardDao.selectAllNoticeList(vo);
	}

	@Override
	public NoticeBoardVO selectNoticeByNo(int noticeNo) {
		return noticeBoardDao.selectNoticeByNo(noticeNo);
	}

	@Override
	public int updateNotice(NoticeBoardVO vo) {
		return noticeBoardDao.updateNotice(vo);
	}

	@Override
	public int insertScheduler(NoticeBoardVO vo) {
		return noticeBoardDao.insertScheduler(vo);
		//로직을 여기다 쓸지 ? insertNotice에서 트랜잭션처리해서 일정등록 성공 후 공지등록 메서드 써야할 지?
	}
	
	
}
