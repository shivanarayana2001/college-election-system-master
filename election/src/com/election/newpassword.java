package com.election;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;

/**
 * Servlet implementation class changePassword
 */
public class newpassword extends HttpServlet {
	public void service(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
		HttpSession session=request.getSession();
		response.setHeader("Cache-Control","no-cache , no-store,nust-revalidate");
		session.setMaxInactiveInterval(10*60);
		if(session.getAttribute("email").toString()==null)
		{
			response.sendRedirect("login.html");
		}
		else {
		PrintWriter out=response.getWriter();
		try {
			String newPassword=request.getParameter("newPassword");
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/election","root","password");
			String emid=session.getAttribute("email").toString();
			PreparedStatement ps=con.prepareStatement("update user set password = \'"+newPassword+"\' where emailId=\'"+emid+"\'");
			int k=ps.executeUpdate();
			if(k!=0)
			{
				response.sendRedirect("otplogout.jsp");
			}
			else
			{
				out.print("password is not changed");
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		}
		
	}

}
