<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RealHome- blog-single</title>
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
<link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

<!-- Main Stylesheet File -->
<link href="css/style.css" rel="stylesheet">

</head>

<body>
<%  if(session.getAttribute("email") ==  null)
{
	request.getRequestDispatcher("demo.jsp").forward(request, response);
} %>
  

   <!-- ======= Header/Navbar ======= -->
  <nav class="navbar navbar-default navbar-trans navbar-expand-lg fixed-top">
    <div class="container">
      
     
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
            <a class="nav-link " href="property-grid.jsp">Property</a>
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
              <h1 class="title-single">Book Cover Deisgn</h1>
              <span class="color-text-a">News Single.</span>
            </div>
          </div>
          <div class="col-md-12 col-lg-4">
            <nav aria-label="breadcrumb" class="breadcrumb-box d-flex justify-content-lg-end">
              <ol class="breadcrumb">
                <li class="breadcrumb-item">
                  <a href="home-main.jsp">Home</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">
                  Book Cover Design
                </li>
              </ol>
            </nav>
          </div>
        </div>
      </div>
    </section><!-- End Intro Single-->

    <!-- ======= Blog Single ======= -->
    <section class="news-single nav-arrow-b">
      <div class="container">
        <div class="row">
        
        <%@page import="java.sql.*"%>
				<% 
				
				String name=request.getParameter("name");
            		 
				
            		  try{
            			    Class.forName("com.mysql.jdbc.Driver");
            			    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/reg","root","root");
            			    Statement st=con.createStatement();
            				String sql ="select * from blog where name='"+name+"' " ;
            				ResultSet rs = st.executeQuery(sql);
            		  
				
					
					
					while(rs.next()){
				
				
				%>
          <div class="col-sm-12">
            <div class="news-img-box">
              <div >
						   <div class="tab-pane active" id="pic-1"><img src="<%=rs.getString("image") %>"  style= "height:1000px; width: 1000px" /></div>
						   </div>
            </div>
          </div>
          <div class="col-md-10 offset-md-1 col-lg-8 offset-lg-2">
            <div class="post-information">
              <ul class="list-inline text-center color-a">
                <li class="list-inline-item mr-2">
                  <strong>Author: </strong>
                  <span class="color-text-a">Admin</span>
                </li>
                <li class="list-inline-item mr-2">
                  <strong>Category: </strong>
                  <span class="color-text-a"><%out.print(rs.getString("category")); %></span>
                </li>
                <li class="list-inline-item">
                  <strong>Date: </strong>
                  <span class="color-text-a"><%out.print(rs.getString("date")); %></span>
                </li>
              </ul>
            </div>
            <div class="post-content color-text-a">
              <p class="post-intro">
                Dream house is something big than imagination.
                <strong>Getting</strong> Your own.
                Here's what is found, explored, and noticed.
              </p>
              <p>
               <%out.print(rs.getString("description")); %>
               </p>
              <blockquote class="blockquote">
                <p class="mb-4">Stay where you loved to.</p>
                <footer class="blockquote-footer">
                  <strong>Admin</strong>
                  <cite title="Source Title">Author</cite>
                </footer>
              </blockquote>
              <p>
                Still noticing other thing, that is picturing is real. Can search for the environment too.
              </p>
            </div>
            
          </div>
          <div class="col-md-10 offset-md-1 col-lg-10 offset-lg-1">
            
            
            
          </div>
       
      <%
				}
				}
				catch(Exception e)
				{
					System.out.println(e);
				}
			%>	
	 </div>
      </div>
    </section><!-- End Blog Single-->

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
    <div id="preloader"></div>
  
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