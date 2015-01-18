package model.domain;

import java.sql.Date;

public class SpendBean {
	private int rowIndex;
	private int spendNum;
	private String id;
	private String spendLocation;
	private int spendPrice;
	private String spendDate;
	private String memo;

	public SpendBean() {
		// TODO Auto-generated constructor stub
	}

	public SpendBean(int rowIndex, int spendNum, String id, String spendLocation, int spendPrice, String spendDate, String memo) {
		super();
		this.rowIndex = rowIndex;
		this.spendNum = spendNum;
		this.id = id;
		this.spendLocation = spendLocation;
		this.spendPrice = spendPrice;
		this.spendDate = spendDate;
		this.memo = memo;
	}

	public int getRowIndex() {
		return rowIndex;
	}

	public void setRowIndex(int rowIndex) {
		this.rowIndex = rowIndex;
	}

	public int getSpendNum() {
		return spendNum;
	}

	public void setSpendNum(int spendNum) {
		this.spendNum = spendNum;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getSpendLocation() {
		return spendLocation;
	}

	public void setSpendLocation(String spendLocation) {
		this.spendLocation = spendLocation;
	}

	public int getSpendPrice() {
		return spendPrice;
	}

	public void setSpendPrice(int spendPrice) {
		this.spendPrice = spendPrice;
	}

	public String getSpendDate() {
		return spendDate;
	}

	public void setSpendDate(String spendDate) {
		this.spendDate = spendDate;
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
		builder.append("SpendBean [rowIndex=");
		builder.append(rowIndex);
		builder.append(", spendNum=");
		builder.append(spendNum);
		builder.append(", id=");
		builder.append(id);
		builder.append(", spendLocation=");
		builder.append(spendLocation);
		builder.append(", spendPrice=");
		builder.append(spendPrice);
		builder.append(", spendDate=");
		builder.append(spendDate);
		builder.append(", memo=");
		builder.append(memo);
		builder.append("]");
		return builder.toString();
	}

}
