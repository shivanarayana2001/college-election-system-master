package com.election;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

public class login extends HttpServlet{

	public void service(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
	try {
		String userId=request.getParameter("userId");
		String password=request.getParameter("password");;
		Connection con=GetDBObject.CAPI(getServletContext());
		//checking whether the user is admin or not
		boolean admin=false;
		
		Statement as=con.createStatement();
		ResultSet ars=as.executeQuery("select * from admin");
		while(ars.next())
		{
			if(userId.equals(ars.getString(1))&& password.equals(ars.getString(3)))
			{
				admin=true;
				HttpSession session=request.getSession();
				session.setAttribute("userId",userId);
				session.setAttribute("name", ars.getString(2));
				response.sendRedirect("adhome.jsp");
				break;
			}
		}
		//checking is done for admin
		
		
		
		
		Statement s=con.createStatement();
		String ss="select * from students";
		ResultSet rs= s.executeQuery(ss);
		boolean gotit=false;
		PrintWriter out=response.getWriter();
		//checking whether the user is normal user or not
		if(!admin)
		{
			while(rs.next())
			{
				//user is not admin but a voter 
				if(userId.equals(rs.getString("userId")) && password.equals(rs.getString("password")))
				{
					HttpSession session=request.getSession();
					session.setAttribute("userId",userId);
					session.setAttribute("name", rs.getString(2));
					session.setAttribute("departmentvote", rs.getInt(5));
					session.setAttribute("sportsvote", rs.getInt(6));
					session.setAttribute("culturalvote", rs.getInt(7));
					session.setAttribute("technicalvote", rs.getInt(8));
					response.sendRedirect("home.jsp");
					gotit=true;
					break;
				}
		
			}
			//invalid user name or password
			if(!gotit)
			{
				response.sendRedirect("login.html");
			}
		}
		
		}
	catch(Exception e)
	{
		System.out.println(e);
	}
}
	
}

