package com.smhrd.virtualData;

public class bankVO {		
		private int Idx; // 순번
		private String VB_id; // 고객
		private String VB_Date; // 날짜
		private String code_Type; // 구분코드 (은행, 카드, 대출)
		private String BankName; // 은행명 (은행&대출 , 카드사 )
		private String Deposit_Withdrawal; // 입출금 코드
		private String Detail; // 거래내역
		private int AccountAmount; // 금액
		
		@Override
		public String toString() {
			return "bankVO [Idx=" + Idx + ", VB_id=" + VB_id + ", VB_Date=" + VB_Date + ", code_Type=" + code_Type
					+ ", BankName=" + BankName + ", Deposit_Withdrawal=" + Deposit_Withdrawal + ", Detail=" + Detail
					+ ", AccountAmount=" + AccountAmount + "]";
		}

		public bankVO() {
			super();
		}

		public bankVO(String vB_id, String vB_Date, String code_Type, String bankName, String deposit_Withdrawal,
				String detail, int accountAmount) {
			super();
			VB_id = vB_id;
			VB_Date = vB_Date;
			this.code_Type = code_Type;
			BankName = bankName;
			Deposit_Withdrawal = deposit_Withdrawal;
			Detail = detail;
			AccountAmount = accountAmount;
		}

		public bankVO(int idx, String vB_id, String vB_Date, String code_Type, String bankName,
				String deposit_Withdrawal, String detail, int accountAmount) {
			super();
			Idx = idx;
			VB_id = vB_id;
			VB_Date = vB_Date;
			this.code_Type = code_Type;
			BankName = bankName;
			Deposit_Withdrawal = deposit_Withdrawal;
			Detail = detail;
			AccountAmount = accountAmount;
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

		public String getBankName() {
			return BankName;
		}

		public void setBankName(String bankName) {
			BankName = bankName;
		}

		public String getDeposit_Withdrawal() {
			return Deposit_Withdrawal;
		}

		public void setDeposit_Withdrawal(String deposit_Withdrawal) {
			Deposit_Withdrawal = deposit_Withdrawal;
		}

		public String getDetail() {
			return Detail;
		}

		public void setDetail(String detail) {
			Detail = detail;
		}

		public int getAccountAmount() {
			return AccountAmount;
		}

		public void setAccountAmount(int accountAmount) {
			AccountAmount = accountAmount;
		}
		
		
		
}
