package com.smhrd.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class DAO_S {
// 김선미
	
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	
	public ArrayList<income_expenseVO> ietgroupSelects(String user_id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<income_expenseVO> list = session.selectList("ietgroupSelects",user_id);
		session.close();
		return (ArrayList<income_expenseVO>) list;
	}
	
	
	
}
