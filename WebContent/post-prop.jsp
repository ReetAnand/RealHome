<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
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
  background-color: white;
 border-style: solid;
 padding: 50px;
 padding-left: 120px;
 font-size:20px;
 
  
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
	margin: 100px 10px 100px 200px;
	height:100px;
	max-width:1000px;
	background-color: grey;
 border-style: double;
 margin-left : 290px;
 margin-bottom: 10px;
 padding: 20px;
 padding-left: 200px;
 font-size:4px;
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
 <form action="post-property.jsp" method="post">
<%  if(session.getAttribute("email") ==  null)
{
	request.getRequestDispatcher("owner-log-in.jsp").forward(request, response);
} %>
   
   <% String msg=request.getParameter("msg"); %>

 <% if("done".equals(msg)){%>
            <!--   <h3>Last message has been sent !</h3> -->
            <script>
            alert("Property posted succesfully !");
            </script>
            
              <%}%>
   
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
            <a class="nav-link " href=" owner-welcome.jsp">Home</a>
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
  
  
  
  
  
  <%@ page import="java.sql.*" %>
  <%ResultSet rs =null;%>
<%Statement st=null; %> 
<%PreparedStatement pst=null; %>
<%Connection con=null; %>   

<%
    try
	{
    	Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/reg","root","root");
    		
       	st = con.createStatement() ;
	}
	catch(Exception e)
	{
    	 out.println("wrong entry"+e);
	}
%>
    <!--/ Carousel Star /-->
    <div class="intro intro-carousel" style="height: 1400px">
         
            <main id="main">
   <!-- ======= Intro Single ======= -->
    <section class="intro-single"  style="background-image: url(img/post-single-1.jpg) ; ">
      <div class="container" >
        <div class="row">
            
  
          
          
                        <!--  <div class="container" > -->
                         
                          
                                <div class="login-wrap">
                                
                                   
                                   <div class="login-form">
                                    <label for="user" class="label" style="color:green; font-size:40px; margin-top: 10px">Post your property here </label>
                                      <br><br><br>
                                   <div class="group">
                                               <label for="user" class="label" style="font-size:20px; color: black">Reference No.:</label>
                                               <%
	            	int i=0;
					try 
					{
						String sql = "select ref_no from property ORDER BY ref_no DESC LIMIT 1;";
						ResultSet rtt = st.executeQuery(sql);
						while (rtt.next()) 
						{
							i=rtt.getInt(1);
						}
						i=i+1;
					}
					catch (Exception e) 
					{
						e.printStackTrace();
					
					}
				%>
				            		 <input type="number" id="ref_no" name="ref_no"  value=<%=i%> readonly>
				
                                           </div>
                                           
                                           <div class="group">
                                               <label for="user" class="label" style="font-size:20px; color: black">Name of place* :</label>
                                               <input type="text" name="name" required pattern=[A-Za-z].{1,}>
                                           </div> 
                                           
                                           <div class="group">
                                               <label for="user" class="label" style="font-size:20px; color: black">Category* : </label>
                                               <select id="user" name="category" required >
                                                <option >Choose category</option>
                                               <option value="rent">Rent</option>
                                               <option value="sale">Sale</option>
                                               </select>
                                           </div>
                                           
                                           <div class="group">
                                               <label for="user" class="label" style="font-size:20px; color: black">City* : </label>
                                               <input type="text" name="city" required pattern=[A-Za-z].{1,}>
                                           </div>
                                            <div class="group">
                                               <label for="user" class="label" style="font-size:20px; color: black">State* : </label>
                                               <input type="text" name="state" required pattern=[A-Za-z].{1,}>
                                            </div>
                                           <div class="group">
                                               <label for="pass" class="label" style="font-size:20px; color: black">Price* : </label>
                                               <input type="number" name="price" required pattern=.{1,}>
                                            </div>
                                             <div class="group">
                                               <label for="pass" class="label" style="font-size:20px; color: black">BHK* : </label>
                                               <input type="number" name="bhk" required pattern=.{1,}>
                                            </div>
                                             <div class="group">
                                               <label for="pass" class="label" style="font-size:20px; color: black">Area* : </label>
                                               <input type="number" name="area" required pattern=.{1,}>
                                            </div>
                                            
                                            <div class="group">
                                               <label for="user" class="label" style="font-size:20px; color: black">Property Description* : </label>
                                               <textarea name="description" rows="3" cols="30" required></textarea> 
                                           </div>
                                            <div class="group">
                                               <label for="user" class="label" style="font-size:20px; color: black">Amenities: </label><br>
                                               <input type="checkbox" id="amenities" name="amenities" value="Swimming pool">
                                               <label style= color:black>Swimming pool</label><br>
                                               <input type="checkbox" id="amenities" name="amenities" value="Park">
                                               <label style= color:black>Park</label><br>
                                               <input type="checkbox" id="amenities" name="amenities" value="Balcony">
                                               <label style= color:black>Balcony</label><br>
                                               
                                            </div>
                                             
                                               <div class="group">
                                               <label for="user" class="label" style="font-size:20px; color: black">Post images: </label>
                                               <input type="text" name="image" >
                                            </div>
                                            <br><br>
                                            <div>
                                              <button style="width: 210px; cursor: pointer;  border: solid grey; height:40px;
                                              color: white; margin: 20px 2px;margin-left: 100px;background-color: black" type="submit" value="post" >Post</button>
                                          </div>
                                          
                                          
                                           
                                   </div>
                                </div>
                              </div>
  
                               
                          </div>
                          <div> 
                           					
                          
                          </div>
                         </div>
            </div>
           </div></div></div></div></section></main>
        
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
  
  
  </form>
</body>
</html>