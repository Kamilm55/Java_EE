package com.Example;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "Square",urlPatterns = {"/SqServlet"})
public class SqServlet extends HttpServlet {
//	Cookies and sessions
//	are used by websites to store users' data across different pages of the site. The key difference between sessions and cookies is that sessions are saved on the server side while cookies are saved on the client side. Cookies are small text files used to store user information on the user's computer.
	
	public void doGet(HttpServletRequest req , HttpServletResponse res) throws IOException
	{
//		int result = (int) req.getAttribute("result");
//		int result = Integer.parseInt(req.getParameter("result"));
//		HttpSession session = req.getSession();
//		int result = (int) session.getAttribute("result");
		
		Cookie cookies[] = req.getCookies();
		
		int result = 0;
		for(Cookie c : cookies ) {
			if (c.getName().equals("result")) {
			result = Integer.parseInt(c.getValue());
		}}
		
		int squareResult = result * result;
		
		ServletContext ctx = getServletContext();
		String name = ctx.getInitParameter("name");//These context values are available from any servlet
		String phone = ctx.getInitParameter("phone");
		
		ServletConfig config = getServletConfig();
		String nameConfig = config.getInitParameter("nameConfig");//Config is sepecific to a particular servlet
		
		PrintWriter out = res.getWriter();
		out.println("<html><body style=\"background: green;\">");
		out.println("Output is: " + squareResult + "<br/>");
		out.println("Name is:" + name + "<br/>");
		out.println("Phone is:" + phone + "<br/><br/><br/>");
		
		out.println("Config name is:" + nameConfig + "<br/>");
		out.println("</body></html>");
	}
}
