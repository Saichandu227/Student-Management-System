package com.vcube.controller;

import java.io.IOException;

import com.vcube.dao.StudentDAO;
import com.vcube.model.StudentModel;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/lgn")
public class Login extends HttpServlet {

	public Login() {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String pass = request.getParameter("password");
		String email = request.getParameter("email");

		StudentModel sm = new StudentModel();
		sm.setPassword(pass);
		sm.setEmail(email);

		StudentDAO c = new StudentDAO();
		StudentModel student = c.readData(sm);

		if (student != null) {
			System.out.println(student);
			HttpSession session = request.getSession();
			session.setAttribute("student", student);
			RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
			rd.forward(request, response);

		} else {

			request.setAttribute("errorMessage", "Invalid credentials. Please try again.");
			RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
			rd.forward(request, response);

		}
	}

}
