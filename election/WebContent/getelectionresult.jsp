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
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 3px solid #1f284d;
  text-align: left;
  padding: 8px;
  font-family: cursive;
  color: black;
  font-size: 0.65cm;
}

th {
  border: 1px solid #1f284d;
  text-align: left;
  padding: 8px;
  font-family: cursive;
  font-size: 1cm;
  color: red;
}

tr:nth-child(even) {
  background-color: #2be095;
  color:darkslategrey;
}



</style>

<meta charset="ISO-8859-1">
<title>election result</title>
</head>
<body style="background-color:darkslategrey;">
<%@ page import="java.util.*,java.sql.*,com.election.*" %>
<table>
  <tr>
    <th>ID</th>
    <th>NAME</th>
    <th>age</th>
    <th>branch</th>
    <th>category</th>
    <th>agenda</th>
    <th>votes</th>
   </tr>
    <%
    Connection con=GetDBObject.CAPI(getServletContext());;
	Statement s=con.createStatement();
	ResultSet rs=s.executeQuery("select * from contestant order by category desc");
	while(rs.next())
	{
		out.println("<tr><td>"+rs.getString("contestant_id")+"</td><td>"+rs.getString("name")+"</td><td>"+rs.getInt("age")+"</td><td>"+rs.getString("branch")+"</td><td>"+rs.getString("category")+"</td><td>"+rs.getString("agenda")+"</td><td>"+rs.getString("votes")+"</tr>");
	}
	
    %>
 

</table>
</body>
</html>
