package com.election;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class otpvalidation extends HttpServlet{
	public void service(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		HttpSession session=request.getSession();
		//for prevention of back button after logout
		response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
		session.setMaxInactiveInterval(10*60);
		if(session.getAttribute("email")==null)
		{
			response.sendRedirect("login.html");
		}
		else {
		int otpreference=Integer.parseInt(session.getAttribute("otpgen").toString());
		int otprec=Integer.parseInt(request.getParameter("otp"));
		PrintWriter out=response.getWriter();
		if(otpreference==otprec)
		{
			response.sendRedirect("newpassword.jsp");
		}
		else
		{
			out.print("wrong otp");
		}
		}
		
	}

}
