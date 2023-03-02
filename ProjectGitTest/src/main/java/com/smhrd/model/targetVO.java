package com.smhrd.model;

public class targetVO {
	private int target_seq;
	private String target_name;
	private int target_amount;
	private String user_id;
	private String target_start;
	private String target_end;
	
	
	
	@Override
	public String toString() {
		return "targetVO [target_seq=" + target_seq + ", target_name=" + target_name + ", target_amount="
				+ target_amount + ", user_id=" + user_id + ", target_start=" + target_start + ", target_end="
				+ target_end + "]";
	}

	public targetVO() {
		
	}
	
	public targetVO(int target_seq, String target_name, int target_amount, String user_id, String target_start,
			String target_end) {
		this.target_seq = target_seq;
		this.target_name = target_name;
		this.target_amount = target_amount;
		this.user_id = user_id;
		this.target_start = target_start;
		this.target_end = target_end;
	}



	public int getTarget_seq() {
		return target_seq;
	}



	public void setTarget_seq(int target_seq) {
		this.target_seq = target_seq;
	}



	public String getTarget_name() {
		return target_name;
	}



	public void setTarget_name(String target_name) {
		this.target_name = target_name;
	}



	public int getTarget_amount() {
		return target_amount;
	}



	public void setTarget_amount(int target_amount) {
		this.target_amount = target_amount;
	}



	public String getUser_id() {
		return user_id;
	}



	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}



	public String getTarget_start() {
		return target_start;
	}



	public void setTarget_start(String target_start) {
		this.target_start = target_start;
	}



	public String getTarget_end() {
		return target_end;
	}



	public void setTarget_end(String target_end) {
		this.target_end = target_end;
	}
	
	
}
