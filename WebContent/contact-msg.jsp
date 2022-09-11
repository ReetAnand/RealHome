<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%  if(session.getAttribute("email") ==  null)
{
	request.getRequestDispatcher("/demo.jsp").forward(request, response);
} %>
<%@page import="java.sql.*" %>
<%     
	
	
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String subject= request.getParameter("subject");
	String message=request.getParameter("message");
	
	
	
    try{
    	
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/reg","root","root");
	PreparedStatement pst=con.prepareStatement("insert into msg values(?,?,?,?)");
	
	
	pst.setString(1, name);
	pst.setString(2, email);
	pst.setString(3, subject);
	pst.setString(4, message);
	
	
	int i=pst.executeUpdate();
	if(i>0)
	{
		 response.sendRedirect("contact.jsp?msg=done");
		out.print("You are Successfully registered...");
		//request.getRequestDispatcher("/home.jsp").forward(request, response); 
		
		
	}
	else
	{
		out.print("Not Done");
		RequestDispatcher rd=request.getRequestDispatcher("contact.jsp");
		
	}
   }
    
    catch(Exception e)
    {
    	System.out.print(e);
    	
	
    }
    %>
</body>
</html>