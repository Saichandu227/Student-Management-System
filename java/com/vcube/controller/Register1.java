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

@WebServlet("/regis")
public class Register1 extends HttpServlet {

	public Register1() {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("name");
//		System.out.println(name);
		String email = request.getParameter("email");
//		System.out.println(email);
		String mobile = request.getParameter("mobileNumber");
//		System.out.println(mobile);
		String course = request.getParameter("course");
//		System.out.println(course);
		String branch = request.getParameter("branch");
//		System.out.println(branch);
		String yop = request.getParameter("yearPassedOut");
//		System.out.println(yop);
		String pass = request.getParameter("password");
//		System.out.println(pass);

		StudentModel sm = new StudentModel();

		sm.setName(name);
		sm.setEmail(email);
		sm.setMobile(mobile);
		sm.setCourse(course);
		sm.setBranch(branch);
		sm.setYop(yop);
		sm.setPassword(pass);

		StudentDAO c = new StudentDAO();
		String s = c.insertData(sm);

		if (s.equals("SUCCESS")) {

//			request.setAttribute("name", name);
//			HttpSession session = request.getSession();
//			session.setAttribute("name", name);

			RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
			rd.forward(request, response);

		} else {
			RequestDispatcher rd = request.getRequestDispatcher("Register.jsp");
			rd.forward(request, response);

		}
	}

}
