package model.domain;

import java.sql.Date;

public class ExpenseBean {
	private int rowIndex;
	private String id;
	private int expenseCode;
	private ExpenseListBean expenseName;
	private int expensePrice;
	private String memo;
	private String date;

	public ExpenseBean() {}
	
	public ExpenseBean(int rowIndex, String id) {
		super();
		this.rowIndex = rowIndex;
		this.id = id;
	}

	public ExpenseBean(int rowIndex, String id, int expenseCode, int expensePrice, String note, String date) {
		super();
		this.rowIndex = rowIndex;
		this.id = id;
		this.expenseCode = expenseCode;
		this.expensePrice = expensePrice;
		this.memo = note;
		this.date = date;
	}

	public ExpenseBean(int rowIndex, String id, int expenseCode, ExpenseListBean expenseName, int expensePrice, String memo, String date) {
		super();
		this.rowIndex = rowIndex;
		this.id = id;
		this.expenseCode = expenseCode;
		this.expenseName = expenseName;
		this.expensePrice = expensePrice;
		this.memo = memo;
		this.date = date;
	}

	public int getRowIndex() {
		return rowIndex;
	}

	public void setRowIndex(int rowIndex) {
		this.rowIndex = rowIndex;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getExpenseCode() {
		return expenseCode;
	}

	public void setExpenseCode(int expenseCode) {
		this.expenseCode = expenseCode;
	}

	public int getExpensePrice() {
		return expensePrice;
	}

	public void setExpensePrice(int expensePrice) {
		this.expensePrice = expensePrice;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public ExpenseListBean getExpenseName() {
		return expenseName;
	}

	public void setExpenseName(ExpenseListBean expenseName) {
		this.expenseName = expenseName;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("지출 [번호=");
		builder.append(rowIndex);
		builder.append(", 지출 분류=");
		builder.append(expenseCode).append(".").append(expenseName.getExpenseName());
		builder.append(", 금액=");
		builder.append(expensePrice);
		builder.append(", 메모=");
		builder.append(memo);
		builder.append(", 날짜=");
		builder.append(date);
		builder.append("]");
		return builder.toString();
	}

}
