<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/reg";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String email = request.getParameter("email");
String first_name=request.getParameter("first_name");
String last_name=request.getParameter("last_name");
String city_name=request.getParameter("city_name");
String mobile=request.getParameter("mobile");
if(email != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(email);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update owner_info set first_name=?,last_name=?,email=?,mobile=? where email="+email;
ps = con.prepareStatement(sql);

ps.setString(1, first_name);
ps.setString(2, last_name);
ps.setString(3, email);
ps.setString(4, mobile);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>