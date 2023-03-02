package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class DAO_G {
//장예지
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public userVO login(userVO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		userVO luser = session.selectOne("login",vo);
		session.close();
		return luser;
	}
	
}
