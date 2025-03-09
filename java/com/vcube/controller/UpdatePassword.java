package com.vcube.controller;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.vcube.dao.StudentDAO;
import com.vcube.model.StudentModel;

@WebServlet("/updatePassword")
public class UpdatePassword extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		StudentModel student = (StudentModel) request.getSession().getAttribute("student");

		if (student != null) {
			String password = request.getParameter("password");

			student.setPassword(password);

			StudentDAO studentDAO = new StudentDAO();
			boolean isUpdated = studentDAO.updatePassword(student);

			if (isUpdated) {
				request.getSession().setAttribute("student", student);
				response.sendRedirect("Profile.jsp");
			} else {
				request.setAttribute("errorMessage", "Password update failed!");
				request.getRequestDispatcher("PasswordUpdate.jsp").forward(request, response);
			}
		} else {
			response.sendRedirect("Home.jsp");
		}
	}

}
