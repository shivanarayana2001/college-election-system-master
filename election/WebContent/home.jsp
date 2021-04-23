<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<%@ page import="java.sql.*,java.util.*" %>
<%
//for prevention of back button after logout
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
session.setMaxInactiveInterval(10*60);
if(session.getAttribute("userId")==null)
{
	response.sendRedirect("login.html");
}
%>

<body style="background-color :darkslategray ;">
    <title>home </title>
    <link rel="stylesheet" href="userlogin.css">
    <h2 style="color: wheat;font-family :cursive; font-size:xx-large;text-align: center;">KL Deemed to be university</h2> 
<a href="logout.jsp" style="margin-left:35cm;color: wheat;"><button style="height:1cm ;width: 3cm;font-size: large;margin-top: -1cm; color:red;border:3px solid rgb(0, 0, 0);">logout</button></a>

<a href="changePassword.jsp" style="margin-right:35cm;color: wheat;"><button style="height:1cm ;width: 5cm;font-size: large;margin-top: -1cm; color:red;border:3px solid rgb(0, 0, 0);">change password</button></a>
 
   <img src="https://www.collegesearch.in/upload/exam/document/190308054927_kl_univ_collegesearch.jpg" style="height: 10cm;width: 20cm;margin-left: 9cm;">
    <br><br>
    <h1 style="color: wheat; font-family: cursive;"><b><i>Hi <%=session.getAttribute("name") %> Welcome to kl university voting Portal</i></b><br><br>Greetings for the day :)<br></h1><br>
    <h2 style="color:whitesmoke;text-shadow: 1cm;font-family :-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;">
    <i><b>Hello <%=session.getAttribute("name") %> welcome to the kl universitie's prestigious department the election department . Glad to see you here as a responsible student.<br><br>
        Kl university on a whole has 1000 students and individually each branch has nearly 500 students and kl university ensures student developement
        in each and every aspect like culturals , sports , student affairs etc and it ensures their smooth running by having capable students to run
        these departements without any hurdles .<br><br>so it is in your hands to elect fair leader and mould your future into a bright one.</i></b></h2>
<br><br>
<br>
<h2 style="color: wheat;font-family :-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;"><u>Vote for Candidate:</u></h2><br>
<img src="https://europost.eu/web/files/articles/24620/gallery/thumb_910x0_Vote.jpg" style="height: 9cm;width: 15cm;margin-left: 10cm;"><br>
<h2 style="color: wheat;font-family :-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;"><i>Be a responsible student and elect genuinely</i></h2>
<h2 style="color: wheat;font-family :-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;"><i>Remember that Your vote can change your fate<br><br>The Better Person you elect the better your future will be<br><br>Break the relationship barrier and elect the one who is eligible </i> </h2><br>
<h2 style="color: wheat;font-family :-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;"><i>Select your candidate now</i></h2>
<a href="votecategories.jsp"><button class="button button1" style="height: 1.5cm;width: 8cm;font-size: larger;">Vote now</button></a>
    <br>
    <br>
    <br>
    <br> 
    <h2 style="color:whitesmoke;text-shadow: 1cm;font-family :-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;"><u>Candidate Enrollment:</u></h2>
    <br>
    <img src="https://i2.wp.com/quoteideas.com/wp-content/uploads/best-leadership-quotes-images-pictures-inspirational-7.jpg?resize=600%2C900&ssl=1" style="height: 17cm;width: 15cm;margin-left: 10cm;">
    <h2 style="color: wheat;font-family :-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;"><i>"Leaders will not be born from sky they are the people who knows about fellow mates and thrive to put them in a good path"<br><br>Do you think you are the capable person to change fate of the students<br><br>Do you think that you are that person who can lead your fellow students to a right path<br><br>Then Enroll Immediatly</i></h2>
    <br>
    <a href="candidateEnroll.jsp"><button class="button button2" style="height: 1.5cm;width: 8cm;font-size: larger;">Enroll Now</button></a>   



   
</html>