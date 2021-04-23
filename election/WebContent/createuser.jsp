<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
body
{

align-items: center;

}
</style>
<head>
<link rel="stylesheet" href="candidateenroll.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<%
//for prevention of back button after logout
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
session.setMaxInactiveInterval(10*60);
if(session.getAttribute("userId")==null)
{
	response.sendRedirect("login.html");
}
%>

<a href="logout.jsp" style="margin-left:35cm;color: wheat;"><button style="height:1cm ;width: 3cm;font-size: large;margin-top: -1cm; color:red;border:3px solid rgb(0, 0, 0);">logout</button></a>
<body style="background-color :darkslategray ;">
<form action="userInsert.jsp">
	
    <label for="name"><h2 style="color: wheat;font-family :-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;display: inline;"><i>name:&emsp;&emsp;&emsp;&emsp;&ensp;&ensp; </i></h2></label>
    <input type="text" placeholder="Enter name" name="name" required style="height: 1cm;width: 6cm;margin-left: 0.7cm;">
    <br>
    <br>
    <br>
    <label for="userId"><h2 style="color: wheat;font-family :-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;display: inline;"><i>ID:-&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;    </i></h2></label>
    <input type="text" placeholder="Enter userId" name="userId" required style="height: 1cm;width: 6cm;margin-left: 1.cm;">
    </select>
    <br>
    <br>
    <br>
    <label for ="emailId"><h2 style="color: wheat;font-family :-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;display: inline;"><i>emailId :&emsp;&emsp;&emsp;&emsp;&emsp;&ensp; </i></h2></label>
    <textarea rows="10" cols="10" placeholder="enter emailId" name="emailId" required style="height: 1cm;width: 6cm;margin-left:0.3" ></textarea>
    <br>
    <br>
    <br>
    <button type="submit" class="button button1" style="height: 1.5cm;width: 6cm;font-size: larger;margin-left: 10cm;"><b>Submit</b></button>
    </form>
</body>
</body>

</html>