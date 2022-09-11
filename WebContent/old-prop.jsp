<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
 <head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Property-post</title>
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

<style>
  
    body{
     margin:0;
     font:600 16px/18px;
 }
 *,:after,:before{box-sizing:border-box}
 .clearfix:after,.clearfix:before{content:'';display:table}
 .clearfix:after{clear:both;display:block}
 a{color:inherit;text-decoration:none}
 
 .login-wrap{
 
  margin: 0px 0px 0 0px;
  max-width:1000px;
  min-height:600px;
  background-color: black;
 border-style: double;
 padding: 50px;
 padding-left: 120px;
 
  
}
 
 
 
 .login-html .tab,
 .login-form .group .label,
 .login-form .group .button{
     text-transform:uppercase;
 }
 
 
 .login-form .group{
     margin-bottom:15px;
     
 }
 .login-form .group .label,
 .login-form .group .input,
 .login-form .group .button{
     width:30%;
     color:#fff;
    
 }
 .login-form .group .input,
 .login-form .group .button{
     border:none;
     padding:15px 20px;
     border-radius:25px;
     background:rgba(255,255,255,.1);
 }
 .login-form .group input[data-type="password"]{
     /* text-security:circle; */
     -webkit-text-security:circle;
 }
 .login-form .group .label{
     color:#aaa;
     font-size:12px;
 }
 .login-form .group .button{
     background:#1161ee;
 }
 .login-form .group label .icon{
     width:15px;
     height:15px;
     border-radius:2px;
     position:relative;
     display:inline-block;
     background:rgba(255,255,255,.1);
 }
 .login-form .group label .icon:before,
 .login-form .group label .icon:after{
     content:'';
     width:10px;
     height:2px;
     background:#fff;
     position:absolute;
     transition:all .2s ease-in-out 0s;
 }
 .login-form .group label .icon:before{
     left:3px;
     width:5px;
     bottom:6px;
     transform:scale(0) rotate(0);
 }
 .login-form .group label .icon:after{
     top:6px;
     right:0;
     transform:scale(0) rotate(0);
 }

.box 
{
	margin: 10px 10px 100px 200px;
	height:100px;
	max-width:600px;
 margin-left : 200px;
 margin-bottom: 400px;
 padding: 20px;
 padding-left: 200px;
 font-size:30px;
}

 .ftr 
{
	margin: 50px 10px 100px 100px;
	height:70px;
	max-width:100px;
	background-color: black;
 border-style: double;
 margin-left : 250px;
 margin-bottom: 10px;
 
 font-size:20px;
}
 </style> 
</head>
<body>
<%  if(session.getAttribute("email") ==  null)
{
	request.getRequestDispatcher("owner-log-in.jsp").forward(request, response);
} %>
   
    <!--/ Nav Star /-->
    <nav class="navbar navbar-default navbar-trans navbar-expand-lg fixed-top">
      <div class="container">
        
        <a class="navbar-brand text-brand" href="post-prop.jsp">Real<span class="color-b">Home</span></a>
       
        <div class="navbar-collapse collapse justify-content-center" id="navbarDefault">
          <ul class="navbar-nav">
            
           <%   String email=session.getAttribute("email").toString();  %>
         <li class="nav-item">
              <a class="nav-link " href="#"><% out.println(email); %></a>
            </li> 
            <li class="nav-item">
            <a class="nav-link " href=" owner-welcome.jsp">Home</a>
          </li>
               <li class="nav-item">
            <a class="nav-link " href=" post-prop.jsp">Post more properties</a>
          </li>
           <li class="nav-item">
                <a class="nav-link" href="owner_logout.jsp">logout</a>
              </li>
          </ul>
        </div>
        
      </div>
    </nav>
    <!--/ Nav End /-->
    
  <main id="main">

    <!-- ======= Intro Single ======= -->
    <section class="intro-single">
      <div class="container">
        <div class="row">
          <div class="col-md-12 col-lg-8">
            <div class="title-single-box">
              <h1 class="title-single">Clients </h1>
              <span class="color-text-a">Interested in your properties</span>
            </div>
          </div>
         
        </div>
      </div>
    </section><!-- End Intro Single-->
    
     <main id="main">
   <!-- ======= Intro Single ======= -->
    <section class="intro-single" style= "margin-top:0px; border: 10px">
      <div class="container" style= margin-top:-150px  >
        <div class="column">
            <div class="title-single-box">

<%@page import="java.sql.*" %>
<%
    
	
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/reg","root","root");
    Statement st=con.createStatement();
	String sql ="select * from client";
	ResultSet rs = st.executeQuery(sql);
	
	
	while(rs.next()){
		%>
		
		<br>
            <label>Your Property: </label><br>
		<% out.print(rs.getString("ref_no")); %> | 
		          <% out.print(rs.getString("name")); %>
  	            <br><br>
  	            
  	           
                    <label>Client's Name: </label><br>
		          <%out.print(rs.getString("first_name")); %>
		           
		          <br>
		   
                  
                 <br>
                 <br>
                       email: <% out.print(rs.getString("email")); %> <br> 
		         contact: <% out.print(rs.getString("mobile")); %>
		          
               <br><br><br>
               ----------------------------------------------------------------------------------------------------------
              
		         
		 <%
		 
		}
		} 
		catch (Exception e) {
		e.printStackTrace();
		}
		%>
		
		</div></div></div></div></section></main>
		
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