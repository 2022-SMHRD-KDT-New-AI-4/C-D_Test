package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class DAO_L {
// 이철민
//		┌───────────────────────┐
// 		│	쳐다보지 마시오 			│
//		│				-주인백	│
//		└───────────────────────┘
	private SqlSessionFactory sqlSesstionFAcFactory = SqlSessionManager.getSqlSession();
	//회원가입
		public int targetadd(targetVO vo) {
			SqlSession session = sqlSesstionFAcFactory.openSession(true);
			int cnt = session.insert("targetadd", vo);
			session.close();
			return cnt;
			
		}
}
