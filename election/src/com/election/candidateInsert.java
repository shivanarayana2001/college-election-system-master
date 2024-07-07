package com.election;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class candidateInsert extends HttpServlet{
	public void service(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
		try {
			PrintWriter out=response.getWriter();
			HttpSession session=request.getSession();
				String name=session.getAttribute("name").toString();
				String branch=request.getParameter("branch");
				int age=Integer.parseInt(request.getParameter("age"));
				String category=request.getParameter("category");
				String agenda=request.getParameter("agenda");
				String contestant_id=session.getAttribute("userId").toString();
				//out.println(name+"  "+branch+"  "+age+"  "+category+"  "+agenda+"  "+contestant_id);
				Connection con=GetDBObject.CAPI(getServletContext());
				String sq="INSERT INTO contestant values(?,?,?,?,?,?,?)";
				PreparedStatement ps=con.prepareStatement(sq);
				ps.setString(1, contestant_id);
				ps.setString(2,name);
				ps.setInt(3, age);
				ps.setString(4,branch);
				ps.setString(5, category);
				ps.setString(6, agenda);
				ps.setInt(7, 0);
				int b = ps.executeUpdate();
				if(b!=0) {
					out.print("<h1> succesfully enrolled for the election</h1>");
					out.print("<a href='home.jsp'>click here to go to home page</a>");
				}
				else
				{
					out.print("you have already enrolled/contesting in any cateogry of election so you can\'t participate");
					out.print("<a href='home.jsp'>click here to go to home page</a>");
				}
			
		} catch (SQLException e) {
			PrintWriter out=response.getWriter();
			out.print("<h1>you have already enrolled/contesting in any cateogry of election so you can\'t participate</h1>");
			out.print("<a href='home.jsp'>click here to go to home page</a>");
		}
		}
		
}
