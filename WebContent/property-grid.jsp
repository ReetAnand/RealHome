<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RealHome- property-grid</title>
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

<style>


#myInput {
  background-image: url('/css/searchicon.png');

  background-repeat: no-repeat;
 width: 1100px;
padding-left: 0px;
  font-size: 20px;
	padding: 12px;
  border: 2px solid black;
  margin-bottom: 12px;
}

#myTable {

  
  max-width:1600px;
  min-width:900px;
  border: 1px solid #ddd;
  font-size: 18px;
}

#myTable th, #myTable td {
  text-align: left;
  padding: 12px;
}



#myTable tr.header, #myTable tr:hover {
  background-color: #f1f1f1;
}

</style>
</head>
<body>
<%  if(session.getAttribute("email") ==  null)
{
	request.getRequestDispatcher("/demo.jsp").forward(request, response);
} %>

<% String msg=request.getParameter("msg"); %>

 <% if("done".equals(msg)){%>
            <!--   <h3>Last message has been sent !</h3> -->
            <script>
            alert("Data sent successfully !");
            </script>
            
              <%}%>
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
<%   String email=session.getAttribute("email").toString();  %>
         <li class="nav-item">
              <a class="nav-link " href="#"><% out.println(email); %></a>
            </li> 
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
              <h1 class="title-single">Our Amazing Properties</h1>
              <span class="color-text-a">Grid Properties</span>
            </div>
          </div>
          <div class="col-md-12 col-lg-4">
            <nav aria-label="breadcrumb" class="breadcrumb-box d-flex justify-content-lg-end">
              <ol class="breadcrumb">
                <li class="breadcrumb-item">
                  <a href="home-main.jsp">Home</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">
                  Properties Grid
                </li>
              </ol>
            </nav>
          </div>
        </div>
      </div>
    </section><!-- End Intro Single-->

 <!-- ======= Property Grid ======= -->
 

 
    <section class="property-grid grid">
    
      <div class="container">
        <div class="row">
          <div class="col-sm-12">
            <div class="grid-option">
             <!--  <form>
                <select class="custom-select">
                  <option selected>All</option>
                  <option value="1">New to Old</option>
                  <option value="2">For Rent</option>
                  <option value="3">For Sale</option>
                </select>
              </form> -->
              <br><br>
               <div>
          <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for anything...">
          </div>
            </div>
          </div>
          
        
   <table id="myTable">


<%@page import="java.sql.*" %>
<%
    
	
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/reg","root","root");
    Statement st=con.createStatement();
	String sql ="select * from property";
	ResultSet rs = st.executeQuery(sql);
	
	
	while(rs.next()){
		%>
			<tr>
		   <td>        
		   
		  <div class=row>
		  
		   
		    <div class="col-md-4"> 
            <div class="card-box-a card-shadow">
              <div class="img-box-a">
		                 <img alt="" src="<%=rs.getString("image") %>" width="100%" height="250px" >
		               
		                </div>
              <div class="card-overlay">
                <div class="card-overlay-a-content">
                  <div class="card-header-a">
                    <h2 class="card-title-a">
                      <a href="#">  <%out.print(rs.getString("ref_no")); %> 
		          <%out.print(rs.getString("name")); %>
		          <br> <%out.print(rs.getString("city")); %>
		          
		          </h2>
                  </div>
                  <div class="card-body-a">
                    <div class="price-box d-flex">
                      <span class="price-a">
                       <% out.print(rs.getString("category")); %> | 
		          <% out.print(rs.getString("price")); %>
		          </span>
		          
</div>
                   
                    
		           
                    
                  </div>
                  <div class="card-footer-a">
                    <ul class="card-info d-flex justify-content-around">
                      <li>
                        <h4 class="card-info-title">BHK
                        
                        </h4>
                        <span>
                          <sup><% out.print(rs.getString("bhk")); %></sup>
                        </span>
                      </li>
                      
                       <li>
                        <h4 class="card-info-title">Area
                        
                        </h4>
                        <span>
                          <sup><% out.print(rs.getString("area")); %></sup>
                        </span>
                      </li>
                     
                    </ul>
                  </div>
                </div>
              </div>
            </div></div>
            
             <div class="col-md-8" style="padding-left: 10px;">
		 <label style="font-size: 30px;">  Description: </label>
		   <br>
		   <% out.print(rs.getString("description")); %>
		   <br>
		   <br>
		    <a href="property-single.jsp?ref_no=<%=rs.getString("ref_no") %>"  style=" text-decoration: none; color: white; font-size:15px; border:2px solid black; padding: 2px; padding-left: 5px;" class="btn btn-a class="link-a" >Explore>
                      <span class="bi bi-chevron-right"></span>
                    </a>
		   </div>
            
            </div> </td>
          </div>
		  </tr>         
		  <%--  <tr>
			<td><%=rs.getString("category") %></td>
			<td><%=rs.getString("name") %></td>
			<td><%=rs.getString("ref_no") %></td>
			<td><%=rs.getString("bhk") %></td>
	


			</tr>     --%>
		         
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
		 </div>
        <div class="row">
          <div class="col-sm-12">
            <nav class="pagination-a">
              <ul class="pagination justify-content-end">
                <li class="page-item disabled">
                  <a class="page-link" href="#" tabindex="-1">
                    <span class="bi bi-chevron-left"></span>
                  </a>
                </li>
                <li class="page-item active">
                  <a class="page-link" href="#">1</a>
                </li>
                <li class="page-item ">
                  <a class="page-link" href="#">2</a>
                </li>
                <li class="page-item">
                  <a class="page-link" href="#">3</a>
                </li>
                <li class="page-item next">
                  <a class="page-link" href="#">
                    <span class="bi bi-chevron-right"></span>
                  </a>
                </li>
              </ul>
            </nav>
          </div>
        </div>
      </div>
    </section><!-- End Property Grid Single-->

  </main><!-- End #main -->

  <!--/ footer Star /-->
  <section class="section-footer">
    <div class="container">
      <div class="row">
        <div class="col-sm-12 col-md-4">
          <div class="widget-a">
            <div class="w-header-a">
              <h3 class="w-title-a text-brand">RealHome</h3>
            </div>
            <div class="w-body-a">
              <p class="w-text-a color-text-a">
                Best of all to get the best of you want. Visit to the site and experience the new way of buying, selling and renting your properties.
                <br><br> 
                To contact us:
              </p>
            </div>
            <div class="w-footer-a">
              <ul class="list-unstyled">
                <li class="color-a">
                  <span class="color-text-a">Email .</span> contact@example.com</li>
                <li class="color-a">
                  <span class="color-text-a">Phone .</span> +12 345 67890</li>
              </ul>
            </div>
          </div>
        </div>
        <div class="col-sm-12 col-md-4 section-md-t3">
          <div class="widget-a">
            <div class="w-header-a">
              <h3 class="w-title-a text-brand">The Company</h3>
            </div>
            <div class="w-body-a">
              <div class="w-body-a">
                <ul class="list-unstyled">
                  <li class="item-list-a">
                    <i class="fa fa-angle-right"></i> <a href="#">Site Map</a>
                  </li>
                  <li class="item-list-a">
                    <i class="fa fa-angle-right"></i> <a href="#">Legal</a>
                  </li>
                  <li class="item-list-a">
                    <i class="fa fa-angle-right"></i> <a href="#">Careers</a>
                  </li>
                  <li class="item-list-a">
                    <i class="fa fa-angle-right"></i> <a href="#">Privacy Policy</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-12 col-md-4 section-md-t3">
          <div class="widget-a">
            <div class="w-header-a">
              <h3 class="w-title-a text-brand">Types</h3>
            </div>
            <div class="w-body-a">
              <ul class="list-unstyled">
                <li class="item-list-a">
                  <i class="fa fa-angle-right"></i> <a href="#">Residential real estate</a>
                </li>
                <li class="item-list-a">
                  <i class="fa fa-angle-right"></i> <a href="#">Commercial real estate</a>
                </li>
                <li class="item-list-a">
                  <i class="fa fa-angle-right"></i> <a href="#">Industrial real estate</a>
                </li>
                <li class="item-list-a">
                  <i class="fa fa-angle-right"></i> <a href="#">Land</a>
                </li>
                
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <footer>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <nav class="nav-footer">
            <ul class="list-inline">
              <li class="list-inline-item">
                <a href="#">Home</a>
              </li>
              <li class="list-inline-item">
                <a href="#">About</a>
              </li>
              <li class="list-inline-item">
                <a href="#">Property</a>
              </li>
              <li class="list-inline-item">
                <a href="#">Blog</a>
              </li>
              <li class="list-inline-item">
                <a href="#">Contact</a>
              </li>
            </ul>
          </nav>
          <div class="socials-a">
            <ul class="list-inline">
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-facebook" aria-hidden="true"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-twitter" aria-hidden="true"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-instagram" aria-hidden="true"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-pinterest-p" aria-hidden="true"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-dribbble" aria-hidden="true"></i>
                </a>
              </li>
            </ul>
          </div>
          <div class="copyright-footer">
            <p class="copyright color-text-a">
              &copy; Copyright
              <span class="color-a">RealHome</span> All Rights Reserved.
            </p>
          </div>
          
        </div>
      </div>
    </div>
  </footer>
  <!--/ Footer End /-->  

 <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
    
  
    <!-- JavaScript Libraries -->
    <script src="lib/jquery/jquery.min.js"></script>
    <script src="lib/jquery/jquery-migrate.min.js"></script>
    <script src="lib/popper/popper.min.js"></script>
    <script src="lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/scrollreveal/scrollreveal.min.js"></script>
    <!-- Contact Form JavaScript File -->
    <script src="contactform/contactform.js"></script>
  
    <!-- Template Main Javascript File -->
    <script src="js/main.js"></script>
		
		
</body>
</html>