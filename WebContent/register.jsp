<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%
    
    String fn=request.getParameter("t1");
	String ln=request.getParameter("t2");
	String em=request.getParameter("t3");
	String pss1=request.getParameter("t4");
	String mob=request.getParameter("t6");
	
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/reg","root","root");
	PreparedStatement pst=con.prepareStatement("insert into reg(first_name,last_name,email,password,mobile) values(?,?,?,?,?);");

	pst.setString(1, fn);
	pst.setString(2, ln);
	pst.setString(3, em);
	pst.setString(4, pss1);
	pst.setString(5, mob);
	
	int i=pst.executeUpdate();
	if(i>0)
	{
		response.sendRedirect("demo.jsp");
		out.print("You are Successfully registered...");
		
	}
	else
	{
		RequestDispatcher rd=request.getRequestDispatcher("/registration.html");
	}
   }
    
    catch(Exception e)
    {
    	System.out.print(e);
    	
    	
    }
    %>
</body>
</html>