<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%  if(session.getAttribute("email") !=  null)
{
	request.getRequestDispatcher("/owner-welcome.jsp").forward(request, response);
} %>
<%@ page import="java.sql.*" %>
    <% 
    String email=request.getParameter("email");
	String password=request.getParameter("password");
	
	
	try {
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/reg","root","root");
		PreparedStatement pst=con.prepareStatement("Select * from owner_info where email=? and password=?");
		pst.setString(1,email);
		pst.setString(2,password);
		ResultSet rs=pst.executeQuery();
		if(rs.next())
		{
			session.setAttribute("email", email);
			RequestDispatcher rd=request.getRequestDispatcher("owner-welcome.jsp");
			rd.forward(request, response);
		
		}
		else
		{
			
			RequestDispatcher rd=request.getRequestDispatcher("owner-log-in.jsp");
			rd.include(request, response);
			out.print("Sorry, username or password error!");
		}
	} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

	out.close();	
    
    
    %>
    
</body>
</html>