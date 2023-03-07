package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.DAO_Z;
import com.smhrd.model.income_expenseVO;
import com.smhrd.model.userVO;

@WebServlet("/calInputservice")
public class calInputservice extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		
		
		String item_type =request.getParameter("item_type");
		String item_content =request.getParameter("item_content");
		String amount =request.getParameter("amount") ;
		String item_tag =request.getParameter("item_tag");
		String item_dt =request.getParameter("item_dt");
		String user_id = ((userVO)session.getAttribute("loginD")).getUser_id();
		
		
		if(item_content.equals("")) {
			item_content =null;
		}
		
		income_expenseVO vo = new income_expenseVO(item_type,item_content,Integer.parseInt(amount),item_tag,item_dt,user_id);
		
		DAO_Z dao = new DAO_Z();
		
		int cnt = dao.calAddInput(vo);
		
		if(cnt>0) {
			System.out.println("입출금 달력에 입력 성공");
		}
		else {
			System.out.println("입출금 달력에 입력 실패");
		}
		
		
		
	}

}
