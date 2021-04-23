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

input[type=text]{
   width: 50%;
   font-size: 28px;
   padding: 15px;
   margin: 5px 0 22px 0;
   display: inline-block;
   border: none;
   background:#b6ebfa;
}
input[type=submit] {
   font-size: 18px;
   font-weight: bold;
   background-color: #141921;
   color: white;
   padding: 14px 20px;
   margin: 8px 0;
   border: black;
   cursor: pointer;
   width: 75%;
   opacity: 0.9;
}
button:hover {
   opacity:1;
   color: aqua;
}
h1{
   
color: #f0683c;
font-size: 40px;
font-family: cursive;

}
h3{
   
color: #ff0000;
font-family: cursive;

}

</style>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:darkslategrey;">
<%@ page import="java.util.*,java.sql.*" %>
<table>
  <tr>
    <th>ID</th>
    <th>NAME</th>
    <th>age</th>
    <th>branch</th>
    <th>category</th>
    <th>agenda</th>
   </tr>
    <%
    session.setAttribute("voteforsports", "yes");
    Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/election","root","password");
	Statement s=con.createStatement();
	ResultSet rs=s.executeQuery("select * from contestant where category=\"sports\"");
	while(rs.next())
	{
		out.println("<tr><td>"+rs.getString("contestant_id")+"</td><td>"+rs.getString("name")+"</td><td>"+rs.getInt("age")+"</td><td>"+rs.getString("branch")+"</td><td>"+rs.getString("category")+"</td><td>"+rs.getString("agenda")+"</tr>");
	}
	
    %>
 </table>
    <form action="voted1.jsp" onsubmit="myFunction()">
    <label for="voteid"><h1>please enter your contestant's id to vote him/her in below text field</h1></label>
  <input type="text" id="voteid" name="voteid"><br><br>
  <input type="submit" value="Submit">
  <h3>please read this before vote:</h3>
  <h4>if your vote is casted perfectly then you will be redirected to your login page</h4>
  <h4>if your vote is not casted perfectly i.e if you dont cote the contestants who are listed here you will be redirected to your home page</h4>
</form>
<script>
function myFunction() {
  alert("if your vote is casted perfectly then you will be redirected to your login page  ...........OR........... if your vote is not casted perfectly i.e if you dont cote the contestants who are listed here you will be redirected to your home page");
}
</script>
</table>
</body>
</html>
