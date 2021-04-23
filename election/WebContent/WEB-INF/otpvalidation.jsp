<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%

response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
session.setMaxInactiveInterval(10*60);
if(session.getAttribute("to")==null)
{
	response.sendRedirect("maillogin.jsp");
}

%>
<style>
body{
	background-color: darkslategray;
   font-family: cursive;
   height: 750px;
   width:1275px;
   padding-left: 180px;
}
* {box-sizing: border-box}
input[type=text], input[type=password] {
   width: 100%;
   font-size: 28px;
   padding: 15px;
   margin: 5px 0 22px 0;
   display: inline-block;
   border: none;
   background:#b6ebfa;
}
h1{
   text-align: center;
color: rgb(2, 182, 107);
font-size: 50px;


}
label{
   font-size: 30px;
}
input[type=text]:focus, input[type=password]:focus {
   background-color: #ddd;
   outline: none;
}
hr {
   border: 1px solid #f1f1f1;
   margin-bottom: 25px;
   box-sizing: content-box;
}
button {
   font-size: 18px;
   font-weight: bold;
   background-color: #141921;
   color: white;
   padding: 14px 20px;
   margin: 8px 0;
   border: black;
   cursor: pointer;
   width: 100%;
   opacity: 0.9;
}
button:hover {
   opacity:1;
   color: aqua;
}
.formContainer {
   padding: 16px;
}
.formContainer p{
   font-size: 28px;
}
.center {
  display: block;
  margin-left: auto;
  margin-right: auto;
  margin-top: auto;
}
</style>
<body>
<a href="https://klh.edu.in/" target="_blank"><img alt="logo" src="H:\election\images\hoLogo.png"  width="450" height="270" class="center"></a>
<div class="formContainer">
<form action="otpvalidation" method="POST">

<h1>enter otp sent to your mail</h1>
<label for="userId"><b>OTP</b></label>
<input type="text" placeholder="enter 6 digit otp" name="otp" required>

<button type="submit" class="login">submit</button>

</form>
</div>
</body>
</html>