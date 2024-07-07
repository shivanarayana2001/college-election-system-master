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
</head>
<body>
<%@ page import="java.sql.*,com.election.*" %>
<%
Connection con=GetDBObject.CAPI(getServletContext());;
Statement s=con.createStatement();
String iid=session.getAttribute("userId").toString();
int a=Integer.parseInt(session.getAttribute("culturalvote").toString());
if(session.getAttribute("voteforcultural").toString().equals("yes"))
{
	if(a==0)
	{
		String vid=request.getParameter("voteid");
		/*=====================*/
		ResultSet check=s.executeQuery("select contestant_id from contestant where category=\'cultural\'");
		int chec=0;
		while(check.next())
		{
			if(vid.equals(check.getString(1)))
			{
				chec=1;
			}
		}
		if(chec==0)
		{
			response.sendRedirect("home.jsp");
		}else{
		String q="select * from contestant where contestant_id = \'"+vid+"\'";
		ResultSet rs=s.executeQuery(q);
		int ab=0;
			while(rs.next())
			{
				ab=rs.getInt("votes");	
			}
			ab=ab+1;
			rs.close();
		PreparedStatement ps=con.prepareStatement("update contestant "+"set votes =\'"+ab+"\'where contestant_id = \'"+vid+"\'");
		ps.execute();
		ps.close();
		a=99;
		PreparedStatement pss=con.prepareStatement("update user "+"set culturalvote =\'"+a+"\'where userId = \'"+iid+"\'");
		pss.execute();
		out.println("voted succesfully");
		response.sendRedirect("logout.jsp");
		}
	}
	else
	{
		out.println("u already voted in this section");
	}
}

%>
body>
</html>
