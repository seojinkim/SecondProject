package model.domain;

import java.util.Date;

public class MemberBean {
	private String id;
	private String name;
	private char sex;
	private Date birthday;
	private int grade;
	private String password;

	public MemberBean() {}

	public MemberBean(String id, String password) {
		super();
		this.id = id;
		this.password = password;
	}

	public MemberBean(String id, String name, char sex, Date birthday, int grade, String password) {
		super();
		this.id = id;
		this.name = name;
		this.sex = sex;
		this.birthday = birthday;
		this.grade = grade;
		this.password = password;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public char getSex() {
		return sex;
	}

	public void setSex(char sex) {
		this.sex = sex;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("MemeberBean [id=");
		builder.append(id);
		builder.append(", name=");
		builder.append(name);
		builder.append(", sex=");
		builder.append(sex);
		builder.append(", birthday=");
		builder.append(birthday);
		builder.append(", grade=");
		builder.append(grade);
		builder.append(", password=");
		builder.append(password);
		builder.append("]");
		return builder.toString();
	}

}
