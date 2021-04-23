<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
response.sendRedirect("login.html");
session = request.getSession(false);
session.setAttribute("user", null);
session.removeAttribute("userId");
session.getMaxInactiveInterval();

%>

</body>
</html>