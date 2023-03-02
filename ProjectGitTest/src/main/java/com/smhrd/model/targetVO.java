package com.smhrd.model;
 
public class targetVO {
	
	private String target_name;
	private int target_amount;
	private String target_start;
	private String target_end;
	public targetVO(String target_name, int target_amount, String target_start, String target_end) {
		super();
		this.target_name = target_name;
		this.target_amount = target_amount;
		this.target_start = target_start;
		this.target_end = target_end;
	}
	@Override
	public String toString() {
		return "targetVO [target_name=" + target_name + ", target_amount=" + target_amount + ", target_start="
				+ target_start + ", target_end=" + target_end + "]";
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
