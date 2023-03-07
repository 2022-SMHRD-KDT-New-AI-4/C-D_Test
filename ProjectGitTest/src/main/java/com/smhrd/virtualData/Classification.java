package com.smhrd.virtualData;

import java.util.ArrayList;

import com.smhrd.model.DAO_Z;
import com.smhrd.model.assetVO;
import com.smhrd.model.income_expenseVO;

public class Classification {

	public static void main(String[] args) {
		// 가상 테이블 데이터 만들어지면 tb_asset, tb_income_expense 테이블로 자료 보내주기

		bankDAO dao = new bankDAO();

		int cnt;

		ArrayList<String> vb_idList = dao.userNameSelect(); // user 테이블에서 user_id Select 754




		for (int index = 0; index < 754; index++) {

			String user_id = vb_idList.get(index); // 회원 아이디
			System.out.println("--" + (index + 1) + "번째 회원 아이디 : " + user_id);

			ArrayList<bankVO> userVBList = dao.vbtSelectvb(user_id);
			for (int ie = 0; ie < userVBList.size(); ie++) {
				// tb_income_expense 테이블로 자료 보내기
				String item_dt = userVBList.get(ie).getVB_Date(); // 날짜
				String item_tag = userVBList.get(ie).getDetail(); // 항목태그
				int amount = userVBList.get(ie).getAccountAmount(); // 금액
				String item_content = null;
				if (userVBList.get(ie).getCode_Type().equals("대출")) {

					item_content = "대출_" + userVBList.get(ie).getBankName(); // 은행명
				} else {
					item_content = userVBList.get(ie).getBankName(); // 은행명

				}
				String item_type = userVBList.get(ie).getDeposit_Withdrawal(); // 은행명

				income_expenseVO ievo = new income_expenseVO(item_type, item_content, amount, item_tag, item_dt,
						user_id);
//				System.out.println(ievo.toString());

				cnt = dao.tb_in_exInsertvb(ievo);

			}
			System.out.print("입지출 완료");

			// tb_asset 테이블로 자료 보내기

			int sum = 0;

//			ArrayList<bankVO> PersonalList = dao.groupby3Selectvb(user_id);
//			System.out.println("\t" + PersonalList.size());
//
//			for (int i = 0; i < PersonalList.size(); i++) {
////				System.out.println(PersonalList.get(i).toString());
//				String bank_name = "";
//				int account_balance = 0;
//				String dept_card_name = "";
//				int dept_card_amount = 0;
//				String dept_loan_name = "";
//				int dept_loan_amount = 0;
//
//				if (PersonalList.get(i).code_Type().equals("은행")) {
//
//					bank_name = PersonalList.get(i).getBankName();
//					account_balance = PersonalList.get(i).getAccountAmount();
//
//				} else if (PersonalList.get(i).code_Type().equals("카드")) {
//
//					dept_card_name = PersonalList.get(i).getBankName();
//					dept_card_amount = PersonalList.get(i).getAccountAmount();
//
//				} else {
//
//					dept_loan_name = PersonalList.get(i).getBankName();
//					dept_loan_amount = PersonalList.get(i).getAccountAmount();
//
//				}
//
//				assetVO asvo = new assetVO(user_id, bank_name, account_balance, dept_card_name, dept_card_amount,
//						dept_loan_name, dept_loan_amount);
//
//				DAO_Z daoz = new DAO_Z();
//
//				cnt = daoz.assetAdd(asvo);
////				System.out.println(asvo.toString());
//
////				System.out.println(asvo.toString());
//				cnt = daoz.assetAdd(asvo);
//
//			}
//			System.out.println("내자산 완료");
//			System.out.println();
		} // tb_income_expense 자료 보내기 while
		System.out.println("끝");

	} // main

} // class
