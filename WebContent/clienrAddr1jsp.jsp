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
    String hrf=request.getParameter("ref");
    String name=request.getParameter("nm");
    String fst=request.getParameter("fstnm");
    String lst=request.getParameter("lstnm");
    String mb=request.getParameter("mob");
    String email=request.getParameter("email");
    
    try
    {
    	 Class.forName("com.mysql.jdbc.Driver");
    	    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/reg","root","root");
    		PreparedStatement pst=con.prepareStatement("insert into client(first_name,last_name,email,mobile,ref_no,name) values (?,?,?,?,?,?)");
    		
    		pst.setString(1, fst);
    		pst.setString(2, lst);
    		pst.setString(3, email);
    		pst.setString(4, mb);
    		pst.setString(5, hrf);
    		pst.setString(6, name);
    		
    		int i=pst.executeUpdate();
    		if(i>0)
    		{
    			
    			 response.sendRedirect("property-grid.jsp?msg=done");
    			//request.getRequestDispatcher("/property-grid.jsp").forward(request, response);
    		}
    		
    }
    catch(Exception e)
    {
    	System.out.println(e);
    }
    %>
</body>
</html>