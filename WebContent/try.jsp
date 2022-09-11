<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <meta name="description" content="">
       
    <title>Admin-welcome</title>
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
    <link href="style.css" rel="stylesheet">
    
    
       
        <!-- CSS -->

      
        <link rel="stylesheet" href="css-wlcm/main.css">
       


</head>


<body>
<%  if(session.getAttribute("email") ==  null)
{
	request.getRequestDispatcher("Admin-login.jsp").forward(request, response);
} %>
 <form action="post-blog2.jsp" method="post">

   
    <!--/ Nav Star /-->
    <nav class="navbar navbar-default navbar-trans navbar-expand-lg fixed-top">
      <div class="container">
        
        <a class="navbar-brand text-brand" href="try.jsp">Real<span class="color-b">Home</span></a>
       
        <div class="navbar-collapse collapse justify-content-center" id="navbarDefault">
          <ul class="navbar-nav">
            
           
            
               <li class="nav-item">
            <a class="nav-link " href=" post-blog.jsp">Post-blog</a>
          </li>
          <li class="nav-item">
            <a class="nav-link " href=" messages.jsp">Messages</a>
          </li>
           
           <li class="nav-item">
                <a class="nav-link" href="admin_logout.jsp">logout</a>
              </li>
         
          </ul>
        </div>
        
      </div>
    </nav>
    <!--/ Nav End /-->
  
  
  
  
  
  
    <!--/ Carousel Star /-->
    <div class="intro intro-carousel" style="height: 1400px">
         
            <main id="main">
   <!-- ======= Intro Single ======= -->
    <section class="intro-single">
    
    
     <section id="hero-area">
	        <div class="container">
	            <div class="row">
	                <div class="col-md-6">
	                    <div class="block">
	                        <h1 class="wow fadeInDown">A passionate housing company</h1>
	                        <p class="wow fadeInDown" data-wow-delay="0.3s">Update Our Clients with new Stories and blogs.</p> <p> Click on the button to post more!!!</p>
	                        <div class="wow fadeInDown" data-wow-delay="0.3s">
	                        	<a class="btn btn-default btn-home" href="post-blog.jsp" role="button">Get Started</a>
	                        </div>
	                    </div>
	                </div>
	                <div class="col-md-6 wow zoomIn">
	                    <div class="block">
	                        <div class="counter text-center">
	                            <ul id="countdown_dashboard">
	                                <li>
	                                    <div class="dash days_dash">
	                                        <div >
	                                        <label style= font-size:50px>100</label>
	                                        </div>
	                                        
	                                        <span class="dash_title">Stories</span>
	                                    </div>
	                                </li>
	                                <li>
	                                    <div class="dash hours_dash">
	                                        <div >
	                                        <label style= font-size:50px>1000+</label>
	                                        </div>
	                                        <span class="dash_title">Properties</span>
	                                    </div>
	                                </li>
	                                <li>
	                                    <div class="dash minutes_dash">
	                                         <div >
	                                        <label style= font-size:50px>1000+</label>
	                                        </div>
	                                        <span class="dash_title">Clients</span>
	                                    </div>
	                                </li>
	                                <li>
	                                    <div class="dash seconds_dash">
	                                         <div >
	                                        <label style= font-size:50px>1000</label>
	                                        </div>
	                                        <span class="dash_title">Responses</span>
	                                    </div>
	                                </li>
	                            </ul>
	                        </div>
	                    </div>
	                </div>
	            </div><!-- .row close -->
	        </div><!-- .container close -->
	    </section><!-- header close -->
    
    <!-- 
        About start
        ==================== -->
        <section id="about" class="section">
            <div class="container">
                <div class="row">
                    <div class="col-md-7 col-sm-12 wow fadeInLeft">
                    	<div class="sub-heading">
                    		<h3>Updating Our Clients, And intracting with owners, is what make connections and problems easy. Helping them via you is a kind nature of yours.</h3>
                    	</div>
                       
                    </div>
                    <div class="col-md-5 col-sm-12 wow fadeInLeft" data-wow-delay="0.3s" style="height:10px; width:10px">
                        <div class="about-slider">
                        	
                        		<div class="about-item" >
                        		<div style="height:10px; width:10px">
                        			<img src="images/call-to-action.jpg" alt="" class="img-responsive">
                        		</div>
                        		</div>
                        	</div>
                        </div>
                    </div>
                </div>
            </div></div>
        </section><!-- #about close -->
     
            
           
        
      <!--/ Carousel end /-->
  
    
    
   
  
   
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
    
     <!-- Js -->
        <script src="js-wlcm/vendor/modernizr-2.6.2.min.js"></script>
        <script src="js-wlcm/vendor/jquery-1.10.2.min.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
        <script src="js-wlcm/jquery.lwtCountdown-1.0.js"></script>
        <script src="js-wlcm/bootstrap.min.js"></script>
        <script src="js-wlcm/owl.carousel.min.js"></script>
        <script src="js-wlcm/jquery.validate.min.js"></script>
        <script src="js-wlcm/jquery.form.js"></script>
        <script src="js-wlcm/jquery.nav.js"></script>
        <script src="js-wlcm/jquery.sticky.js"></script>
        <script src="js-wlcm/plugins.js"></script>
        <script src="js-wlcm/wow.min.js"></script>
        <script src="js-wlcm/main.js"></script>