package com.smhrd.model;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class DAO_Z {
// 장향미
	
	private SqlSessionFactory sqlSesstionFAcFactory = SqlSessionManager.getSqlSession();
//회원가입
	public int join(userVO vo) {
		SqlSession session = sqlSesstionFAcFactory.openSession(true);
		int cnt = session.insert("joinz", vo);
		session.close();
		return cnt;
	}
	
	
}
