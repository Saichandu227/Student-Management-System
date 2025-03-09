package com.vcube.controller;

import java.io.IOException;

import com.vcube.dao.StudentDAO;
import com.vcube.model.StudentModel;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/updateProfile")
public class Update extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		StudentModel student = (StudentModel) request.getSession().getAttribute("student");

		if (student != null) {
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String mobile = request.getParameter("mobile");
			String course = request.getParameter("course");
			String branch = request.getParameter("branch");
			String year = request.getParameter("year");

			student.setName(name);
			student.setEmail(email);
			student.setMobile(mobile);
			student.setCourse(course);
			student.setBranch(branch);
			student.setYop(year);

			StudentDAO studentDAO = new StudentDAO();
			boolean isUpdated = studentDAO.updateStudent(student);

			if (isUpdated) {
				request.getSession().setAttribute("student", student);
				response.sendRedirect("Home.jsp"); 
			} else {
				request.setAttribute("errorMessage", "Profile update failed!");
				request.getRequestDispatcher("Update.jsp").forward(request, response);
			}
		} else {
			response.sendRedirect("Login.jsp");
		}
	}
}
