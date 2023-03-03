package com.smhrd.virtualData;

import java.util.ArrayList;
import java.util.Random;

public class mainVB {

	public static void main(String[] args) {
		bankDAO dao = new bankDAO();
		Random random = new Random();
		String[] bnList = { "KEB하나은행", "SC제일은행", "국민은행", "기업은행", "농협", "신한은행", "우리은행", "한국시티은행" };
		String[] knList = { "현대카드", "삼성카드", "롯데카드", "비씨카드", "신한카드", "KB국민카드", "우리카드", "하나카드", "NH농협카드", "IBK기업은행" };

		ArrayList<String> vb_idList = dao.userNameSelect(); 
		// tb_user 테이블에서 회원명 select 후 ArrayList 입력
		
		for (String id : vb_idList ) {
			String vb_id = id; // 회원 아이디 
			
			// 월급 쿼리문 작성 시작
			String bankname = bnList[random.nextInt(bnList.length)]; // 은행 랜덤
			int dd = random.nextInt(28)+1;
			int amount = dao.Salary(vb_id) / 10000 *10000;
			
			for (int i=0; i<3; i++) {
				String vb_date = null;
				if (dd >9) {
					vb_date = "2023-0"+(i+1)+"-"+dd;
				} else {
					vb_date = "2023-0"+(i+1)+"-0"+dd;
				}
				System.out.println(
				"insert into virtualbank values (mbseq.nextVal,'"+vb_id+"','"+vb_date+
				"', '은행','"+bankname+"','입금','월급',"+amount+");"
				);
			} // 월급 쿼리문 끝
			
			// 초기 카드 값 설정 시작
			int icNum = random.nextInt(6);// 카드 랜덤
			String[] bn = new String[icNum]; // 카드 랜덤 저장

			for (int i = 0; i < icNum; i++) {
				bn[i] = knList[random.nextInt(knList.length)];
				for (int j = 0; j < i; j++) {
					if (bn[i].equals(bn[j])) {
						i--;
					}
				} // 카드 중복 제거
			}
			
			for (int i = 0; i < icNum; i++) {
				amount = (random.nextInt(500) + 1) * 1000;
				String vb_date = dao.data(2023);
				String detail = dao.DetailList(vb_id).get(random.nextInt(dao.DetailList(vb_id).size()));
				System.out.println("insert into virtualbank values (mbseq.nextVal,'" + vb_id + "','" + vb_date
						+ "', '카드','" + knList[i] + "','지출','" + detail + "'," + amount + ");");
			} // 초기 카드 값 설정 끝

			// 초기 대출 값 설정 시작
			int ilNum = random.nextInt(6);// 대출 랜덤
			String[] ln = new String[ilNum]; // 대출 랜덤 저장
			for (int i = 0; i < ilNum; i++) { // 대출 랜덤
				ln[i] = bnList[random.nextInt(bnList.length)];
				for (int j = 0; j < i; j++) {
					if (ln[i].equals(ln[j])) {
						i--;
					}
				} // 대출 중복 제거
			}
			
			for (int i = 0; i < ilNum; i++) {
				amount = (random.nextInt(100) + 1) * 1000000;
				String yyyy = ( "202"+ random.nextInt(4) );
				String vb_date = dao.data(Integer.parseInt(yyyy));
				String detail = dao.DetailList(vb_id).get(random.nextInt(dao.DetailList(vb_id).size()));
				System.out.println("insert into virtualbank values (mbseq.nextVal,'" + vb_id + "','" + vb_date
						+ "', '대출','" + bnList[i] + "','지출','" + detail + "'," + amount + ");");
			} // 초기 대출 값 설정 끝
			
			// 카드 값 갚기
			
			
			
			
			
		
		




			System.out.println(); // 회원 한명 작업 끝 개행
			
		} // 회원 초기 설정 for문 (월급 입금/ 초기 카드,대출 설정/ 카드 대출 갚기 / 소비하기/ )
		
		

	} // main

} // class
