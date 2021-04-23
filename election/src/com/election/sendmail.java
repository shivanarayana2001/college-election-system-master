package com.election;
import java.io.IOException;
import java.sql.*;
import javax.mail.*;
import java.io.PrintWriter;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.xdevapi.Statement;
public class sendmail extends HttpServlet{
	static Random rand=new Random();
	
	public void service(HttpServletRequest request,HttpServletResponse response) throws IOException
	{	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/election","root","password");
		java.sql.Statement as= con.createStatement();
		ResultSet ars=as.executeQuery("select userId from user");
		String EmailId=request.getParameter("collegeId");
		boolean boo=false;
		while(ars.next())
		{
			if(EmailId.equals(ars.getString("userId")));
			{
				boo=true;
				break;
			}
		}
		if(boo)
		{
		int otp;
		do {
			otp=rand.nextInt(999999);
		}while(otp>=100000);
		
		//receiver email
		String to=EmailId+"@klh.edu.in";
		String subject="OTP for KL students elections";
		String message="hey your OTP is "+otp;
		//senders id
		String from="yourmail@gmail.com";
		String pass="password for above from variabled gmail";
		// Defining the gmail host

	    String host = "smtp.gmail.com";
	    
	    // Defining properties
	    System.out.println("after declaration");
	    Properties properties=new Properties();
	    
	    properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", 587);
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.user", from);
        properties.put("mail.password", pass);
	    
	    
	    System.out.println("after props");
	    
	    Session mailSession = Session.getInstance(properties, new javax.mail.Authenticator() {

	        @Override

	        protected PasswordAuthentication getPasswordAuthentication() {

	        	System.out.println("in password authentication");
	            return new PasswordAuthentication(from, pass);
	            

	        }

	    });
	    String result;

	    try {
	    	System.out.println("in password try field");
	        // Create a default MimeMessage object.

	        MimeMessage message1 = new MimeMessage(mailSession);

	        // Set From: header field of the header.

	        message1.setFrom(new InternetAddress(from));

	        // Set To: header field of the header.

	        message1.addRecipient(Message.RecipientType.TO,

	                new InternetAddress(to));

	        // Set Subject: header field

	        message1.setSubject(subject);

	        // Now set the actual message

	        message1.setText(message);

	        // Send message

	        Transport.send(message1);
	        
	       result = "Your mail sent successfully....";
	       HttpSession session=request.getSession();
	       session.setMaxInactiveInterval(3*60);
	       session.setAttribute("otpgen",otp);
	       session.setAttribute("email",to);
	       response.sendRedirect("otpvalidation.jsp");

	    } catch (MessagingException mex) {

	        mex.printStackTrace();

	        result = "Error: unable to send mail....";

	    }
	    PrintWriter out=response.getWriter();
	    out.println(result);
		}
		else
		{
			PrintWriter out=response.getWriter();
			out.println("please enter your klh regd-no");
		}
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
	}

}
