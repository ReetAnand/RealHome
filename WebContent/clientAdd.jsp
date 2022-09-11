<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact-Owner</title>
<!-- Favicons -->
<link href="img/download-favicon.png" rel="icon">

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">

<!-- Bootstrap CSS File -->
<link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Libraries CSS Files -->
<link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="lib/animate/animate.min.css" rel="stylesheet">
<link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
<link href="lib/owlcarousel/owl.carousel.min.css" rel="stylesheet">

<!-- Main Stylesheet File -->
<link href="css/style.css" rel="stylesheet">

</head>

<body >
<%  if(session.getAttribute("email") ==  null)
{
	request.getRequestDispatcher("/demo.jsp").forward(request, response);
} %>


<!-- ======= Header/Navbar ======= -->
  <nav class="navbar navbar-default navbar-trans navbar-expand-lg fixed-top">
    <div class="container">
      <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarDefault" aria-controls="navbarDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span></span>
        <span></span>
        <span></span>
      </button>
      <a class="navbar-brand text-brand" href="home-main.jsp">Real<span class="color-b">Home</span></a>

      <div class="navbar-collapse collapse justify-content-center" id="navbarDefault">
        <ul class="navbar-nav">

          <li class="nav-item">
            <a class="nav-link " href="home-main.jsp">Home</a>
          </li>

          <li class="nav-item">
            <a class="nav-link " href="about.jsp">About</a>
          </li>

          <li class="nav-item">
            <a class="nav-link active" href="property-grid.jsp">Property</a>
          </li>

          

           <li class="nav-item">
            <a class="nav-link " href="blog-grid.jsp">Blog</a>
          </li>
          <li class="nav-item">
            <a class="nav-link " href="contact.jsp">Contact</a>
          </li>

          <li class="nav-item">
            <a class="nav-link " href="logout.jsp">LogOut</a>
          </li>
        </ul>
      </div>

     

    </div>
  </nav><!-- End Header/Navbar -->
  
  <main id="main">
   <!-- ======= Intro Single ======= -->
    <section class="intro-single">
      <div class="container">
        <div class="row">
          <div class="col-md-12 col-lg-8">
            <div class="title-single-box">
<%@page import="java.sql.*"%>
<%
	String email=session.getAttribute("email").toString();
				String id=request.getParameter("ref_no");
       		 
				
      		  try{
      			    Class.forName("com.mysql.jdbc.Driver");
      			    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/reg","root","root");
      			    Statement st=con.createStatement();
      				String sql ="select * from property where ref_no="+id;
      				ResultSet rs = st.executeQuery(sql);
            		  
            				
					
					
					while(rs.next()){
				
				
				%>
            <div class="container details" >
        <h2 class="head">Address</h2>
        <form action="clienrAddr1jsp.jsp" method="post">
        <div class="form-group"> 
         <label for="formGroupExampleInput">House Ref no</label> 
        <input class="form-control" type="text" name="ref" value="<%=rs.getString("ref_no") %>" readonly>
       </div>
       <div class="form-group"> 
         <label for="formGroupExampleInput">House Name</label> 
        <input class="form-control" type="text" name="nm" value="<%=rs.getString("name") %>" readonly>
       </div>
        <div class="form-group"> 
         <label for="formGroupExampleInput">First Name*</label> 
        <input class="form-control" type="text" placeholder="First Name" name="fstnm" required pattern=[A-Za-z].{1,} title="Write a name">
       </div>
       <div class="form-group"> 
         <label for="formGroupExampleInput">Last Name*</label> 
        <input class="form-control" type="text" placeholder="Last Name" name="lstnm" required pattern=[A-Za-z].{1,} title="Write a name">
       </div>
        <div class="form-group"> 
         <label for="formGroupExampleInput">Mobile No*</label> 
        <input class="form-control" type="number" placeholder="Mobile No" name="mob" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(10, this.maxLength);" maxlength="10" maxlength="10" required pattern="\S+.*"/>
                                               
       </div>
        <div class="form-group"> 
         <label for="formGroupExampleInput">email*</label> 
        <input class="form-control" type="text" placeholder="email" name="email" required pattern="^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$">
       </div>
       
       
       <br>
          <input type="submit" value="Confirm" style="position: absolute;left:50%;transform: translate(-50%,0);">  
     
        </form>
    </div>
    
    </div></div></div></div></section></main>
            
           
			<%
				}
				}
				catch(Exception e)
				{
					System.out.println(e);
				}
			%>		
 
</body>
</html>