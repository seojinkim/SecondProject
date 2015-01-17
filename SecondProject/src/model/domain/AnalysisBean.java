package model.domain;

public class AnalysisBean {

	private String id;
	private int balance;

	public AnalysisBean() {}

	public AnalysisBean(String id, int balance) {
		super();
		this.id = id;
		this.balance = balance;
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getBalance() {
		return balance;
	}

	public void setBalance(int balance) {
		this.balance = balance;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("AnalysisBean [id=");
		builder.append(id);
		builder.append(", balance=");
		builder.append(balance);
		builder.append("]");
		return builder.toString();
	}

}
