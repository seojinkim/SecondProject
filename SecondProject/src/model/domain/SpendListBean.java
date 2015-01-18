package model.domain;

public class SpendListBean {
	private int spendNum;
	private String spendName;

	public SpendListBean() {}

	public SpendListBean(int spendNum, String spendName) {
		super();
		this.spendNum = spendNum;
		this.spendName = spendName;
	}

	public int getSpendNum() {
		return spendNum;
	}

	public void setSpendNum(int spendNum) {
		this.spendNum = spendNum;
	}

	public String getSpendName() {
		return spendName;
	}

	public void setSpendName(String spendName) {
		this.spendName = spendName;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("SpendListBean [spendNum=");
		builder.append(spendNum);
		builder.append(", spendName=");
		builder.append(spendName);
		builder.append("]");
		return builder.toString();
	}

}
