<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Property- RealHome</title>
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
.box
{
height: 100px;
width: 100px;
}

</style>

</head>
<body>
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
            
<%@page import="java.sql.*"%>
				<% 
				
				String id=request.getParameter("ref_no");
            		 
				
            		  try{
            			    Class.forName("com.mysql.jdbc.Driver");
            			    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/reg","root","root");
            			    Statement st=con.createStatement();
            				String sql ="select * from property where ref_no="+id;
            				ResultSet rs = st.executeQuery(sql);
            		  
				
					
					
					while(rs.next()){
				
				
				%>
            
              <h1 class="title-single"><%=rs.getString("ref_no") %></h1>
              <span class="color-text-a"><%=rs.getString("name") %></span>
            </div>
          </div>
          <div class="col-md-12 col-lg-4">
            <nav aria-label="breadcrumb" class="breadcrumb-box d-flex justify-content-lg-end">
              <ol class="breadcrumb">
                <li class="breadcrumb-item">
                  <a href="home-main.jsp">Home</a>
                </li>
                <li class="breadcrumb-item">
                  <a href="property-grid.jsp">Properties</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">
                  <%=rs.getString("name") %>
                </li>
              </ol>
            </nav>
          </div>
        </div>
      </div>
    </section><!-- End Intro Single-->
    
     <!-- ======= Property Single ======= -->
    <section class="property-single nav-arrow-b">
      <div class="container">
         <div class="row justify-content-center">
          <div class="col-lg-8">
            <div id="property-single-carousel" >
              <div class="swiper-wrapper">



						<div >
						   <div class="tab-pane active" id="pic-1"><img src="<%=rs.getString("image") %>"  style= "height:1000px; width: 1000px" /></div>
						   </div>
 						  
 <br><br>
						</div>
						 </div>
            </div>
            <div class="property-single-carousel-pagination carousel-pagination"></div>
          </div>
        </div>
						
					<div class="row">
          <div class="col-sm-12">

            <div class="row justify-content-between">
              <div class="col-md-5 col-lg-4">
                <div class="property-price d-flex justify-content-center foo">
                  <div class="card-header-c d-flex">
                    <div class="card-box-ico">
                      <span class="bi bi-cash">Rs.</span>
                    </div>
                    <div class="card-title-c align-self-center">
                      <h5 class="title-c"><%out.print(rs.getString("price")); %></h5>
                    </div>
                  </div>
                </div>	
                 <div class="property-summary" style="margin-left: 100px">
                  <div class="row">
                    <div class="col-sm-12">
                      <div class="title-box-d section-t4">
                        <h3 class="title-d">Quick Summary</h3>
                      </div>
                    </div>
                  </div>
                  <div class="summary-list">
                    <ul class="list">
                      <li class="d-flex justify-content-between">
                        <strong>Property ID:</strong>
                        <span><%out.print(rs.getString("ref_no")); %></span>
                      </li>
                      <li class="d-flex justify-content-between">
                        <strong>Location:</strong>
                        <span><%out.print(rs.getString("city")); %> <%out.print(rs.getString("state")); %></span>
                      </li>
                      <li class="d-flex justify-content-between">
                        <strong>Property Type:</strong>
                        <span><%out.print(rs.getString("category")); %></span>
                      </li>
                      <li class="d-flex justify-content-between">
                        <strong>Area:</strong>
                        <span><%out.print(rs.getString("area")); %>
                          
                        </span>
                      </li>
                      <li class="d-flex justify-content-between">
                        <strong>BHK</strong>
                        <span><%out.print(rs.getString("bhk")); %></span>
                      </li>
                     
                    </ul>
                  </div>
                </div>
              </div>
              
              <div class="col-md-7 col-lg-7 section-md-t3">
                <div class="row">
                  <div class="col-sm-12">
                    <div class="title-box-d">
                      <h3 class="title-d">Property Description</h3>
                    </div>
                  </div>
                </div>
                <div class="property-description">
                  <p class="description color-text-a">
                  <br>
                  <%out.print(rs.getString("description")); %>
					 </p>
                  
                </div>
                <div class="row section-t3">
                  <div class="col-sm-12">
                    <div class="title-box-d">
                      <h3 class="title-d">Amenities</h3>
                    </div>
                  </div>
                </div>
                <div class="amenities-list color-text-a">
                  <ul class="list-a no-margin">
					<li><%out.print(rs.getString("amenities")); %></li>
					 </ul>
                </div>
                
                
                <div class="row section-t3">
                <div>
                                              
                                          </div>
                                          <a href="clientAdd.jsp?ref_no=<%=rs.getString("ref_no") %>" style=" text-decoration: none" class="link-a" >
                                          <button style= "background-color:black; color:white; width:150px; height:70px">I am interested</button>
                      <span class="bi bi-chevron-right"></span>
                    </a>
                
                </div>
                </form>
                
              </div>
            </div>
          </div>
         
              
					</div>
			<%
				}
				}
				catch(Exception e)
				{
					System.out.println(e);
				}
			%>		
				
				 </section><!-- End Property Single-->	
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