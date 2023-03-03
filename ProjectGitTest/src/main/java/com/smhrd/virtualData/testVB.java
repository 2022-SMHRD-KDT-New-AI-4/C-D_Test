package com.smhrd.virtualData;

import java.util.ArrayList;
import java.util.Random;

import org.apache.ibatis.reflection.SystemMetaObject;

public class testVB {

	public static void main(String[] args) {
		bankDAO dao = new bankDAO();
		Random random = new Random();

		String[] bnList = { "KEB하나은행", "SC제일은행", "국민은행", "기업은행", "농협", "신한은행", "우리은행", "한국시티은행" };
		String[] knList = { "현대카드", "삼성카드", "롯데카드", "비씨카드", "신한카드", "KB국민카드", "우리카드", "하나카드", "NH농협카드", "IBK기업은행" };

		ArrayList<String> tList = new ArrayList<String>();
		tList.add("kp1145");
//		tList.add("cjfals");
//		tList.add("gidal");
//		tList.add("dPwl");
//		tList.add("tjsal");
//		tList.add("ruddn");
//		tList.add("ckwlgus");
//		tList.add("qwe1");
//		tList.add("qwe2");
//		tList.add("qwe3");
		// 테스트 10명

		ArrayList<bankVO> userVBList = new ArrayList<bankVO>();

		int amount = 0;

		for (int vb = 0; vb < tList.size(); vb++) {
			String vb_id = tList.get(vb); // 회원 아이디
			System.out.println("--" + (vb + 1) + "번 회원");
			// 월급 쿼리문 작성 시작
			String bankname = bnList[random.nextInt(bnList.length)]; // 은행 랜덤
			int dd = random.nextInt(28) + 1;
			amount = dao.Salary(vb_id) / 10000 * 10000;

			for (int i = 0; i < 3; i++) {
				String vb_date = null;
				if (dd > 9) {
					vb_date = "2023-0" + (i + 1) + "-" + dd;
				} else {
					vb_date = "2023-0" + (i + 1) + "-0" + dd;
				}
				bankVO vo = new bankVO(vb_id, vb_date, "은행", bankname, "수입", "월급", amount);
				userVBList.add(vo);
				System.out.println(vo.toString());
//				System.out.println("insert into virtualbank values (mbseq.nextVal,'" + vb_id + "','" + vb_date
//						+ "', '은행','" + bankname + "','수입','월급'," + amount + ");");
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
				bankVO vo = new bankVO(vb_id, vb_date, "카드", knList[i], "지출", detail, amount);
				userVBList.add(vo);
				System.out.println(vo.toString());
//				System.out.println("insert into virtualbank values (mbseq.nextVal,'" + vb_id + "','" + vb_date
//						+ "', '카드','" + knList[i] + "','지출','" + detail + "'," + amount + ");");
			} // 초기 카드 값 설정 끝

			// 초기 대출 값 설정 시작123
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
				String yyyy = ("202" + random.nextInt(4));
				String vb_date = dao.data(Integer.parseInt(yyyy));
				String detail = dao.DetailList(vb_id).get(random.nextInt(dao.DetailList(vb_id).size()));
				bankVO vo = new bankVO(vb_id, vb_date, "대출", bnList[i], "지출", "기타", amount);
				userVBList.add(vo);
//				System.out.println(vo.toString());
//				System.out.println("insert into virtualbank values (mbseq.nextVal,'" + vb_id + "','" + vb_date
//						+ "', '대출','" + bnList[i] + "','지출','기타'," + amount + ");");
			} // 초기 대출 값 설정 끝

			// 카드 값 갚기

			int size = userVBList.size();
			int pay = userVBList.get(0).getAccountAmount(); // 월급

			for (int i = 0; i < size; i++) { // 카드 찾기
				if (userVBList.get(i).getCode_Type().equals("카드")) {
					// 0123456789
					// 2023-03-04
					String yyyy1 = userVBList.get(i).getVB_Date().substring(0, 4) + "-";

					for (int m = 0; m <= 3; m++) {

						String mm1 = null;
						if (Integer.parseInt(userVBList.get(0).getVB_Date().substring(6, 7)) + 1 == 10) {
							mm1 = Integer.parseInt(userVBList.get(0).getVB_Date().substring(6, 7)) + 1 + "";
						} else {
							mm1 = userVBList.get(0).getVB_Date().substring(5, 6)
									+ (Integer.parseInt(userVBList.get(0).getVB_Date().substring(6, 7)) + 1);
						}
						String dd1 = "-" + userVBList.get(i).getVB_Date().substring(8);

						String paybackDay = yyyy1 + mm1 + dd1; // 카드 값 갚는 날

						int paybackMomey = (random.nextInt(100) + 1) * 10000; // 갚을 돈
						System.out.println("갚는날 : " + paybackDay + " 갚을 돈 : " + paybackMomey);
						bankVO kvo = new bankVO(vb_id, paybackDay, "카드", userVBList.get(i).getBankName(), "입금", "상환",
								paybackMomey);
						userVBList.add(kvo);
						System.out.println(kvo.toString());
//						System.out.println("insert into virtualbank values (mbseq.nextVal,'" + vb_id + "','" + paybackDay
//							+ "', '카드','" + userVBList.get(i).getBankName() + "','입금','상환',"  + paybackMomey + ");");

						bankVO bvo = new bankVO(vb_id, paybackDay, "은행", userVBList.get(0).getBankName(), "지출", "상환",
								paybackMomey);
						userVBList.add(bvo);
						System.out.println(bvo.toString());
//						System.out.println("insert into virtualbank values (mbseq.nextVal,'" + vb_id + "','" + paybackDay
//							+ "', '은행','" + userVBList.get(0).getBankName() + "','지출','상환',"  + paybackMomey + ");");
					}

				}

			} // 카드 값 갚기 끝

			System.out.println(); // 회원 한명 작업 끝 개행

		} // 회원 초기 설정 for문 (월급 입금/ 초기 카드,대출 설정/ 카드 대출 갚기 / 소비하기 )

	} // main

} // class
