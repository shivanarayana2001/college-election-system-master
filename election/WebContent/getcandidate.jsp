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
  border: 2px solid #1f284d;
  text-align: left;
  padding: 8px;
  font-family: cursive;
  color: #262626;
  font-size: 0.5cm;
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
<title>Insert title here</title>
</head>
<body style="background-color:darkslategrey;">
<%@ page import="java.util.*,java.sql.*,com.election.*" %>
<table>
  <tr>
    <th>ID</th>
    <th>NAME</th>
    <th>branch</th>
    <th>category</th>
   </tr>
    <%
    session.setAttribute("voteforsports", "yes");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=GetDBObject.CAPI();
	Statement s=con.createStatement();
	ResultSet rs=s.executeQuery("select * from contestant order by category asc");
	while(rs.next())
	{
		out.println("<tr><td>"+rs.getString("contestant_id")+"</td><td>"+rs.getString("name")+"</td><td>"+rs.getString("branch")+"</td><td>"+rs.getString("category")+"</tr>");
	}
	out.println("enter the person\'s id to vote");
	
    %>
 </table>
</form>

</table>
</body>
</html>
