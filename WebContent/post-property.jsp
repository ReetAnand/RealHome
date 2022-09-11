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
	request.getRequestDispatcher("owner-log-in.jsp").forward(request, response);
} %>
<%@page import="java.sql.*" %>
<%     
	int ref=Integer.parseInt(request.getParameter("ref_no"));
	String name=request.getParameter("name");
	String category=request.getParameter("category");
	String city=request.getParameter("city");
	String state=request.getParameter("state");
	int price= Integer.parseInt(request.getParameter("price"));
	int bhk=Integer.parseInt(request.getParameter("bhk"));
	int area=Integer.parseInt(request.getParameter("area"));
	String description=request.getParameter("description");
	String am[]=request.getParameterValues("amenities");
	String amenities=" ";
	String image=request.getParameter("image");
	
	for(int i=0; i<am.length; i++ )
	{
		amenities+=am[i]+" ";
	}
	
    try{
    	
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/reg","root","root");
	PreparedStatement pst=con.prepareStatement("insert into property values(?,?,?,?,?,?,?,?,?,?,?)");
	/* Statement st=con.createStatement();
	int i=st.executeUpdate(insert into pro) */
	
	pst.setInt(1,ref);
	pst.setString(2, name);
	pst.setString(3, category);
	pst.setString(4, city);
	pst.setString(5, state);
	pst.setInt(6, price);
	pst.setInt(7,bhk);
	pst.setString(8,amenities);
	pst.setString(9,image);
	pst.setInt(10, area);
	pst.setString(11,description);
	
	int i=pst.executeUpdate();
	if(i>0)
	{
		 response.sendRedirect("post-prop.jsp?msg=done");
		out.print("You are Successfully registered...");
		//request.getRequestDispatcher("/post-prop.jsp").forward(request, response);
		
	}
	else
	{
		out.print("Not Done");
		RequestDispatcher rd=request.getRequestDispatcher("post-prop.jsp");
		
	}
   }
    
    catch(Exception e)
    {
    	System.out.print(e);
    	
	
    }
    %>
</body>
</html>