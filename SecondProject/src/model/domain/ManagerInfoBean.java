package model.domain;

import java.util.Date;

public class ManagerInfoBean extends MemberBean {
	private int managerInfoNum;
	private String license;
	private int managingMemeber;
	private Date career;

	public ManagerInfoBean() {}

	public ManagerInfoBean(int managerInfoNum, String license, int managingMemeber, Date career) {
		super();
		this.managerInfoNum = managerInfoNum;
		this.license = license;
		this.managingMemeber = managingMemeber;
		this.career = career;
	}

	public int getManagerInfoNum() {
		return managerInfoNum;
	}

	public void setManagerInfoNum(int managerInfoNum) {
		this.managerInfoNum = managerInfoNum;
	}

	public String getLicense() {
		return license;
	}

	public void setLicense(String license) {
		this.license = license;
	}

	public int getManagingMemeber() {
		return managingMemeber;
	}

	public void setManagingMemeber(int managingMemeber) {
		this.managingMemeber = managingMemeber;
	}

	public Date getCareer() {
		return career;
	}

	public void setCareer(Date career) {
		this.career = career;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("ManagerInfoBean [managerInfoNum=");
		builder.append(managerInfoNum);
		builder.append(", license=");
		builder.append(license);
		builder.append(", managingMemeber=");
		builder.append(managingMemeber);
		builder.append(", career=");
		builder.append(career);
		builder.append("]");
		return builder.toString();
	}

}
