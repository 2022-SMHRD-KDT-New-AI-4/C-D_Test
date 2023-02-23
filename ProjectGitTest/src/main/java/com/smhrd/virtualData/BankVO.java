package com.smhrd.virtualData;

public class BankVO {		
		private int bk_Idx; // 순번
		private String bk_Member; // 고객
		private String bk_Date; // 날짜
		private String bk_BankName; // 은행명
		private String bk_Detail; // 거래내역
		private String bk_Deposit_Withdrawal; // 입출금 코드
		private long bk_AccountAmount; // 금액
		
		
		@Override
		public String toString() {
			return "BankVO [bk_Idx=" + bk_Idx + ", bk_Member=" + bk_Member + ", bk_Date=" + bk_Date + ", bk_BankName="
					+ bk_BankName + ", bk_Detail=" + bk_Detail + ", bk_Deposit_Withdrawal=" + bk_Deposit_Withdrawal
					+ ", bk_AccountAmount=" + bk_AccountAmount + "]";
		}


		public BankVO(int bk_Idx, String bk_Member, String bk_Date, String bk_BankName, String bk_Detail,
				String bk_Deposit_Withdrawal, long bk_AccountAmount) {
			super();
			this.bk_Idx = bk_Idx;
			this.bk_Member = bk_Member;
			this.bk_Date = bk_Date;
			this.bk_BankName = bk_BankName;
			this.bk_Detail = bk_Detail;
			this.bk_Deposit_Withdrawal = bk_Deposit_Withdrawal;
			this.bk_AccountAmount = bk_AccountAmount;
		}


		public BankVO(String bk_Member, String bk_Date, String bk_BankName, String bk_Detail,
				String bk_Deposit_Withdrawal, long bk_AccountAmount) {
			super();
			this.bk_Member = bk_Member;
			this.bk_Date = bk_Date;
			this.bk_BankName = bk_BankName;
			this.bk_Detail = bk_Detail;
			this.bk_Deposit_Withdrawal = bk_Deposit_Withdrawal;
			this.bk_AccountAmount = bk_AccountAmount;
		}


		public BankVO() {
			super();
		}


		public int getBk_Idx() {
			return bk_Idx;
		}


		public void setBk_Idx(int bk_Idx) {
			this.bk_Idx = bk_Idx;
		}


		public String getBk_Member() {
			return bk_Member;
		}


		public void setBk_Member(String bk_Member) {
			this.bk_Member = bk_Member;
		}


		public String getBk_Date() {
			return bk_Date;
		}


		public void setBk_Date(String bk_Date) {
			this.bk_Date = bk_Date;
		}


		public String getBk_BankName() {
			return bk_BankName;
		}


		public void setBk_BankName(String bk_BankName) {
			this.bk_BankName = bk_BankName;
		}


		public String getBk_Detail() {
			return bk_Detail;
		}


		public void setBk_Detail(String bk_Detail) {
			this.bk_Detail = bk_Detail;
		}


		public String getBk_Deposit_Withdrawal() {
			return bk_Deposit_Withdrawal;
		}


		public void setBk_Deposit_Withdrawal(String bk_Deposit_Withdrawal) {
			this.bk_Deposit_Withdrawal = bk_Deposit_Withdrawal;
		}


		public long getBk_AccountAmount() {
			return bk_AccountAmount;
		}


		public void setBk_AccountAmount(long bk_AccountAmount) {
			this.bk_AccountAmount = bk_AccountAmount;
		}
	
		
		

		
}
