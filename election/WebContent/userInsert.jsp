
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%
//for prevention of back button after logout
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
session.setMaxInactiveInterval(10*60);
if(session.getAttribute("userId")==null)
{
	response.sendRedirect("login.html");
}
%>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/election","root","password");
PreparedStatement ps=con.prepareStatement("insert into user(userId,name,emailId) values(?,?,?);");
String id=request.getParameter("userId").toString();
String name=request.getParameter("name").toString();
String emailId=request.getParameter("emailId").toString();
ps.setString(1, id);
ps.setString(2, name);
ps.setString(3, emailId);
ps.execute();
response.sendRedirect("createuser.jsp");
out.println("unable to insert");


%>
body>
</html>
