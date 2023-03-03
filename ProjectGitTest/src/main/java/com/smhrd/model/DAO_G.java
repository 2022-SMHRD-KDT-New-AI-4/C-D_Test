package com.smhrd.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class DAO_G {
//장예지
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	//로그인 시작
	public userVO login(userVO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		userVO luser = session.selectOne("login",vo);
		session.close();
		return luser;
	}
	//로그인 끝
	
	//업데이트 시작
	public int update(userVO vo) {
		SqlSession session =sqlSessionFactory.openSession(true);
		System.out.println(vo.toString());
		int cnt = session.update("update",vo);
		session.close();
		if(cnt==1) {
			return cnt;
		}else {
			return 0;
		}
	}
	//업데이트 끝
	public ArrayList<income_expenseVO> selectlist(String user_id) {
		System.out.println(user_id);
		SqlSession session =sqlSessionFactory.openSession(true);
		List<income_expenseVO>ie_list = session.selectList("list", user_id);
		session.close();
		return (ArrayList<income_expenseVO>)ie_list;
		
	}// 조회

	
}
