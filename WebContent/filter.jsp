<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.header
{
color:green;
}

.table
{
border: solid 2px;
}
</style>
</head>
<body>

<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names..">

<table id="myTable" align = "center">
  <tr class="header">
    <th>category</th>
    <th>name</th>
    <th>ref_no</th>
    <th>bhk</th>
    
  </tr>
  <%@page import="java.sql.*"%>
	<%
	try{
		String url = "jdbc:mysql://localhost:3306/reg";
		String uname = "root";
		String pass = "root";
	
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, uname, pass);
		Statement st=con.createStatement();
		String sql ="select * from property";
		ResultSet rs = st.executeQuery(sql);
		while(rs.next()){
			%>
			<tr>
			<td><%=rs.getString("name") %></td>
			<td><%=rs.getString("category") %></td>
			<td><%=rs.getString("ref_no") %></td>
			<td><%=rs.getString("bhk") %></td>
	


			</tr>
			<%
			}
			} 
			catch (Exception e) {
			e.printStackTrace();
			}
			%>
	

  
</table>

<script>
function myFunction() {
	  // Declare variables
	  var input, filter, table, tr, td, i, txtValue;
	  input = document.getElementById("myInput");
	  filter = input.value.toUpperCase();
	  table = document.getElementById("myTable");
	  tr = table.getElementsByTagName("tr");

	  // Loop through all table rows, and hide those who don't match the search query
	  for (i = 0; i < tr.length; i++) {
	    td = tr[i].getElementsByTagName("td")[0];

	    if (td) {
	      txtValue = td.textContent || td.innerText;
	      if (txtValue.toUpperCase().indexOf(filter) > -1) {
	        tr[i].style.display = "";
	      } else {
	        tr[i].style.display = "none";
	      }
	    }
	  }
	}
</script>

</body>
</html>