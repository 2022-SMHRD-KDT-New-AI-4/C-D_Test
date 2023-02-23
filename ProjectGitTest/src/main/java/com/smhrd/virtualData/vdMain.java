package com.smhrd.virtualData;

import java.util.ArrayList;
import java.util.Random;

public class vdMain {

	public static void main(String[] args) {
		bankDAO dao = new bankDAO();
		Random random = new Random();
		
		ArrayList<String> memlist = new ArrayList<String>();
		memlist.add("차지현");
		memlist.add("강경우");
		memlist.add("장예지");
		memlist.add("장향미");
		memlist.add("이철민");
		memlist.add("김선미");
		memlist.add("권선택");
		memlist.add("이명훈");
	
		
		String []  BankNameList = {
				"KEB하나은행","SC제일은행","국민은행","기업은행",
				"농협","신한은행","우리은행","한국시티은행"};
		
		String [] DetailList = {
				"저축/보험","식비","공과금","생필품","품위유지비","교통비","기타"				
		};
		
		for (int i = 0; i<100; i++) {
			
			String Member = memlist.get(random.nextInt
					(memlist.size())); // 고객 랜덤 
			
			String date = dao.data(2023); // 랜덤 입력할 연도 숫자로 입력
			
			String BankName = BankNameList[random.nextInt(BankNameList.length)]; 
			// 은행 랜덤
			
			String Detail = DetailList[random.nextInt(DetailList.length)]; 
			// 소비태그 랜덤
			
			String Deposit_Withdrawal = dao.Deposit_Withdrawal(5); 
			// 입금 5% , 지출 95% 확률로 랜덤
			
			long Amount = random.nextInt(1000) * 100 ;
			
			BankVO vo = new BankVO(Member, date, BankName,Detail, Deposit_Withdrawal, Amount);
			System.out.println(vo.toString());
			dao.insert(vo);
			
			
		}
	}

}
