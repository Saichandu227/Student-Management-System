package com.vcube.dao;

import com.vcube.model.StudentModel;

public interface StudentDAOinterface {

	public String insertData(StudentModel sd);
	public StudentModel readData(StudentModel sm);
	public boolean updateStudent(StudentModel student);
	public boolean updatePassword(StudentModel student);

}
