<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
 <meta charset="UTF-8">
 
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
body{

	background-image: url("18.jpg");
	background-position: center;
		background-size: cover;
		font-family: sans-serif;
		margin-top: 40px;
		background-attachment: fixed;
}
* {
  box-sizing: border-box;
}

#myInput {
  background-image: url('/css/searchicon.png');
  background-position: 10px 10px;
  background-repeat: no-repeat;
  max-width:1600px;
  min-width:900px;
  font-size: 20px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}

#myTable {

  border-collapse: collapse;
  max-width:1600px;
  min-width:900px;
  border: 1px solid #ddd;
  font-size: 18px;
}

#myTable th, #myTable td {
  text-align: left;
  padding: 12px;
}

#myTable tr {
  border-bottom: 1px solid #ddd;
  background: rgba(255,255,255,0.8);
 
}

#myTable tr.header, #myTable tr:hover {
  background-color: #f1f1f1;
}

</style>
</head>
<body>

<br><br>
<center>
	<h2 style = "color:black;">Customer Details</h2>

	
	<input type="text" id="myInput" style = "background: rgba(255,255,255,0.8); color: #000" onkeyup="filterTable()" placeholder="Search for name or MobileNo.." title="Type in a name">
</center>

<table id="myTable" align = "center">
  <tr style="bgcolor:red;font-weight:bold">
<td>Name</td>
<td>email</td>
<td colspan="2">Actions</td>
	
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
	String sql ="select * from xyz";
	ResultSet rs = st.executeQuery(sql);
	while(rs.next()){
%>
<tr>

<td><%=rs.getString("name") %></td>
<td><%=rs.getString("email") %></td>




<td><a href="NewFile_del.jsp?email=<%=rs.getString("email") %>"><i class="fa fa-trash">Disable</i></a>
	</td>
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
//function myFunction() {
//  var input, filter, table, tr, td, i, txtValue;
 // input = document.getElementById("myInput");
 // filter = input.value.toUpperCase();
 // table = document.getElementById("myTable");
 // tr = table.getElementsByTagName("tr");
  //for (i = 0; i < tr.length; i++)// {
    //td = tr[i].getElementsByTagName("td")[3];
   // if (td) {
     // txtValue = td.textContent || td.innerText;
      //if (txtValue.toUpperCase().indexOf(filter) > -1) {
       // tr[i].style.display = "";
     // } else {
     //   tr[i].style.display = "none";
     // }
    //}       
 // }
//}

function filterTable(event) {
    var filter = event.target.value.toUpperCase();
    var rows = document.querySelector("#myTable tbody").rows;
    
    for (var i = 0; i < rows.length; i++) {
        var firstCol = rows[i].cells[1].textContent.toUpperCase();
        var secondCol = rows[i].cells[3].textContent.toUpperCase();
        if (firstCol.indexOf(filter) > -1 || secondCol.indexOf(filter) > -1) {
            rows[i].style.display = "";
        } else {
            rows[i].style.display = "none";
        }      
    }
}

document.querySelector('#myInput').addEventListener('keyup', filterTable, false);

</script>



</body>
</html>