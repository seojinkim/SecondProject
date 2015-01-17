package model.domain;

public class ExpenseListBean {
	private int expenseCode;
	private String expenseName;

	public ExpenseListBean() {}

	public ExpenseListBean(int expenseCode, String expenseName) {
		super();
		this.expenseCode = expenseCode;
		this.expenseName = expenseName;
	}

	public int getExpenseCode() {
		return expenseCode;
	}

	public void setExpenseCode(int expenseCode) {
		this.expenseCode = expenseCode;
	}

	public String getExpenseName() {
		return expenseName;
	}

	public void setExpenseName(String expenseName) {
		this.expenseName = expenseName;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append(expenseCode).append(". ");
		builder.append(expenseName);
		return builder.toString();
	}

}
