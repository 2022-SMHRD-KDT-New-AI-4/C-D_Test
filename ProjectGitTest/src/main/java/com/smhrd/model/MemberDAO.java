package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class MemberDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	public int join(MemberVO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("join",vo);
		session.close();
		return cnt;
	}
	
	public MemberVO login(MemberVO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		MemberVO lvo = session.selectOne("login",vo);
		session.close(); 
		return lvo;
	}
	
	public int update(MemberVO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.update("update",vo);
		session.close();
		return cnt;
	}
}
