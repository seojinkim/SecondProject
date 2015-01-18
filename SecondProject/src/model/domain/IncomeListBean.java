package model.domain;

public class IncomeListBean {
	private int incomeNum;
	private String incomeName;

	public IncomeListBean() {}

	public IncomeListBean(int incomeNum, String incomeName) {
		super();
		this.incomeNum = incomeNum;
		this.incomeName = incomeName;
	}

	public int getIncomeNum() {
		return incomeNum;
	}

	public void setIncomeNum(int incomeNum) {
		this.incomeNum = incomeNum;
	}

	public String getIncomeName() {
		return incomeName;
	}

	public void setIncomeName(String incomeName) {
		this.incomeName = incomeName;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("IncomeListBean [incomeNum=");
		builder.append(incomeNum);
		builder.append(", incomeName=");
		builder.append(incomeName);
		builder.append("]");
		return builder.toString();
	}

}
