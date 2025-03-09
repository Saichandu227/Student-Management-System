package com.vcube.model;

public class StudentModel {

	private int id;
	private String name;
	private String email;
	private String mobile;
	private String course;
	private String branch;
	private String yop;
	private String password;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public String getYop() {
		return yop;
	}

	public void setYop(String yop) {
		this.yop = yop;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public StudentModel(int id, String name, String email, String mobile, String course, String branch, String yop,
			String password) {
		this.id = id;
		this.name = name;
		this.email = email;
		this.mobile = mobile;
		this.course = course;
		this.branch = branch;
		this.yop = yop;
		this.password = password;
	}

	public StudentModel() {

	}

	@Override
	public String toString() {
		return "StudentModel [id=" + id + ", name=" + name + ", email=" + email + ", mobile=" + mobile + ", course="
				+ course + ", branch=" + branch + ", yop=" + yop + ", password=" + password + "]";
	}

}
