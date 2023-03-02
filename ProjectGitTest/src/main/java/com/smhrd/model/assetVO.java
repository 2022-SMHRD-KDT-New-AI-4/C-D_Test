package com.smhrd.model;

public class assetVO {

	private int asset_seq;
	private String asset_id;
	private String asset_name;
	private int account_balance;
	private String dept_card_name;
	private int dept_amount;
	private int total_asset;
	private String dept_loan_name;
	
	
	
	@Override
	public String toString() {
		return "assetVO [asset_seq=" + asset_seq + ", asset_id=" + asset_id + ", asset_name=" + asset_name
				+ ", account_balance=" + account_balance + ", dept_card_name=" + dept_card_name + ", dept_amount="
				+ dept_amount + ", total_asset=" + total_asset + ", dept_loan_name=" + dept_loan_name + "]";
	}

	public assetVO() {
		
	}
	
	public assetVO(int asset_seq, String asset_id, String asset_name, int account_balance, String dept_card_name,
			int dept_amount, int total_asset, String dept_loan_name) {
		this.asset_seq = asset_seq;
		this.asset_id = asset_id;
		this.asset_name = asset_name;
		this.account_balance = account_balance;
		this.dept_card_name = dept_card_name;
		this.dept_amount = dept_amount;
		this.total_asset = total_asset;
		this.dept_loan_name = dept_loan_name;
	}



	public int getAsset_seq() {
		return asset_seq;
	}



	public void setAsset_seq(int asset_seq) {
		this.asset_seq = asset_seq;
	}



	public String getAsset_id() {
		return asset_id;
	}



	public void setAsset_id(String asset_id) {
		this.asset_id = asset_id;
	}



	public String getAsset_name() {
		return asset_name;
	}



	public void setAsset_name(String asset_name) {
		this.asset_name = asset_name;
	}



	public int getAccount_balance() {
		return account_balance;
	}



	public void setAccount_balance(int account_balance) {
		this.account_balance = account_balance;
	}



	public String getDept_card_name() {
		return dept_card_name;
	}



	public void setDept_card_name(String dept_card_name) {
		this.dept_card_name = dept_card_name;
	}



	public int getDept_amount() {
		return dept_amount;
	}



	public void setDept_amount(int dept_amount) {
		this.dept_amount = dept_amount;
	}



	public int getTotal_asset() {
		return total_asset;
	}



	public void setTotal_asset(int total_asset) {
		this.total_asset = total_asset;
	}



	public String getDept_loan_name() {
		return dept_loan_name;
	}



	public void setDept_loan_name(String dept_loan_name) {
		this.dept_loan_name = dept_loan_name;
	}
	
	
}
