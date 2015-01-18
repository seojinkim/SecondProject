package model.domain;

import java.sql.Date;

public class IncomeBean {
	private int rowIndex;
	private int incomeNum;
	private String id;
	private int incomePrice;
	private String incomeDate;
	private String memo;

	public IncomeBean() {}

	public IncomeBean(int rowIndex, int incomeNum, String id, int incomePrice, String incomeDate, String memo) {
		super();
		this.rowIndex = rowIndex;
		this.incomeNum = incomeNum;
		this.id = id;
		this.incomePrice = incomePrice;
		this.incomeDate = incomeDate;
		this.memo = memo;
	}

	public int getRowIndex() {
		return rowIndex;
	}

	public void setRowIndex(int rowIndex) {
		this.rowIndex = rowIndex;
	}

	public int getIncomeNum() {
		return incomeNum;
	}

	public void setIncomeNum(int incomeNum) {
		this.incomeNum = incomeNum;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getIncomePrice() {
		return incomePrice;
	}

	public void setIncomePrice(int incomePrice) {
		this.incomePrice = incomePrice;
	}

	public String getIncomeDate() {
		return incomeDate;
	}

	public void setIncomeDate(String incomeDate) {
		this.incomeDate = incomeDate;
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
		builder.append("IncomeBean [rowIndex=");
		builder.append(rowIndex);
		builder.append(", incomeNum=");
		builder.append(incomeNum);
		builder.append(", id=");
		builder.append(id);
		builder.append(", incomePrice=");
		builder.append(incomePrice);
		builder.append(", incomeDate=");
		builder.append(incomeDate);
		builder.append(", memo=");
		builder.append(memo);
		builder.append("]");
		return builder.toString();
	}

}
