<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Welcome</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

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

  
  <!-- Vendor CSS Files -->
  <link href="vendor-w/aos/aos.css" rel="stylesheet">
  <link href="vendor-w/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="vendor-w/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="vendor-w/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="vendor-w/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="vendor-w/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="css-w/style.css" rel="stylesheet">

 
</head>

<body>
<!-- ======= Header/Navbar ======= -->
  <nav class="navbar navbar-default navbar-trans navbar-expand-lg fixed-top">
    <div class="container">
      <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarDefault" aria-controls="navbarDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span></span>
        <span></span>
        <span></span>
      </button>
      <a class="navbar-brand text-brand" >Real<span class="color-b">Home</span></a>

      <div class="navbar-collapse collapse justify-content-center" id="navbarDefault">
        <ul class="navbar-nav">


          <img class="logo-1" src="images/logo.png" >
        
        <a class="navbar-brand" href="Admin-login.jsp">
	                    <img class="logo-2" src="images/logo-admin.jpg" alt="LOGO" style="height: 60px; width: 60px" >Admin
	                    
	                </a>
	                
	                <br>
        
        
       
        <div class="navbar-collapse collapse justify-content-center" id="navbarDefault">
          <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link " href="demo.jsp">Explore-property</a>
          </li>
            <li class="nav-item">
              <a class="nav-link " href="owner-log-in.jsp">Post Property for free</a>
            </li>
        </ul>
      </div>

     

    </div>
  </nav><!-- End Header/Navbar -->
  <!-- ======= Mobile nav toggle button ======= -->
  <!-- <button type="button" class="mobile-nav-toggle d-xl-none"><i class="bi bi-list mobile-nav-toggle"></i></button> -->
  <i class="bi bi-list mobile-nav-toggle d-xl-none"></i>
  <!-- ======= Header ======= -->
  <header id="header" class="d-flex flex-column justify-content-center">

    <nav id="navbar" class="navbar nav-menu">
      <ul>
        <li><a href="#hero" class="nav-link scrollto active"><i class="bx bx-home"></i> <span>Home</span></a></li>
        <li><a href="#about" class="nav-link scrollto"><i class="bx bx-user"></i> <span>About</span></a></li>
        <li><a href="#facts" class="nav-link scrollto"><i class="bx bx-file-blank"></i> <span>Facts</span></a></li>
        <li><a href="#portfolio" class="nav-link scrollto"><i class="bx bx-book-content"></i> <span>Portfolio</span></a></li>
        <li><a href="#services" class="nav-link scrollto"><i class="bx bx-server"></i> <span>Services</span></a></li>
        <li><a href="#testimonials" class="nav-link scrollto"><i class="bx bx-envelope"></i> <span>Testimonials</span></a></li>
      </ul>
    </nav><!-- .nav-menu -->

  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex flex-column justify-content-center" >
    <div class="container" data-aos="zoom-in" data-aos-delay="100" >
      <h1>Real Homes</h1>
      <p>We let's you <span class="typed" data-typed-items="  search-property, post-property, Explore, Easy-handling"></span></p>
      <div class="social-links">
        <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
        <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
        <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
        <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
        <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
      </div>
      <br><br>
      <form action=demo.jsp method=post>
      <div>
      <button type=submit class="btn btn-a" style="border-radius: 12px; width: 250px; height: 60px"> Let's get started </button>
      </div> </form>
    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>About</h2>
          <p>RealHome Exclusive Property</p>
        </div>

        <div class="row">
          <div class="col-lg-4">
            <img src="img/about1.jpg" class="img-fluid" alt="">
          </div>
          <div class="col-lg-8 pt-4 pt-lg-0 content">
            <h3>  Real Estate Site.</h3>
            <p class="fst-italic">
              Visit to our beautiful and easy to get site.
            </p>
            
            <p class="color-text-a">
                  The best real estate websites are polished and human.
                   The agent should be front and center but content should be focussed on helping potential buyers and sellers.
                </p>
                <p class="color-text-a">
                  Buying a home is the biggest investment most people will ever make, but not all real estate agents are equal. 
                  Find out how the experience and training of a REALHOME® can help you get into your dream home.
                </p>
          </div>
        </div>

      </div>
    </section><!-- End About Section -->

    <!-- ======= Facts Section ======= -->
    <section id="facts" class="facts">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Facts</h2>
          <p> Keeping our site up with all your love and support. Increasing these numbers with high ratios is what we see as your responses.
          
          </div>

        <div class="row">

          <div class="col-lg-3 col-md-6">
            <div class="count-box">
              <i class="bi bi-emoji-smile"></i>
              <span data-purecounter-start="0" data-purecounter-end="232" data-purecounter-duration="1" class="purecounter"></span>
              <p>Happy Clients</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 mt-5 mt-md-0">
            <div class="count-box">
              <i class="bi bi-journal-richtext"></i>
              <span data-purecounter-start="0" data-purecounter-end="521" data-purecounter-duration="1" class="purecounter"></span>
              <p>Properties</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 mt-5 mt-lg-0">
            <div class="count-box">
              <i class="bi bi-headset"></i>
              <span data-purecounter-start="0" data-purecounter-end="1463" data-purecounter-duration="1" class="purecounter"></span>
              <p>Hours Of Support</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 mt-5 mt-lg-0">
            <div class="count-box">
              <i class="bi bi-award"></i>
              <span data-purecounter-start="0" data-purecounter-end="25" data-purecounter-duration="1" class="purecounter"></span>
              <p>Awards</p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Facts Section -->

   

   

    <!-- ======= Portfolio Section ======= -->
    <section id="portfolio" class="portfolio section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Portfolio</h2>
          <p>Here's some of our best property with verified owners. Get your Dream home with us. Choose from a vast varieties. 
          
          <p> Give your family a great choice. Let's do this together.
          </div>

        <div class="row">
          <div class="col-lg-12 d-flex justify-content-center" data-aos="fade-up" data-aos-delay="100">
            <ul id="portfolio-flters">
              <li data-filter="*" class="filter-active">All</li>
              <li data-filter=".filter-app">Row-house</li>
              <li data-filter=".filter-card">Flat</li>
              <li data-filter=".filter-web">Bunglow</li>
            </ul>
          </div>
        </div>

        <div class="row portfolio-container" data-aos="fade-up" data-aos-delay="200">

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <div class="portfolio-wrap">
              <img src="img-w/portfolio/row1.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4>Row-house</h4>
                <p>1</p>
                <div class="portfolio-links">
                  <a href="img-w/portfolio/row1.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Row 1"><i class="bx bx-plus"></i></a>
                  <a href="portfolio-details.html" class="portfolio-details-lightbox" data-glightbox="type: external" title="Portfolio Details"></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <div class="portfolio-wrap">
              <img src="img-w/portfolio/bung1.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4>Bunglow</h4>
                <p>1</p>
                <div class="portfolio-links">
                  <a href="img-w/portfolio/bung1.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Bunglow 1"><i class="bx bx-plus"></i></a>
                  <a href="portfolio-details.html" class="portfolio-details-lightbox" data-glightbox="type: external" title="Portfolio Details"></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <div class="portfolio-wrap">
              <img src="img-w/portfolio/row2.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4>Row-house</h4>
                <p>2</p>
                <div class="portfolio-links">
                  <a href="img-w/portfolio/row2.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Row 2"><i class="bx bx-plus"></i></a>
                  <a href="portfolio-details.html" class="portfolio-details-lightbox" data-glightbox="type: external" title="Portfolio Details"></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <div class="portfolio-wrap">
              <img src="img-w/portfolio/flat1.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4>Flat</h4>
                <p>1</p>
                <div class="portfolio-links">
                  <a href="img-w/portfolio/flat1.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Flat 1"><i class="bx bx-plus"></i></a>
                  <a href="portfolio-details.html" class="portfolio-details-lightbox" data-glightbox="type: external" title="Portfolio Details"></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <div class="portfolio-wrap">
              <img src="img-w/portfolio/bung2.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4>Bunglow</h4>
                <p>2</p>
                <div class="portfolio-links">
                  <a href="img-w/portfolio/bung2.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Bunglow 2"><i class="bx bx-plus"></i></a>
                  <a href="portfolio-details.html" class="portfolio-details-lightbox" data-glightbox="type: external" title="Portfolio Details"></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <div class="portfolio-wrap">
              <img src="img-w/portfolio/row5.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4>Row-house</h4>
                <p>3</p>
                <div class="portfolio-links">
                  <a href="img-w/portfolio/row5.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Row 3"><i class="bx bx-plus"></i></a>
                  <a href="portfolio-details.html" class="portfolio-details-lightbox" data-glightbox="type: external" title="Portfolio Details"></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <div class="portfolio-wrap">
              <img src="img-w/portfolio/flat2.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4>Flat</h4>
                <p>2</p>
                <div class="portfolio-links">
                  <a href="img-w/portfolio/flat2.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Flat 2"><i class="bx bx-plus"></i></a>
                  <a href="portfolio-details.html" class="portfolio-details-lightbox" data-glightbox="type: external" title="Portfolio Details"></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <div class="portfolio-wrap">
              <img src="img-w/portfolio/flat3.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4>Flat</h4>
                <p>3</p>
                <div class="portfolio-links">
                  <a href="img-w/portfolio/flat3.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Flat 3"><i class="bx bx-plus"></i></a>
                  <a href="portfolio-details.html" class="portfolio-details-lightbox" data-glightbox="type: external" title="Portfolio Details"></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <div class="portfolio-wrap">
              <img src="img-w/portfolio/bung3.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4>Bunglow</h4>
                <p>3</p>
                <div class="portfolio-links">
                  <a href="img-w/portfolio/bung3.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Bunglow 3"><i class="bx bx-plus"></i></a>
                  <a href="portfolio-details.html" class="portfolio-details-lightbox" data-glightbox="type: external" title="Portfolio Details"></a>
                </div>
              </div>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Portfolio Section -->

    <!-- ======= Services Section ======= -->
    <section id="services" class="services">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Services</h2>
          <p> Our Services to you is as simple as abcd, You can easily contact us. Take a look at our services.
          <p> You can also send your messages to admin directly, without any mid man.
           </div>

        <div class="row">

          
          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0" data-aos="zoom-in" data-aos-delay="200">
            <div class="icon-box iconbox-orange ">
              <div class="icon">
                <svg width="100" height="100" viewBox="0 0 600 600" xmlns="http://www.w3.org/2000/svg">
                  <path stroke="none" stroke-width="0" fill="#f5f5f5" d="M300,582.0697525312426C382.5290701553225,586.8405444964366,449.9789794690241,525.3245884688669,502.5850820975895,461.55621195738473C556.606425686781,396.0723002908107,615.8543463187945,314.28637112970534,586.6730223649479,234.56875336149918C558.9533121215079,158.8439757836574,454.9685369536778,164.00468322053177,381.49747125262974,130.76875717737553C312.15926192815925,99.40240125094834,248.97055460311594,18.661163978235184,179.8680185752513,50.54337015887873C110.5421016452524,82.52863877960104,119.82277516462835,180.83849132639028,109.12597500060166,256.43424936330496C100.08760227029461,320.3096726198365,92.17705696193138,384.0621239912766,124.79988738764834,439.7174275375508C164.83382741302287,508.01625554203684,220.96474134820875,577.5009287672846,300,582.0697525312426"></path>
                </svg>
                <i class="bx bx-file"></i>
              </div>
              <h4><a >Documents</a></h4>
              <p>Get all your documents on just a click, directly from owners. No mid man is required for all your agreements.</p>
            </div>
          </div>
          
          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="zoom-in" data-aos-delay="300">
            <div class="icon-box iconbox-teal">
              <div class="icon">
                <svg width="100" height="100" viewBox="0 0 600 600" xmlns="http://www.w3.org/2000/svg">
                  <path stroke="none" stroke-width="0" fill="#f5f5f5" d="M300,566.797414625762C385.7384707136149,576.1784315230908,478.7894351017131,552.8928747891023,531.9192734346935,484.94944893311C584.6109503024035,417.5663521118492,582.489472248146,322.67544863468447,553.9536738515405,242.03673114598146C529.1557734026468,171.96086150256528,465.24506316201064,127.66468636344209,395.9583748389544,100.7403814666027C334.2173773831606,76.7482773500951,269.4350130405921,84.62216499799875,207.1952322260088,107.2889140133804C132.92018162631612,134.33871894543012,41.79353780512637,160.00259165414826,22.644507872594943,236.69541883565114C3.319112789854554,314.0945973066697,72.72355303640163,379.243833228382,124.04198916343866,440.3218312028393C172.9286146004772,498.5055451809895,224.45579914871206,558.5317968840102,300,566.797414625762"></path>
                </svg>
                <i class="bx bx-arch"></i>
              </div>
              <h4><a >Properties</a></h4>
              <p> All your needs at a place. Get it all under your budget, including needs.
              </p>
            </div>
          </div>

          

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4" data-aos="zoom-in" data-aos-delay="100">
            <div class="icon-box iconbox-yellow">
              <div class="icon">
                <svg width="100" height="100" viewBox="0 0 600 600" xmlns="http://www.w3.org/2000/svg">
                  <path stroke="none" stroke-width="0" fill="#f5f5f5" d="M300,503.46388370962813C374.79870501325706,506.71871716319447,464.8034551963731,527.1746412648533,510.4981551193396,467.86667711651364C555.9287308511215,408.9015244558933,512.6030010748507,327.5744911775523,490.211057578863,256.5855673507754C471.097692560561,195.9906835881958,447.69079081568157,138.11976852964426,395.19560036434837,102.3242989838813C329.3053358748298,57.3949838291264,248.02791733380457,8.279543830951368,175.87071277845988,42.242879143198664C103.41431057327972,76.34704239035025,93.79494320519305,170.9812938413882,81.28167332365135,250.07896920659033C70.17666984294237,320.27484674793965,64.84698225790005,396.69656628748305,111.28512138212992,450.4950937839243C156.20124167950087,502.5303643271138,231.32542653798444,500.4755392045468,300,503.46388370962813"></path>
                </svg>
                <i class="bx bx-layer"></i>
              </div>
              <h4><a >Choose from Stack</a></h4>
              <p>Get a long list of your choice, with all your amenities.</p>
            </div>
          </div>

         

          

        </div>

      </div>
    </section><!-- End Services Section -->

    <!-- ======= Testimonials Section ======= -->
    <section id="testimonials" class="testimonials section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Testimonials</h2>
        </div>

        <div class="testimonials-slider swiper-container" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper-wrapper">

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="img/testimonial-3.jpg" class="testimonial-img" alt="">
                <h3>Manisha</h3>
                <h4>Pune &amp; Maharashtra</h4>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                 I was looking for my first home hunt.
                       I find RealHome has the most extensive search features, most property listings and great listing information which i felt comfortable and educated.
                      I was able to find the perfect home to meet my family needs, from lot features, amenities and right down to the home's flooring. 
                      Thank you RealHome.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="img-w/testimonials/testimonials-2.jpg" class="testimonial-img" alt="">
                <h3>Sara Thapa</h3>
                <h4>Nepal</h4>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  Recently moved to India, I was worried about my settelment. But than someone suggested me this properties-site, 
                  <p> And I must say, Iloved it. I found my perfect House in there.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item -->

            

           

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="img/testimonial-5.jpg" class="testimonial-img" alt="">
                <h3>Megha</h3>
                <h4>New, Delhi</h4>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  I recently transferred from Mumbai to Chennai. 
                      By using Indiaproperty Rental Listings, i was able to find the home near to my office and childrens school.
                     Mapsearch Feature was very helpful to freeze on the location. 
                      For Quick Rental Home, IndiaProperty is the best place.
                 <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item -->

          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section><!-- End Testimonials Section -->

   

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
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
        </div><div class="container">
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
            <div class="social-links">
        <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
        <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
        <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
        <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
        <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
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
    </div>
  </footer><!-- End Footer -->
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

 
  <!-- Vendor JS Files -->
  <script src="vendor-w/aos/aos.js"></script>
  <script src="vendor-w/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="vendor-w/glightbox/js/glightbox.min.js"></script>
  <script src="vendor-w/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="vendor-w/php-email-form/validate.js"></script>
  <script src="vendor-w/purecounter/purecounter.js"></script>
  <script src="vendor-w/swiper/swiper-bundle.min.js"></script>
  <script src="vendor-w/typed.js/typed.min.js"></script>
  <script src="vendor-w/waypoints/noframework.waypoints.js"></script>

  <!-- Template Main JS File -->
  <script src="js-w/main.js"></script>

</body>

</html>
