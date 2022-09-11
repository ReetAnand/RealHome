<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HOME</title>
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
	request.getRequestDispatcher("/demo.jsp").forward(request, response);
} %>
 <!--/ Nav Star /-->
    <nav class="navbar navbar-default navbar-trans navbar-expand-lg fixed-top">
      <div class="container">
        <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarDefault"
          aria-controls="navbarDefault" aria-expanded="false" aria-label="Toggle navigation">
          <span></span>
          <span></span>
          <span></span>
        </button>
        <a class="navbar-brand text-brand" href="home-main.jsp">Real<span class="color-b">Home</span></a>
        <button type="button" class="btn btn-link nav-search navbar-toggle-box-collapse d-md-none" data-toggle="collapse"
          data-target="#navbarTogglerDemo01" aria-expanded="false">
          <span class="fa fa-search" aria-hidden="true"></span>
        </button>
        <div class="navbar-collapse collapse justify-content-center" id="navbarDefault">
          <ul class="navbar-nav">
         <%   String email=session.getAttribute("email").toString();  %>
         <li class="nav-item">
              <a class="nav-link " href="#"><% out.println(email); %></a>
            </li> 
            <li class="nav-item">
              <a class="nav-link active" href="home-main.jsp">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="about.jsp">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="property-grid.jsp">Property</a>
            </li>
             <li class="nav-item">
            <a class="nav-link " href="blog-grid.jsp">Blog</a>
          </li>
                      
            <li class="nav-item">
              <a class="nav-link" href="contact.jsp">Contact</a>
            </li>

            <li class="nav-item">
              <a class="nav-link " href="logout.jsp">LogOut</a>
            </li>
          </ul>
        </div>
       
      </div>
    </nav>
    <!--/ Nav End /-->
    
     <!--/ Carousel Star /-->
    <div class="intro intro-carousel">
      <div id="carousel" class="owl-carousel owl-theme">
        <div class="carousel-item-a intro-item bg-image" style="background-image: url(img/slide-1.jpg)">
          <div class="overlay overlay-a"></div>
          <div class="intro-content display-table">
            <div class="table-cell">
              <div class="container">
                <div class="row">
                  <div class="col-lg-8">
                    <div class="intro-body">
                      <p class="intro-title-top">New Delhi, India
                        
                      <h1 class="intro-title mb-4">
                        <span class="color-b">204 </span> Palika Nagar
                        <br> Mahatma Gandhi Road Two</h1>
                      <p class="intro-subtitle intro-price">
                        <a href="#"><span class="price-a">Rent | Rs. 20,000</span></a>
                      </p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="carousel-item-a intro-item bg-image" style="background-image: url(img/slide-2.jpg)">
          <div class="overlay overlay-a"></div>
          <div class="intro-content display-table">
            <div class="table-cell">
              <div class="container">
                <div class="row">
                  <div class="col-lg-8">
                    <div class="intro-body">
                      <p class="intro-title-top">Mumbai, India
                        
                      <h1 class="intro-title mb-4">
                        <span class="color-b">204 </span> Mumbai Central 
                        <br> Road Five</h1>
                      <p class="intro-subtitle intro-price">
                        <a href="#"><span class="price-a">Sell | Rs. 10 lakhs</span></a>
                      </p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="carousel-item-a intro-item bg-image" style="background-image: url(img/slide-3.jpg)">
          <div class="overlay overlay-a"></div>
          <div class="intro-content display-table">
            <div class="table-cell">
              <div class="container">
                <div class="row">
                  <div class="col-lg-8">
                    <div class="intro-body">
                      <p class="intro-title-top">West Bangal, India
                        <br> 78345</p>
                      <h1 class="intro-title mb-4">
                        <span class="color-b">204 </span> kolkata
                        <br> Roan Road One</h1>
                      <p class="intro-subtitle intro-price">
                        <a href="#"><span class="price-a">Rent | Rs. 10,000</span></a>
                      </p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--/ Carousel end /-->
    
    
    <!--/ Services Star /-->
   <section class="section-services section-t8">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="title-wrap d-flex justify-content-between">
            <div class="title-box">
              <h2 class="title-a">Our Services</h2>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-4">
          <div class="card-box-c foo">
            <div class="card-header-c d-flex">
              <div class="card-box-ico">
                <span class="fa fa-gamepad"></span>
              </div>
              <div class="card-title-c align-self-center">
                <h2 class="title-c">Buy</h2>
              </div>
            </div>
            <div class="card-body-c">
              <p class="content-c">
                Buy your own house, and make it your home.
                Mark your choices to get the best of us.
              </p>
            </div>
            <div class="card-footer-c">
              <a href="about.jsp" class="link-c link-icon">Explore
                <span class="ion-ios-arrow-forward"></span>
              </a>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card-box-c foo">
            <div class="card-header-c d-flex">
              <div class="card-box-ico">
                <span class="fa fa-usd"></span>
              </div>
              <div class="card-title-c align-self-center">
                <h2 class="title-c">Sell</h2>
              </div>
            </div>
            <div class="card-body-c">
              <p class="content-c">
                Selling your property to a good hand. 
                Post the pictures and properties of your house for better experience.
              </p>
            </div>
            <div class="card-footer-c">
              <a href="about.jsp" class="link-c link-icon">Explore
                <span class="ion-ios-arrow-forward"></span>
              </a>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card-box-c foo">
            <div class="card-header-c d-flex">
              <div class="card-box-ico">
                <span class="fa fa-home"></span>
              </div>
              <div class="card-title-c align-self-center">
                <h2 class="title-c">Rent</h2>
              </div>
            </div>
            <div class="card-body-c">
              <p class="content-c">
                Rent your property to a trustworthy one. Get the details of intrested clients and contact them directly.
              </p>
            </div>
            <div class="card-footer-c">
              <a href="about.jsp" class="link-c link-icon">Explore
                <span class="ion-ios-arrow-forward"></span>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--/ Services End /-->
  
    <!--/ Property Star /-->
    <section class="section-property section-t8">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="title-wrap d-flex justify-content-between">
              <div class="title-box">
                <h2 class="title-a">Latest Properties</h2>
              </div>
              <div class="title-link">
                <a href="property-grid.jsp">All Property
                  <span class="ion-ios-arrow-forward"></span>
                </a>
              </div>
            </div>
          </div>
        </div>
        <div id="property-carousel" class="owl-carousel owl-theme">
          <div class="carousel-item-b">
            <div class="card-box-a card-shadow">
              <div class="img-box-a">
                <img src="img/property-6.jpg" alt="" class="img-a img-fluid">
              </div>
              <div class="card-overlay">
                <div class="card-overlay-a-content">
                  <div class="card-header-a">
                    <h2 class="card-title-a">
                    204 Mumbai 
                        <br /> Central Road Five
                    </h2>
                  </div>
                  <div class="card-body-a">
                    <div class="price-box d-flex">
                      <span class="price-a">Sell | Rs.10 Lakhs</span>
                    </div>
                   
                  </div>
                  <div class="card-footer-a">
                    <ul class="card-info d-flex justify-content-around">
                      <li>
                        <h4 class="card-info-title">Area</h4>
                        <span>340m
                          <sup>2</sup>
                        </span>
                      </li>
                      <li>
                        <h4 class="card-info-title">Beds</h4>
                        <span>2</span>
                      </li>
                      <li>
                        <h4 class="card-info-title">Baths</h4>
                        <span>4</span>
                      </li>
                      <li>
                        <h4 class="card-info-title">Garages</h4>
                        <span>1</span>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item-b">
            <div class="card-box-a card-shadow">
              <div class="img-box-a">
                <img src="img/property-3.jpg" alt="" class="img-a img-fluid">
              </div>
              <div class="card-overlay">
                <div class="card-overlay-a-content">
                  <div class="card-header-a">
                    <h2 class="card-title-a">
                      157 West Bengal
                        <br /> Central Park</a>
                    </h2>
                  </div>
                  <div class="card-body-a">
                    <div class="price-box d-flex">
                      <span class="price-a">Rent | Rs. 20,000</span>
                    </div>
                    
                  </div>
                  <div class="card-footer-a">
                    <ul class="card-info d-flex justify-content-around">
                      <li>
                        <h4 class="card-info-title">Area</h4>
                        <span>340m
                          <sup>2</sup>
                        </span>
                      </li>
                      <li>
                        <h4 class="card-info-title">Beds</h4>
                        <span>2</span>
                      </li>
                      <li>
                        <h4 class="card-info-title">Baths</h4>
                        <span>4</span>
                      </li>
                      <li>
                        <h4 class="card-info-title">Garages</h4>
                        <span>1</span>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item-b">
            <div class="card-box-a card-shadow">
              <div class="img-box-a">
                <img src="img/property-7.jpg" alt="" class="img-a img-fluid">
              </div>
              <div class="card-overlay">
                <div class="card-overlay-a-content">
                  <div class="card-header-a">
                    <h2 class="card-title-a">
                      Jaipur
                        <br /> City Palace Road</a>
                    </h2>
                  </div>
                  <div class="card-body-a">
                    <div class="price-box d-flex">
                      <span class="price-a">Rent | Rs. 32,000</span>
                    </div>
                   
                  </div>
                  <div class="card-footer-a">
                    <ul class="card-info d-flex justify-content-around">
                      <li>
                        <h4 class="card-info-title">Area</h4>
                        <span>340m
                          <sup>2</sup>
                        </span>
                      </li>
                      <li>
                        <h4 class="card-info-title">Beds</h4>
                        <span>2</span>
                      </li>
                      <li>
                        <h4 class="card-info-title">Baths</h4>
                        <span>4</span>
                      </li>
                      <li>
                        <h4 class="card-info-title">Garages</h4>
                        <span>1</span>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item-b">
            <div class="card-box-a card-shadow">
              <div class="img-box-a">
                <img src="img/property-10.jpg" alt="" class="img-a img-fluid">
              </div>
              <div class="card-overlay">
                <div class="card-overlay-a-content">
                  <div class="card-header-a">
                    <h2 class="card-title-a">
                      <a href="property-single.html">Pune
                        <br /> Wagholi</a>
                    </h2>
                  </div>
                  <div class="card-body-a">
                    <div class="price-box d-flex">
                      <span class="price-a">Sell | 50 Lakhs </span>
                    </div>
                    <a href="property-single.html" class="link-a">Click here to view
                      <span class="ion-ios-arrow-forward"></span>
                    </a>
                  </div>
                  <div class="card-footer-a">
                    <ul class="card-info d-flex justify-content-around">
                      <li>
                        <h4 class="card-info-title">Area</h4>
                        <span>340m
                          <sup>2</sup>
                        </span>
                      </li>
                      <li>
                        <h4 class="card-info-title">Beds</h4>
                        <span>2</span>
                      </li>
                      <li>
                        <h4 class="card-info-title">Baths</h4>
                        <span>4</span>
                      </li>
                      <li>
                        <h4 class="card-info-title">Garages</h4>
                        <span>1</span>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--/ Property End /-->
  
    
  
    <!--/ News Star /-->
    <section class="section-news section-t8">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="title-wrap d-flex justify-content-between">
              <div class="title-box">
                <h2 class="title-a">Latest News</h2>
              </div>
              <div class="title-link">
                <a href="blog-grid.jsp">All News
                  <span class="ion-ios-arrow-forward"></span>
                </a>
              </div>
            </div>
          </div>
        </div>
        <div id="new-carousel" class="owl-carousel owl-theme">
          <div class="carousel-item-c">
            <div class="card-box-b card-shadow news-box">
              <div class="img-box-b">
                <img src="img/post-2.jpg" alt="" class="img-b img-fluid">
              </div>
              <div class="card-overlay">
                <div class="card-header-b">
                  <div class="card-category-b">
                    <a href="#" class="category-b">House</a>
                  </div>
                  <div class="card-title-b">
                    <h2 class="title-2">
                      <a href="#">House is comming
                        <br> new</a>
                    </h2>
                  </div>
                  <div class="card-date">
                    <span class="date-b">18 Sep. 2017</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item-c">
            <div class="card-box-b card-shadow news-box">
              <div class="img-box-b">
                <img src="img/post-5.jpg" alt="" class="img-b img-fluid">
              </div>
              <div class="card-overlay">
                <div class="card-header-b">
                  <div class="card-category-b">
                    <a href="#" class="category-b">Travel</a>
                  </div>
                  <div class="card-title-b">
                    <h2 class="title-2">
                      <a href="#">Travel is comming
                        <br> new</a>
                    </h2>
                  </div>
                  <div class="card-date">
                    <span class="date-b">18 Sep. 2017</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item-c">
            <div class="card-box-b card-shadow news-box">
              <div class="img-box-b">
                <img src="img/post-7.jpg" alt="" class="img-b img-fluid">
              </div>
              <div class="card-overlay">
                <div class="card-header-b">
                  <div class="card-category-b">
                    <a href="#" class="category-b">Park</a>
                  </div>
                  <div class="card-title-b">
                    <h2 class="title-2">
                      <a href="#">Park is comming
                        <br> new</a>
                    </h2>
                  </div>
                  <div class="card-date">
                    <span class="date-b">18 Sep. 2017</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item-c">
            <div class="card-box-b card-shadow news-box">
              <div class="img-box-b">
                <img src="img/post-3.jpg" alt="" class="img-b img-fluid">
              </div>
              <div class="card-overlay">
                <div class="card-header-b">
                  <div class="card-category-b">
                    <a href="#" class="category-b">Travel</a>
                  </div>
                  <div class="card-title-b">
                    <h2 class="title-2">
                      <a href="#">Travel is comming
                        <br> new</a>
                    </h2>
                  </div>
                  <div class="card-date">
                    <span class="date-b">18 Sep. 2017</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--/ News End /-->
    
    
    
    
     <!--/ Testimonials Star /-->
    <section class="section-testimonials section-t8 nav-arrow-a">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="title-wrap d-flex justify-content-between">
              <div class="title-box">
                <h2 class="title-a">Testimonials</h2>
              </div>
            </div>
          </div>
        </div>
        <div id="testimonial-carousel" class="owl-carousel owl-arrow">
          <div class="carousel-item-a">
            <div class="testimonials-box">
              <div class="row">
                <div class="col-sm-12 col-md-6">
                  <div class="testimonial-img">
                    <img src="img/testimonial-3.jpg" alt="" class="img-fluid">
                  </div>
                </div>
                <div class="col-sm-12 col-md-6">
                  <div class="testimonial-ico">
                    <span class="ion-ios-quote"></span>
                  </div>
                  <div class="testimonials-content">
                    <p class="testimonial-text">
                      I was looking for my first home hunt.
                       I find RealHome has the most extensive search features, most property listings and great listing information which i felt comfortable and educated.
                      I was able to find the perfect home to meet my family needs, from lot features, amenities and right down to the home's flooring. 
                      Thank you RealHome.
                    </p>
                  </div>
                  <div class="testimonial-author-box">
                   
                    <h5 class="testimonial-author">Manisha</h5>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item-a">
            <div class="testimonials-box">
              <div class="row">
                <div class="col-sm-12 col-md-6">
                  <div class="testimonial-img">
                    <img src="img/testimonial-5.jpg" alt="" class="img-fluid">
                  </div>
                </div>
                <div class="col-sm-12 col-md-6">
                  <div class="testimonial-ico">
                    <span class="ion-ios-quote"></span>
                  </div>
                  <div class="testimonials-content">
                    <p class="testimonial-text">
                      I recently transferred from Mumbai to Chennai. 
                      By using Indiaproperty Rental Listings, i was able to find the home near to my office and childrens school.
                     Mapsearch Feature was very helpful to freeze on the location. 
                      For Quick Rental Home, IndiaProperty is the best place.
                    </p>
                  </div>
                  <div class="testimonial-author-box">
                    <h5 class="testimonial-author">Megha</h5>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--/ Testimonials End /-->
  
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