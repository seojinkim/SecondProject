package model.domain;

public class GradeBean {
	private int grade;
	private String gradeName;

	public GradeBean() {}

	public GradeBean(int grade, String gradeName) {
		super();
		this.grade = grade;
		this.gradeName = gradeName;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public String getGradeName() {
		return gradeName;
	}

	public void setGradeName(String gradeName) {
		this.gradeName = gradeName;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Grade [grade=");
		builder.append(grade);
		builder.append(", gradeName=");
		builder.append(gradeName);
		builder.append("]");
		return builder.toString();
	}

}
