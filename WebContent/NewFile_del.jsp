<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ page import="java.sql.*" %>
    <% 
    String em=request.getParameter("email");
	
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/reg", "root", "root");
    Statement st=conn.createStatement();
   // int i=st.executeUpdate("DELETE FROM owner_info WHERE email='"+em+"' ");
    int i=st.executeUpdate("select * FROM xyz with (holdlock) WHERE email='"+em+"' ");
    out.println("Data blocked Successfully!");
    }
    
    catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}    

	    %>

</body>
</html>