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
<form action="candidateInsert">
	<h1 style="color: wheat;"><b><i>Heyy <b><%= session.getAttribute("name") %></b> we appreciate you for choosing the different path</i></b></h1><br><br>
    <img src="https://www.pgi.com/blog/wp-content/uploads/sites/2/2018/04/MLK-quote1-660x330.jpg" style="height: 10cm;width: 20cm;margin-left: 10cm;margin-top: 0cm;">
    <h2 style="color: wheat;font-family :-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;"><i>Please provide the below details</i></h2>
    <br>
    <br>
    <br>
    <label for="branch"><h2 style="color: wheat;font-family :-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;display: inline;"><i>Branch:&emsp;&emsp;&emsp;&emsp;&ensp;&ensp; </i></h2></label>
    <input type="text" placeholder="Enter your Branch" name="branch" required style="height: 1cm;width: 6cm;margin-left: 0.7cm;">
    <br>
    <br>
    <br>
    <label for="age"><h2 style="color: wheat;font-family :-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;display: inline;"><i>Age:&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;    </i></h2></label>
    <input type="number" placeholder="Enter your Age" name="age" required style="height: 1cm;width: 6cm;margin-left: 1.cm;">
    <br>
    <br>
    <br>
    <label for="category"><h2 style="color: wheat;font-family :-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;display: inline;"><i>Category:&emsp;&emsp;&emsp;&emsp;&emsp;&thinsp; </i></h2></label>
    <select name="category" style="height: 1cm;width: 6cm;margin-left: 0.3">
    <option value="null"></option>
    <option value="department">department</option>
    <option value="sports">sports</option>
    <option value="cultural">cultural</option>
    <option value="technical">technical</option>
    </select>
    <br>
    <br>
    <br>
    <label for ="agenda"><h2 style="color: wheat;font-family :-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;display: inline;"><i>Agenda :&emsp;&emsp;&emsp;&emsp;&emsp;&ensp; </i></h2></label>
    <textarea rows="10" cols="10" placeholder="enter agenda" name="agenda" required style="height: 1cm;width: 6cm;margin-left:0.3" ></textarea>
    <br>
    <br>
    <br>
    <button type="submit" class="button button1" style="height: 1.5cm;width: 6cm;font-size: larger;margin-left: 10cm;"><b>Submit</b></button>
    </form>
</body>
</body>

</html>