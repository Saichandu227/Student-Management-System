package com.vcube.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Types;

import com.vcube.model.StudentModel;
import com.vcube.utility.DBConnection;

public class StudentDAO implements StudentDAOinterface {
	DBConnection d = new DBConnection();
	Connection con;
	String status = "fail";

	public String insertData(StudentModel sm) {
		try {
			con = d.getConnection();

			PreparedStatement p = con.prepareStatement(
					"insert into registration(stname,email,mobile,course,branch,yop,stpassword) values(?,?,?,?,?,?,?)");
			p.setString(1, sm.getName());
			p.setString(2, sm.getEmail());
			p.setString(3, sm.getMobile());
			p.setString(4, sm.getCourse());
			p.setString(5, sm.getBranch());
			p.setString(6, sm.getYop());
			p.setString(7, sm.getPassword());

			int n = p.executeUpdate();

			if (n > 0) {
				status = "SUCCESS";
				System.out.println(status);
			}

			con.close();

		} catch (Exception e) {
			e.printStackTrace();

		}
		return status;
	}

	public StudentModel readData(StudentModel sm) {
		try {
			con = d.getConnection();

			PreparedStatement p = con.prepareStatement("select * from registration where email = ? and stpassword = ?");
			p.setString(1, sm.getEmail());
			p.setString(2, sm.getPassword());

			ResultSet rs = p.executeQuery();
			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String mobile = rs.getString(4);
				String course = rs.getString(5);
				String branch = rs.getString(6);
				String yop = rs.getString(7);
				String stpass = rs.getString(8);
				StudentModel student = new StudentModel(id, name, email, mobile, course, branch, yop, stpass);
//				student.setId(id);
				return student;

			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public boolean updateStudent(StudentModel student) {
		boolean isUpdated = false;

		try {
			con = d.getConnection();

			PreparedStatement p = con.prepareStatement(
					"UPDATE registration SET stname = ?, email = ?, mobile = ?, course = ?, branch = ?, yop=? WHERE sno = ?");

			p.setString(1, student.getName());
			p.setString(2, student.getEmail());
			p.setString(3, student.getMobile());
			p.setString(4, student.getCourse());
			p.setString(5, student.getBranch());
			p.setString(6, student.getYop());
			p.setInt(7, student.getId());

			int rowsAffected = p.executeUpdate();

			if (rowsAffected > 0) {
				isUpdated = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isUpdated;
	}

	public boolean updatePassword(StudentModel student) {
		boolean isUpdated = false;

		try {
			con = d.getConnection();

			PreparedStatement p = con.prepareStatement("UPDATE registration SET stpassword=? WHERE sno = ?");

			p.setString(1, student.getPassword());
			p.setInt(2, student.getId());

			int rowsAffected = p.executeUpdate();

			if (rowsAffected > 0) {
				isUpdated = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isUpdated;
	}

}
