package com.smhrd.virtualData;

import java.util.ArrayList;
import java.util.Random;

public class monthly_salary {

	public static void main(String[] args) {
		bankDAO dao = new bankDAO();
		Random random = new Random();
		String[] bnList = { "KEB하나은행", "SC제일은행", "국민은행", "기업은행", "농협", "신한은행", "우리은행", "한국시티은행" };
		
		ArrayList<String> vb_idList = dao.userNameSelect(); 
		// tb_user 테이블에서 회원명 select 후 ArrayList 입력
		
		for (String id : vb_idList ) {
		
			String vb_id = id; // 회원 아이디 
			String bankname = bnList[random.nextInt(bnList.length)]; // 은행 랜덤
			int dd = random.nextInt(28)+1;
			int amount = dao.Salary(vb_id) / 10000 *10000;
			//int amount = 0;
			
			for (int i=0; i<3; i++) {

				
				String vb_date = null;
				if (dd >9) {
					vb_date = "2023-0"+(i+1)+"-"+dd;
				} else {
					vb_date = "2023-0"+(i+1)+"-0"+dd;
				}

				System.out.println(
				"insert into virtualbank values (mbseq.nextVal,'"+vb_id+"','"+vb_date+
				"', '은행','"+bankname+"','수입','월급',"+amount+");"
				);
			
				
				
			}
			
			
		}

	}

}
