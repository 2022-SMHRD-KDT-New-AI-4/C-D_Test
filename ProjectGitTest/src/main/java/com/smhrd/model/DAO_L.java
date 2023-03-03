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
		public int target_add(targetVO vo) {
			SqlSession session = sqlSesstionFAcFactory.openSession(true);
			int cnt = session.insert("target_add", vo);
			session.close();
			return cnt;
			
		}
}
