package com.smhrd.virtualData;

import java.util.ArrayList;
import java.util.Random;

public class vdMain {

	public static void main(String[] args) {
		
		bankDAO dao = new bankDAO();
		Random random = new Random();
		
		ArrayList<String> memlist = dao.userNameSelect(); // tb_user에서 회원 Select 후 memlist 저장
	
		
	
		
		
		
		for (int i = 0; i<100; i++) {
			
			String Member = memlist.get(random.nextInt(memlist.size()));  // memlist 에서 랜덤으로 회원 선택
			
			String date = dao.data(2023); // 랜덤 입력할 연도 숫자로 입력
			
			//String BankName = BankNameList[random.nextInt(BankNameList.length)]; // 은행 랜덤
			
			String Detail = dao.DetailList(Member).get(random.nextInt(dao.DetailList(Member).size())) ; // 소비태그 랜덤
			
			String Deposit_Withdrawal = dao.Deposit_Withdrawal(5); // 입금 5% , 지출 95% 확률로 랜덤 (입금 확률 매개변수 입력)
			
			long Amount = random.nextInt(1000) * 100 ;
			
			bankVO vo = new bankVO();
			System.out.println(vo.toString());
			dao.vdInsert(vo);
			
			
			
			
			
			
			
		}
	}

}
