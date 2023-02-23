package com.smhrd.virtualData;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class bankDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	Random random = new Random();
	
	//  은행 가상데이터 insert
	public int vdInsert(bankVO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("vdInsert",vo);
		session.close();
		return cnt;
	}
	
	// 입금 확률 입력 받고, 확률에 맞춰서 출금,입금 리턴
	public String Deposit_Withdrawal (int num1) {	
		int num = 0 ; // 랜덤숫자가 담길 변수
		num = random.nextInt(99) + 1;	
		if (num > num1) {	
			return "출금";
		} else {
			return "입금";
		}
	}

	// 날짜 랜덤(랜덤년 입력)
	public String data(int yyyy) {
		if (yyyy>= 2023) {	
			int mm = random.nextInt(3)+1;
			int dd = 0;
			if (mm == 1 ) {
				dd = random.nextInt(31)+1;
			} else if (mm == 2) {
				dd = random.nextInt(28)+1;
			} else {
				dd = random.nextInt(8)+1;
			} // 날짜 랜덤
			return yyyy+"-"+mm+"-"+dd;
		} else {
			int mm = random.nextInt(12)+1;
			int dd = 0;
			if (mm == 1 || mm == 3 || mm == 5 || mm == 7
				|| mm == 8 || mm == 10 || mm == 12) {
				dd = random.nextInt(31)+1;
			} else if (mm == 2) {
				dd = random.nextInt(28)+1;
			} else {
				dd = random.nextInt(30)+1;
			}
			return yyyy+"-"+mm+"-"+dd;
		}

	}
	
	// tb_user 테이블에서 회원명 select 후 ArrayList 입력
	public ArrayList<String> userNameSelect () {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<String> list = session.selectList("userNameSelect");
		session.close();
		return (ArrayList<String>) list ;
	}
	
	// tb_target 테이블에서 목표명 select 후 ArrayList 입력 + 소비태그
	public ArrayList<String> DetailList (String user_name) {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<String> list = session.selectList("targetNameSelect",user_name);
		session.close();	
		
		list.add("저축/보험");
		list.add("식비");
		list.add("공과금");
		list.add("생필품");
		list.add("품위유지비");
		list.add("교통비");
		list.add("기타");

		return (ArrayList<String>) list ;
		
	}
	
}
