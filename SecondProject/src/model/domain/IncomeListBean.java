package model.domain;

public class IncomeListBean {
	private int incomeCode;
	private String incomeName;

	public IncomeListBean() {}

	public IncomeListBean(int incomeCode, String incomeName) {
		super();
		this.incomeCode = incomeCode;
		this.incomeName = incomeName;
	}

	public int getIncomeCode() {
		return incomeCode;
	}

	public void setIncomeCode(int incomeCode) {
		this.incomeCode = incomeCode;
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
		builder.append(incomeCode).append(". ");
		builder.append(incomeName);
		return builder.toString();
	}
}
