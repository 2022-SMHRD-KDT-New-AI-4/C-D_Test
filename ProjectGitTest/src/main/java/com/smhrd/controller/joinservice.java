package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.MemberDAO;
import com.smhrd.model.userVO;

@WebServlet("/joinservice")
public class joinservice extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String salary = request.getParameter("salary");
		String nick = request.getParameter("nick");

		userVO vo = new userVO(id, pw, name, age, salary, nick);

		MemberDAO dao = new MemberDAO();
		int cnt = dao.join(vo);

		if (cnt > 0) {
			System.out.println("회원가입 성공");
			RequestDispatcher rd = request.getRequestDispatcher("join_success.jsp");
			request.setAttribute("joinId", id);
			rd.forward(request, response);
		} else {
			System.out.println("회원가입 실패");
			response.sendRedirect("main.jsp");
		}
	}

}
