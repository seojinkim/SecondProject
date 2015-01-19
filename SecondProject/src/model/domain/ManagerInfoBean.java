package model.domain;

import java.util.Date;

public class ManagerInfoBean extends MemberBean {
	private int managerInfoNum;
	private String memberId;
	private String license;
	private int managingMemeber;
	private Date career;
	private MemberBean member;

	public ManagerInfoBean() {
	}

	public ManagerInfoBean(int managerInfoNum, String memberId, String license,
			int managingMemeber, Date career) {
		super();
		this.managerInfoNum = managerInfoNum;
		this.memberId = memberId;
		this.license = license;
		this.managingMemeber = managingMemeber;
		this.career = career;
	}

	public ManagerInfoBean(int managerInfoNum, String memberId, String license,
			int managingMemeber, Date career, MemberBean member) {
		super();
		this.managerInfoNum = managerInfoNum;
		this.memberId = memberId;
		this.license = license;
		this.managingMemeber = managingMemeber;
		this.career = career;
		this.member = member;
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

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public MemberBean getMember() {
		return member;
	}

	public void setMember(MemberBean member) {
		this.member = member;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("ManagerInfoBean [managerInfoNum=");
		builder.append(managerInfoNum);
		builder.append(", memberId=");
		builder.append(memberId);
		builder.append(", license=");
		builder.append(license);
		builder.append(", managingMemeber=");
		builder.append(managingMemeber);
		builder.append(", career=");
		builder.append(career);
		builder.append(", member=");
		builder.append(member);
		builder.append("]");
		return builder.toString();
	}

}
