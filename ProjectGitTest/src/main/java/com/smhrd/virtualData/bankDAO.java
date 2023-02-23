package com.smhrd.virtualData;

import java.util.Random;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class bankDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	Random random = new Random();
	
	public int vdInsert(BankVO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("vdInsert",vo);
		session.close();
		return cnt;
	}
	
}
