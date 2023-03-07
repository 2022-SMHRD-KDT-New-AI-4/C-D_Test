package com.smhrd.model;

public class AgeMonthVO {
	private String mon;
	private int user_age;
	private int age_month;
	private String user_id;
	
	
	
	@Override
	public String toString() {
		return "AgeMonthVO [mon=" + mon + ", user_age=" + user_age + ", age_month=" + age_month + ", user_id=" + user_id
				+ "]";
	}


	public AgeMonthVO() {
		
	}
	
	
	public AgeMonthVO(String mon, int user_age, int age_month) {
		this.mon = mon;
		this.user_age = user_age;
		this.age_month = age_month;
	}

	public AgeMonthVO(String mon, int user_age, int age_month, String user_id) {
		this.mon = mon;
		this.user_age = user_age;
		this.age_month = age_month;
		this.user_id = user_id;
	}

	public String getMon() {
		return mon;
	}

	public void setMon(String mon) {
		this.mon = mon;
	}

	public int getUser_age() {
		return user_age;
	}

	public void setUser_age(int user_age) {
		this.user_age = user_age;
	}

	public int getAge_month() {
		return age_month;
	}

	public void setAge_month(int age_month) {
		this.age_month = age_month;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
	
	
	
	

}
