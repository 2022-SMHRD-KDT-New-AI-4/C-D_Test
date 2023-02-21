package com.smhrd.model;

public class MemberVO {
	private String id;
	private String pw;
	private String name;
	private String age;
	private String salary;
	private String f_num;
	private String nick;
	
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", pw=" + pw + ", name=" + name + ", age=" + age + ", salary=" + salary
				+ ", f_num=" + f_num + ", nick=" + nick + "]";
	}
	
	// 필드
	public MemberVO(String id, String pw, String name, String age, String salary, String f_num, String nick) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.age = age;
		this.salary = salary;
		this.f_num = f_num;
		this.nick = nick;
	}
	
	//생성자
		public MemberVO() {
			
		}

	// 로그인용 이메일 패스워드 생성자
	public MemberVO(String id, String pw) {
		this.id = id;
		this.pw = pw;
	}
	
	// 나이별연봉 생성자
	public MemberVO(String age, String salary, String nick) {
		this.age = age;
		this.salary = salary;
		this.nick = nick;
	}
	
	//겟 셋
	public String getId() {
		return id;
	}

	
	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	public String getF_num() {
		return f_num;
	}

	public void setF_num(String f_num) {
		this.f_num = f_num;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}
	
	
}
