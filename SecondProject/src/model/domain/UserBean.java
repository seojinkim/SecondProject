package model.domain;

public class UserBean {
	private String id;
	private String pw;
	private String name;
	private int age;
	private String phoneNumber;

	public UserBean() {}

	public UserBean(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}

	public UserBean(String id, String pw, String name, int age, String phoneNumber) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.age = age;
		this.phoneNumber = phoneNumber;
	}

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

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("UserBean [id=");
		builder.append(id);
		builder.append(", pw=");
		builder.append(pw);
		builder.append(", name=");
		builder.append(name);
		builder.append(", age=");
		builder.append(age);
		builder.append(", phoneNumber=");
		builder.append(phoneNumber);
		builder.append("]");
		return builder.toString();
	}

}
