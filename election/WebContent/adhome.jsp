<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admin home page</title>
</head>

<a href="logout.jsp" style="margin-left:35cm;color: wheat;"><button style="height:1cm ;width: 3cm;font-size: large;margin-top: -1cm; color:red;border:3px solid rgb(0, 0, 0);">logout</button></a>
   
<% //for prevention of back button after logout
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
if(session.getAttribute("userId")==null)
{
	response.sendRedirect("login.html");
}
%>
<body style="background-color: darkslategray;">
    <link rel="stylesheet" href="adminlogin.css">  
    <title>Admin Page</title>
    <body>
        <h1  style="font-size :xx-large"><i>KL Deemed to be University</i></h1><br>
        <h1 style="margin-left: 12.8cm;font-size: xx-large;">Welcome to Admin Page</h1>
        <img src="H:/election/images/admin.jpg">
        <br><br><br>
        <h1><i>Hi Admin you are given previlage for the following functionalities</i></h1><br>
        <ul>
            <li><i>Creating user</i> </li><br>
            <li><i>Getting election result</i> </li><br>
            <li><i>Getting Candidates</i> </li><br>
        </ul>
        <br>
        <h1 style="color: wheat;font-family : Lucida Bright;"><i><b><b>1. </b>Creating user</b></i></h1><br><br>
        <img src="H:\election\images\user.jpg">
        <br><br>
        <h1><i>Admin under this section your are granted privilages to create election for any branch at any time and everything is under your control.<br><br>
               Be sure that every student enrollment is accepted according to norms and create a fair election</i></h1><br> <br>
        <a href="createuser.jsp" target="_blank"><button class="button button1"><b>Go for user creation</b></button></a>
        <br><br><br><br><br>
        <br>
        <h1 style="color: wheat;font-family : Lucida Bright;"><i><b><b>2. </b>Getting Election result</b></i></h1><br><br>
        <img src="H:\election\images\result.jpg">
        <br><br>
        <h1><i>Admin under this section your are granted privilages to get the results of the elections which were created by you and you can declare the results</i></h1>
        <a href="getelectionresult.jsp"  target="_blank"><button class="button button2"><b>Get result now</b></button></a>
        <br>
        <br><br>
        <br>
        <h1 style="color: wheat;font-family : Lucida Bright;"><i><b><b>3. </b>Getting Candidate</b></i></h1><br><br>
        <img src="H:\election\images\candid.jpg">
        <br><br>
        <h1><i>Admin under this section your are granted privilages to get the candidates enrolled for elections .<br><br> Be careful while accepting Candidate request and be sure that student past history verification is done by enquiring students and if he/she is involved in any 
            activities that degraded college reputation don't allow them for participating in election.</i></h1>
        <a href="getcandidate.jsp"  target="_blank"><button class="button button3"><b>Get Candidates now</b></button></a>
        <br>
        <br>
    </body>
</body>

</html>