package dto;

// ���� �����ϴ� JavaBean
public class GradeBean {
	protected String id;  // �й�
	protected String name;  // �̸�
	protected String major;  // �а�
	protected double grade;  // ����
	protected double age;  // ����

	
	public GradeBean() { }


	public GradeBean(String id, String name, String major, double grade, double age) {
		super();
		this.id = id;
		this.name = name;
		this.major = major;
		this.grade = grade;
		this.age = age;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getMajor() {
		return major;
	}


	public void setMajor(String major) {
		this.major = major;
	}


	public double getGrade() {
		return grade;
	}


	public void setGrade(double grade) {
		this.grade = grade;
	}


	public double getAge() {
		return age;
	}


	public void setAge(double age) {
		this.age = age;
	}
	
	
}
