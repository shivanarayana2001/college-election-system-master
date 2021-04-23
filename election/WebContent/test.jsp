<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="logout.jsp" method="post">
      <input type="submit" value="Logout">
   </form>

<% 

response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
if(session.getAttribute("userId")==null)
{
	response.sendRedirect("login.html");
}
else
{
	out.println("hiii test");
}

%>
</body>
</html>