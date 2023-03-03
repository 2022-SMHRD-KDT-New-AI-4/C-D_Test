package com.smhrd.virtualData;

import java.util.ArrayList;
import java.util.Random;

public class Card_loan {

	public static void main(String[] args) {
		bankDAO dao = new bankDAO();
		Random random = new Random();

		String[] bnList = { "KEB하나은행", "SC제일은행", "국민은행", "기업은행", "농협", "신한은행", "우리은행", "한국시티은행" };
		String[] knList = { "현대카드", "삼성카드", "롯데카드", "비씨카드", "신한카드", "KB국민카드", "우리카드", "하나카드", "NH농협카드", "IBK기업은행" };

		ArrayList<String> vb_idList = dao.userNameSelect();
		// tb_user 테이블에서 회원명 select 후 ArrayList 입력

		for (String id : vb_idList) {

			String vb_id = id;
			int icNum = random.nextInt(6);// 카드 랜덤
			String [] bn = new String [icNum]; // 카드 랜덤 저장

			for (int i = 0; i < icNum; i++) { 	
				bn [i] =  knList[random.nextInt(knList.length)];
				for (int j = 0; j < i ; j++) {
					if (bn[i].equals(bn[j])) {
						i--;
					}
				}
			}
			for (int i = 0; i < icNum; i++) {		     	
				int amount =  (random.nextInt(5000)+1)  * 1000;
				String vb_date = dao.data(2023);
				String detail = dao.DetailList(vb_id).get(random.nextInt(dao.DetailList(vb_id).size()));
		     	System.out.println(
		     			"insert into virtualbank values (mbseq.nextVal,'" + vb_id + "','" + vb_date
		     			+ "', '카드','" + knList[i] + "','"+detail+"','월급'," + amount + ");");
			}
			System.out.println();
			
//			int ilNum = random.nextInt(6);// 대출 랜덤
//			
//			for (int i = 0; i < ilNum; i++) { // 대출 랜덤
////				System.out.println(123);
//			}
			
		}

	}

}
