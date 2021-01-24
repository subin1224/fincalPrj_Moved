package com.it.apt.adminLiving.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeBoardDAOMyBatis implements NoticeBoardDAO{
	@Autowired
	private SqlSession sqlSession;
	
	private String namespace="config.mybatis.mapper.oracle.noticeBoard.";

	@Override
	public int insertNotice(NoticeBoardVO vo) {
		return sqlSession.insert(namespace+"insertNotice",vo);
	}

	@Override
	public List<NoticeBoardVO> selectAllNoticeList(NoticeBoardVO vo) {
		return sqlSession.selectList(namespace+"selectAllNoticeList",vo);
	}

	@Override
	public NoticeBoardVO selectNoticeByNo(int noticeNo) {
		return sqlSession.selectOne(namespace+"selectNoticeByNo",noticeNo);
	}

	@Override
	public int updateNotice(NoticeBoardVO vo) {
		return sqlSession.update(namespace+"updateNotice",vo);
	}

	@Override
	public int insertScheduler(NoticeBoardVO vo) {
		return sqlSession.insert(namespace+"insertScheduler",vo);
	}
	
	
	
}
