package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.DAO_L;
import com.smhrd.model.income_expenseVO;

@WebServlet("/targetaddservice")
public class targetaddservice extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String item_tag = request.getParameter("item_tag");
		int amount = Integer.parseInt(request.getParameter("amount"));
		String user_id = request.getParameter("user_id");
				
		income_expenseVO vo = new income_expenseVO(amount,item_tag,user_id);
		
		DAO_L dao = new DAO_L();
		
		
		
	}

}
