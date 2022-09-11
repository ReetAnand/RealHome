<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String email = request.getParameter("email");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "reg";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from owner_info where email="+email;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<body>
<h1>Update data from database in jsp</h1>
<form method="post" action="NewFile_back.jsp">
<input type="hidden" name="email" value="<%=resultSet.getString("email") %>">
<input type="text" name="email" value="<%=resultSet.getString("email") %>">
<br>
First name:<br>
<input type="text" name="first_name" value="<%=resultSet.getString("first_name") %>">
<br>
Last name:<br>
<input type="text" name="last_name" value="<%=resultSet.getString("last_name") %>">
<br>
City name:<br>
<input type="text" name="mobile" value="<%=resultSet.getString("mobile") %>">
<br>
<br>
<input type="submit" value="submit">
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>