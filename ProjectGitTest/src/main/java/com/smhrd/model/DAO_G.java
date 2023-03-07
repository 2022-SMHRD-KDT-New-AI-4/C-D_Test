package com.smhrd.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

import oracle.jdbc.OracleTypeMetaData.Array;

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

	//내자산 조회
	public assetVO select(String user_id) {
		System.out.println(user_id);
		SqlSession session =sqlSessionFactory.openSession(true);
		assetVO myasset = session.selectOne("asset",user_id);
		session.close();
		return myasset;
	}
	//소비현황 조회
	public ArrayList<income_expenseVO> tagselect (String user_id){
		SqlSession session =sqlSessionFactory.openSession(true);
		List<income_expenseVO> tg_list = session.selectList("taglist", user_id);
		session.close();
		return (ArrayList<income_expenseVO>) tg_list;
	}
	
	//20대 월별 사용량
	public ArrayList<AgeMonthVO> avgselect20 (){
		SqlSession session =sqlSessionFactory.openSession(true);
		List<AgeMonthVO> avg_20 =session.selectList("avg_20");
		session.close();
		System.out.println(avg_20.toString());
		return (ArrayList<AgeMonthVO>) avg_20;
	}
	
	//30대 월별 사용량
	public ArrayList<AgeMonthVO>avgselect30(){
		SqlSession session = sqlSessionFactory.openSession(true);
		List<AgeMonthVO> avg_30 = session.selectList("avg_30");
		session.close();
		return (ArrayList<AgeMonthVO>)avg_30;
	}
}
