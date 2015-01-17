package model.domain;

import java.sql.Date;

public class IncomeBean {
	private int rowIndex;
	private String id;
	private int incomeCode;
	private IncomeListBean incomeName;
	private int incomePrice;
	private String memo;
	private String date;

	public IncomeBean() {}

	public IncomeBean(int rowIndex, String id) {
		super();
		this.rowIndex = rowIndex;
		this.id = id;
	}

	public IncomeBean(int rowIndex, String id, int incomeCode, int incomePrice, String memo, String date) {
		super();
		this.rowIndex = rowIndex;
		this.id = id;
		this.incomeCode = incomeCode;
		this.incomePrice = incomePrice;
		this.memo = memo;
		this.date = date;
	}

	public IncomeBean(int rowIndex, String id, int incomeCode, IncomeListBean incomeName, int incomePrice, String memo, String date) {
		super();
		this.rowIndex = rowIndex;
		this.id = id;
		this.incomeCode = incomeCode;
		this.incomeName = incomeName;
		this.incomePrice = incomePrice;
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

	public int getIncomeCode() {
		return incomeCode;
	}

	public void setIncomeCode(int incomeCode) {
		this.incomeCode = incomeCode;
	}
	
	public IncomeListBean getIncomeName() {
		return incomeName;
	}

	public void setIncomeName(IncomeListBean incomeName) {
		this.incomeName = incomeName;
	}

	public int getIncomePrice() {
		return incomePrice;
	}

	public void setIncomePrice(int incomePrice) {
		this.incomePrice = incomePrice;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("수입 [번호=");
		builder.append(rowIndex);
		builder.append(", 수입 분류=");
		builder.append(incomeCode).append(".").append(incomeName.getIncomeName());
		builder.append(", 금액=");
		builder.append(incomePrice);
		builder.append(", 메모=");
		builder.append(memo);
		builder.append(", 날짜=");
		builder.append(date);
		builder.append("]");
		return builder.toString();
	}

}
