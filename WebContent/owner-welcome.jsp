<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Owner-Welcome</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  
  <!-- Vendor CSS Files -->
  <link href="vendor-p/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="vendor-p/icofont/icofont.min.css" rel="stylesheet">
  <link href="vendor-p/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="vendor-p/animate.css/animate.min.css" rel="stylesheet">
  <link href="vendor-p/owl.carousel/owl.carousel.min.css" rel="stylesheet">
  <link href="vendor-p/venobox/venobox.css" rel="stylesheet">
  <link href="vendor-p/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="css-p/style.css" rel="stylesheet">

 
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
    <link href="style.css" rel="stylesheet">
    <!-- Template Main CSS File -->
  <link href="css-w/style.css" rel="stylesheet">
</head>

<body>
<%  if(session.getAttribute("email") ==  null)
{
	request.getRequestDispatcher("owner-log-in.jsp").forward(request, response);
} %>
  <!-- ======= Top Bar ======= -->
  <div id="topbar" class="d-none d-lg-flex align-items-center fixed-top">
    <div class="container d-flex align-items-center justify-content-between">
      <div class="d-flex align-items-center">
         Get the information on your phone
      </div>
     
    </div>
  </div>

  <!--/ Nav Star /-->
    <nav class="navbar navbar-default navbar-trans navbar-expand-lg fixed-top">
      <div class="container">
        
        <a class="navbar-brand text-brand" >Real<span class="color-b">Home</span></a>
       
        <div class="navbar-collapse collapse justify-content-center" id="navbarDefault">
          <ul class="navbar-nav">
          <%   String email=session.getAttribute("email").toString();  %>
         <li class="nav-item">
              <a class="nav-link " href="#"><% out.println(email); %></a>
            </li> 
             <li class="nav-item">
            <a class="nav-link " href=" post-prop.jsp">Post-property</a>
          </li>
            
            <li class="nav-item">
            <a class="nav-link " href=" old-prop.jsp">View Responses</a>
          </li>
           
            <li class="nav-item">
                <a class="nav-link" href="owner_logout.jsp">logout</a>
              </li>
               
           
         
          </ul>
        </div>
        
      </div>
    </nav>
    <!--/ Nav End /-->

  <!-- ======= Hero Section ======= -->
  <section id="hero">
    <div id="heroCarousel" class="carousel slide carousel-fade" data-ride="carousel">

      <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

      <div class="carousel-inner" role="listbox">

        <!-- Slide 1 -->
        <div class="carousel-item active" style="background-image: url(img/house.jpg)">
          <div class="container">
            <h2>Welcome to <span>Real-Home</span></h2>
            <p> Find it difficult to get your property rented or want it to be sold???<br>
            <a href="post-prop.jsp" class="btn-get-started scrollto">Post</a>
          </div>
        </div>

        <!-- Slide 2 -->
        <div class="carousel-item" style="background-image: url(img/ho.jpg)">
          <div class="container">
            <h2>Here's a SOLUTION!!!!</h2>
            <p> Post your property on our site to get your best match clients. Most trustworthy ones, without even meeting them. Direct contact is there, and we list out all of them who visit to see you virtually.
            <br><a href="post-prop.jsp" class="btn-get-started scrollto">Post</a>
          </div>
        </div>

        <!-- Slide 3 -->
        <div class="carousel-item" style="background-image: url(img/slide-2.jpg)">
          <div class="container">
            <h2>Set your own Budget..</h2>
            <p>Get the clients, and bargain as per you and they wants. Easiest way to handle budget among you. <br>
             <a href="post-prop.jsp" class="btn-get-started scrollto">Post</a>
          </div>
        </div>

      </div>

      <a class="carousel-control-prev" href="#heroCarousel" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon icofont-simple-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>

      <a class="carousel-control-next" href="#heroCarousel" role="button" data-slide="next">
        <span class="carousel-control-next-icon icofont-simple-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>

    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= Featured Services Section ======= -->
    <section id="featured-services" class="featured-services">
      <div class="container" data-aos="fade-up">

        <div class="row">
          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="100">
              <div class="icon"><i class="bx bx-user"></i></div>
              <h4 class="title"><a href="">User interaction</a></h4>
              <p class="description">Good user interface, helps to connect easily, and more realiably.</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="200">
              <div class="icon"><i class="bx bx-home"></i></div>
              <h4 class="title"><a href="">Home sweet Home</a></h4>
              <p class="description">Love the way of living, blessed to have your dream house.</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="300">
              <div class="icon"><i class="bx bx-server"></i></div>
              <h4 class="title"><a href="">Opportunities</a></h4>
              <p class="description">Tons of options available there, Have a good look out.</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
            <div class="icon-box" data-aos="fade-up" data-aos-delay="400">
              <div class="icon"><i class="icofont-dna-alt-1"></i></div>
              <h4 class="title"><a href="">Growing Fast</a></h4>
              <p class="description">Rent, Sale, Buy, Admire.</p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Featured Services Section -->

    <!-- ======= Cta Section ======= -->
    <section id="cta" class="cta">
      <div class="container" data-aos="zoom-in">

        <div class="text-center">
          <h3>Having Doubts ?</h3>
          <p> Being in doubt isn't good. Contact to out Admin directly. Get the updates, and have a satisfied reply.
          <p> Contact from below: <br>
           <a class="cta-btn scrollto" href="contact.jsp">Contact-Admin</a>
        </div>

      </div>
    </section><!-- End Cta Section -->

    

    
    

    
    
    <!-- ======= Pricing Section ======= -->
    <section id="pricing" class="pricing">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Pricing</h2>
          <p> Up-grade your subscription, and get have more opportunities. Unlock them with the great deals.
          </div>

        <div class="row">

          <div class="col-lg-3 col-md-6">
            <div class="box" data-aos="fade-up" data-aos-delay="100">
              <h3>Free</h3>
              <h4><sup>Rs.</sup>0<span> / month</span></h4>
              <ul>
                <li>Post-property</li>
                <li>Have email-id of clients</li>
                <li>Have mobile number of clients</li>
                <li class="na">See Clients who visited</li>
                <li class="na">Get mail from them.</li>
              </ul>
              <div class="btn-wrap">
                <a href="#" class="btn-buy">Buy Now</a>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 mt-4 mt-md-0">
            <div class="box" data-aos="fade-up" data-aos-delay="200">
              <h3>Business</h3>
              <h4><sup>Rs.</sup>200<span> / month</span></h4>
              <ul>
                <li>Post-property</li>
                <li>Have email-id of clients</li>
                <li>Have mobile number of clients</li>
                <li>See Clients who visited</li>
                <li class="na">Get mail from them.</li>
              </ul>
              <div class="btn-wrap">
                <a href="#" class="btn-buy">Buy Now</a>
              </div>
            </div>
          </div>

          
          <div class="col-lg-3 col-md-6 mt-4 mt-lg-0">
            <div class="box" data-aos="fade-up" data-aos-delay="400">
              <span class="advanced">Advanced</span>
              <h3>Ultimate</h3>
              <h4><sup>Rs.</sup>500<span> / month</span></h4>
              <ul>
                <li>Post-property</li>
                <li>Have email-id of clients</li>
                <li>Have mobile number of clients</li>
                <li >See Clients who visited</li>
                <li>Get mail from them.</li>
              </ul>
              <div class="btn-wrap">
                <a href="#" class="btn-buy">Buy Now</a>
              </div>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Pricing Section -->

   
   

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


  <div id="preloader"></div>
  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

  <!-- Vendor JS Files -->
  <script src="vendor-p/jquery/jquery.min.js"></script>
  <script src="vendor-p/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="vendor-p/jquery.easing/jquery.easing.min.js"></script>
  <script src="vendor-p/php-email-form/validate.js"></script>
  <script src="vendor-p/waypoints/jquery.waypoints.min.js"></script>
  <script src="vendor-p/counterup/counterup.min.js"></script>
  <script src="vendor-p/owl.carousel/owl.carousel.min.js"></script>
  <script src="vendor-p/venobox/venobox.min.js"></script>
  <script src="vendor-p/aos/aos.js"></script>

  <!-- Template Main JS File -->
  <script src="js-p/main.js"></script>

</body>

</html>