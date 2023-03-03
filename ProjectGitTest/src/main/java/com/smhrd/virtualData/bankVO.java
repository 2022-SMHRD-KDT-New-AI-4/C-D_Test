package com.smhrd.virtualData;

public class bankVO {		
		private int Idx; // 순번
		private String VB_id; // 고객
		private String VB_Date; // 날짜
		private String code_Type; // 구분코드 (은행, 카드, 대출)
		private String bk_BankName; // 은행명 (은행&대출 , 카드사 )
		private String Deposit_Withdrawal; // 입출금 코드
		private String bk_Detail; // 거래내역
		private int bk_AccountAmount; // 금액
		
		
		@Override
		public String toString() {
			return "bankVO [Idx=" + Idx + ", VB_id=" + VB_id + ", VB_Date=" + VB_Date + ", code_Type=" + code_Type
					+ ", bk_BankName=" + bk_BankName + ", Deposit_Withdrawal=" + Deposit_Withdrawal + ", bk_Detail="
					+ bk_Detail + ", bk_AccountAmount=" + bk_AccountAmount + "]";
		}


		public bankVO() {
			super();
		}


		public bankVO(int idx, String vB_id, String vB_Date, String code_Type, String bk_BankName,
				String deposit_Withdrawal, String bk_Detail, int bk_AccountAmount) {
			super();
			Idx = idx;
			VB_id = vB_id;
			VB_Date = vB_Date;
			this.code_Type = code_Type;
			this.bk_BankName = bk_BankName;
			Deposit_Withdrawal = deposit_Withdrawal;
			this.bk_Detail = bk_Detail;
			this.bk_AccountAmount = bk_AccountAmount;
		}


		public bankVO(String vB_id, String vB_Date, String code_Type, String bk_BankName, String deposit_Withdrawal,
				String bk_Detail, int bk_AccountAmount) {
			super();
			VB_id = vB_id;
			VB_Date = vB_Date;
			this.code_Type = code_Type;
			this.bk_BankName = bk_BankName;
			Deposit_Withdrawal = deposit_Withdrawal;
			this.bk_Detail = bk_Detail;
			this.bk_AccountAmount = bk_AccountAmount;
		}


		public int getIdx() {
			return Idx;
		}


		public void setIdx(int idx) {
			Idx = idx;
		}


		public String getVB_id() {
			return VB_id;
		}


		public void setVB_id(String vB_id) {
			VB_id = vB_id;
		}


		public String getVB_Date() {
			return VB_Date;
		}


		public void setVB_Date(String vB_Date) {
			VB_Date = vB_Date;
		}


		public String getCode_Type() {
			return code_Type;
		}


		public void setCode_Type(String code_Type) {
			this.code_Type = code_Type;
		}


		public String getBk_BankName() {
			return bk_BankName;
		}


		public void setBk_BankName(String bk_BankName) {
			this.bk_BankName = bk_BankName;
		}


		public String getDeposit_Withdrawal() {
			return Deposit_Withdrawal;
		}


		public void setDeposit_Withdrawal(String deposit_Withdrawal) {
			Deposit_Withdrawal = deposit_Withdrawal;
		}


		public String getBk_Detail() {
			return bk_Detail;
		}


		public void setBk_Detail(String bk_Detail) {
			this.bk_Detail = bk_Detail;
		}


		public int getBk_AccountAmount() {
			return bk_AccountAmount;
		}


		public void setBk_AccountAmount(int bk_AccountAmount) {
			this.bk_AccountAmount = bk_AccountAmount;
		}
		
		
	

		
}
