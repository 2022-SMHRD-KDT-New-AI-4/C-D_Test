package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.DAO_L;
import com.smhrd.model.targetVO;

@WebServlet("/targetservice")
public class targetservice extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String target_name = request.getParameter("target_name");
		int target_amount = Integer.parseInt(request.getParameter("target_amount"));
		String user_id = request.getParameter("user_id");
		String target_start = request.getParameter("target_start");
		String target_end = request.getParameter("target_end");

		targetVO vo = new targetVO(target_name,target_amount,user_id,target_start,target_end);

		DAO_L dao = new DAO_L();
		
		
		int cnt = dao.targetadd(vo);

		if (cnt > 0) {
			System.out.println("목표추가 성공");
			RequestDispatcher rd = request.getRequestDispatcher("TargetList.jsp");
			rd.forward(request, response);
		} else {
			System.out.println("목표추가 실패");
		}
	}

}