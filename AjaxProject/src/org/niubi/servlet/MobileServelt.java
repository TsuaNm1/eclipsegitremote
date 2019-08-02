package org.niubi.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class MobileServelt extends HttpServlet {


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		
		
		String mobile = request.getParameter("mobile");
		PrintWriter out = response.getWriter();
		if("123".equals(mobile)) {
			//return true;
			//out.write("true");   
			//out.write("号码已存在"); //load方式
			out.write("{\"msg\":\"true\"}");
		}else {
			//return false;
			//out.write("false");
			//out.write("注册成功");
			out.write("{\"msg\":\"false\"}");
		}
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
