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
<%
//for prevention of back button after logout
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
session.setMaxInactiveInterval(10*60);
if(session.getAttribute("userId")==null)
{
	response.sendRedirect("login.html");
}
%>
</head>
<body style="background-color: darkslategrey;">
    <link rel="stylesheet" href="voteforcandidate.css"> 
    <a href="logout.jsp" style="margin-left:35cm;color: wheat;"><button style="height:1cm ;width: 3cm;font-size: large;margin-top: -1cm; color:red;border:3px solid rgb(0, 0, 0);">logout</button></a>  
  <title>Vote for Candidate</title>
  <h1 style="color: wheat;font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;"><b><i>Heyy User these are the categories in which elections are going on</i></b></h1>
  <br>
  <br>
  <h1 style="color: wheat;font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;"><b><i><u>Categories :</u> </i></b></h1>
  <br>
  <br>
  <h1 style="color: wheat;font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;"><b><i>1.<u>Department leader :</u><br><br><img src="https://content.thriveglobal.com/wp-content/uploads/2020/02/Student-leadership.jpg" style="height: 8cm;width:18cm;margin-left: 1cm;"><br><br> Department Leader Stands on the student side of his respective departement and helps them in any academic issues and assists them and fights for student rights </i></b></h1>
  <br>
  <br>
<a href="votefordepartment.jsp"><button class="button button1" style="height: 2cm;width: 11cm;font-size: larger;font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;"><b>Go for department leader elections</b></button></a>
<br>
<br>
<br>
<h1 style="color: wheat;font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;"><b><i>2.<u>Sports leader :</u><br><br><img src="https://tractive.com/blog/wp-content/uploads/2018/03/team-sport-activities-stefan-made-the-first-team-win.jpg" style="height: 8cm;width:18cm;margin-left: 1cm;"><br><br><i>Sports Leader is responsible for conducting and smooth running of all the Sports related events in college and takes care of  the students who want to participate in any Sports event in or out the college </i></b></h1>
<br>
<a href="voteforsports.jsp"><button class="button button1" style="height: 2cm;width: 11cm;font-size: large;font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;"><b>Go for Sports leader elections</b></button></a>
<br><br><br><br>
<h1 style="color: wheat;font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;"><b><i>3.<u>Cultural leader :</u><br><br><img src="https://3.imimg.com/data3/IX/JT/MY-17808829/uploads-9xsolutions1-dance_cultural-500x500.jpg" style="height: 8cm;width:16cm;margin-left: 1cm;"><br><br><i>Cultural Leader is responsible for conducting and smooth running of all the Cultural related events in college and takes care of  the students who want to participate in any Cultural event in or out the college </i></b></h1>
<br>
<br>
<a href="voteforcultural.jsp"><button class="button button3" style="height: 2cm;width: 11cm;font-size: large;font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;"><b>Go for Cultural leader elections</b></button></a>
<br><br><br>
<h1 style="color: wheat;font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;"><b><i>4.<u>Technical leader :</u><br><br><img src="https://images.idgesg.net/images/article/2017/08/thinkstockphotos-620955908-100732018-large.jpg" style="height: 8cm;width:16cm;margin-left: 1cm;"><br><br><i>Technical Leader is responsible for conducting and smooth running of all the Technical related events in college and takes care of  the students who want to participate in any Technical event in or out the college </i></b></h1>
<br>
<br>
<a href="votefortechnical.jsp"><button class="button button4" style="height: 2cm;width: 11cm;font-size: large;font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;"><b>Go for Technical leader elections</b></button></a>

</body>
</html>