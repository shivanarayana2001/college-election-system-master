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

/**
 * Servlet implementation class changePassword
 */
public class changePassword extends HttpServlet {
	public void service(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
		PrintWriter out=response.getWriter();
		try {
			String oldPassword=request.getParameter("oldPassword");
			String newPassword=request.getParameter("newPassword");
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/election","root","password");
			Statement as=con.createStatement();
			ResultSet ars=as.executeQuery("select * from user");
			int flag=0;
			while(ars.next())
			{
				if(oldPassword.equals(ars.getString(3)))
				{
					HttpSession session= request.getSession();
					String user_id =session.getAttribute("userId").toString();
					PreparedStatement ps=con.prepareStatement("update user "+"set password =\'"+newPassword+"\'where userId = \'"+user_id+"\'");
					flag=ps.executeUpdate();
					if(flag!=0)
					{
						out.print("<style>background-color:Darkslategrey</style>");
						out.print("your password changed succesfully"+"\n");
						out.print("<a href='home.jsp'>click here to go to home page</a>");
						break;
					}
					
				}
			}
			if(flag==0)
			{
				out.println("you have entered wrong password");
				out.print("<a href='home.jsp'>click here to go to home page</a>");
			}
			
			}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

}
