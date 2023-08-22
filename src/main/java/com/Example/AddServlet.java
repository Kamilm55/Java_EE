package com.Example;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.ProcessBuilder.Redirect;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/add")
public class AddServlet extends HttpServlet
{

	public void doPost(HttpServletRequest req , HttpServletResponse res) throws IOException, ServletException
	{
		int num1 = Integer.parseInt(req.getParameter("num1"));
		int num2 = Integer.parseInt(req.getParameter("num2"));
		
		int result = num1 + num2;

//		HttpSession session = req.getSession();
//		session.setAttribute("result",result );
		Cookie cookie = new Cookie("result",Integer.toString(result));
		res.addCookie(cookie);
		
		res.sendRedirect("SqServlet");
		
//		res.sendRedirect("SqServlet?result=" + result);

//		req.setAttribute("result",result );
//		RequestDispatcher rDispatcher = req.getRequestDispatcher("SqServlet");
//		rDispatcher.forward(req, res);
		
	}
}
