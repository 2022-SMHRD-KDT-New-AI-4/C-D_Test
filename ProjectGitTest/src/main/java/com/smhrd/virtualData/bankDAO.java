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

	// 은행 가상데이터 insert
	public int vdInsert(bankVO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("vdInsert", vo);
		session.close();
		return cnt;
	}

	// tb_user 테이블에서 회원명 select 후 ArrayList 입력
	public ArrayList<String> userNameSelect() {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<String> list = session.selectList("userNameSelect");
		session.close();
		return (ArrayList<String>) list;
	}

	// 날짜 랜덤(랜덤년 입력)
	public String data(int yyyy) {
		if (yyyy == 2023) {
			int num = random.nextInt(100)+1;
			int mm = 0;
			int dd = 0;
			if (num >45) {
				dd = random.nextInt(31) + 1;
				mm = 1;
			} else if (num >90) {
				dd = random.nextInt(28) + 1;
				mm = 2;
			} else {
				dd = random.nextInt(8) + 1;
				mm = 3;
				
			}
			 // 날짜 랜덤
			
			if (dd < 10) {
				return yyyy + "-0" + mm + "-0" + dd;
			} // 날짜가 10보다 작으면 앞에 0 입력
			return yyyy + "-0" + mm + "-" + dd;
		} else {
			int mm = random.nextInt(12) + 1;
			String mm0 = null ;
			if (mm < 10 ) {
				mm0 = "0"+mm;
			} else {
				mm0 = ""+mm;
			}
			
			int dd = 0;
			if (mm == 1 || mm == 3 || mm == 5 || mm == 7 || mm == 8 || mm == 10 || mm == 12) {
				dd = random.nextInt(31) + 1;
			} else if (mm == 2) {
				dd = random.nextInt(28) + 1;
			} else {
				dd = random.nextInt(30) + 1;
			}
			
			if (dd < 10) {
				return yyyy + "-" + mm0 + "-0" + dd;
			} // 날짜가 10보다 작으면 앞에 0 입력
			return yyyy + "-" + mm0 + "-" + dd;
			
		}

	}

	// 구분코드 랜덤(은행, 카드, 대출)
	public String code_Type() {
		String Type;
		int num = 0; // 랜덤숫자가 담길 변수
		num = random.nextInt(99) + 1;

		if (num <= 35) {
			Type = "은행";
		} else if (num <= 70) {
			Type = "카드";
		} else {
			Type = "대출";
		}

		return Type;
	}

	// 구분코드 결과에 따라 은행, 카드 명 랜덤
	public String BankName(String Type) {
		String BankName = null;
		String[] bnList = { "KEB하나은행", "SC제일은행", "국민은행", "기업은행", "농협", "신한은행", "우리은행", "한국시티은행" };
		String[] knList = { "현대카드", "삼성카드", "롯데카드", "비씨카드", "신한카드", "KB국민카드", "우리카드", "하나카드", "NH농협카드", "IBK기업은행" };

		if (Type.equals("카드")) {
			BankName = knList[random.nextInt(knList.length)];
		} else {
			BankName = bnList[random.nextInt(bnList.length)];
		}

		return BankName;
	}

	// 입금 확률 입력 받고, 확률에 맞춰서 출금,입금 리턴
	public String Deposit_Withdrawal(int num1) {
		int num = 0; // 랜덤숫자가 담길 변수
		num = random.nextInt(99) + 1;
		if (num > num1) {
			return "출금";
		} else {
			return "입금";
		}
	}

	// tb_target 테이블에서 목표명 select 후 ArrayList 입력 + 소비태그
	public ArrayList<String> DetailList(String user_id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<String> list = session.selectList("targetNameSelect", user_id);
		session.close();

		list.add("저축/보험");
		list.add("식비");
		list.add("공과금");
		list.add("생필품");
		list.add("품위유지비");
		list.add("교통비");
		list.add("기타");

		return (ArrayList<String>) list;

	}

	// tb_user 테이블에서 연봉 select 후 (코드 + 난수) * 천만 / 13 로 금액 산출
	public int Salary(String user_name) {

		SqlSession session = sqlSessionFactory.openSession(true);
		int Salary = (Integer) session.selectOne("user_salarySelectVB", user_name);
		session.close();

		double db = random.nextDouble(); // 0~1 난수 랜덤
		int ys = (int) ((Salary + db) * 100) * 100000; // 코드 + 난수 * 천만
		return (ys / 13);

	}

	// virtualBank 테이블에서 잔액 얼마 있는지 확인
	public int check (bankVO vo) {	
		SqlSession session = sqlSessionFactory.openSession(true);
		int Balance = (Integer) session.selectOne("BalanceCheckSelect", vo);
		session.close();
		
		return Balance;
	}

	

}
