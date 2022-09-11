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
	request.getRequestDispatcher("Admin-login.jsp").forward(request, response);
} %>
<%@page import="java.sql.*" %>
<%     
	
	
	String category=request.getParameter("category");
	String name=request.getParameter("name");
	String date= request.getParameter("date");
	String image=request.getParameter("image");
	String description=request.getParameter("description");
	
	
	
    try{
    	
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/reg","root","root");
	PreparedStatement pst=con.prepareStatement("insert into blog values(?,?,?,?,?)");
	
	
	pst.setString(1, category);
	pst.setString(2, name);
	pst.setString(3, date);
	pst.setString(4, image);
	pst.setString(5,description);
	
	
	int i=pst.executeUpdate();
	if(i>0)
	{
		 response.sendRedirect("post-blog.jsp?msg=done");
		out.print("You are Successfully registered...");
		//request.getRequestDispatcher("/try.jsp").forward(request, response);
		
	}
	else
	{
		out.print("Not Done");
		RequestDispatcher rd=request.getRequestDispatcher("post-blog.jsp");
		
	}
   }
    
    catch(Exception e)
    {
    	System.out.print(e);
    	
	
    }
    %>
</body>
</html>