<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>TuckerBag- A Platform for Community Gardeners</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/icomoon-social.css">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,600,800' rel='stylesheet' type='text/css'>

        <link rel="stylesheet" href="css/leaflet.css" />
		<!--[if lte IE 8]>
		    <link rel="stylesheet" href="css/leaflet.ie.css" />
		<![endif]-->
		<link rel="stylesheet" href="css/main.css">

        <script src="js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->
        
        <!-- Navigation & Logo-->
        <div class="mainmenu-wrapper">
	        <div class="container">
	        	<div class="menuextras">
					<div class="extras">
						<ul>
							<s:if test="#session.user==null">
								<li><a href="register.jsp">Register</a></li>
			        			<li><a href="login.jsp">Login</a></li>
			        		</s:if>
			        		<s:else>
			        		
			        			<div class="dropdown choose-country">
									<a class="#" data-toggle="dropdown" href="#">Hello, ${session.user.firstName }</a>
									<ul class="dropdown-menu" role="menu">
										<s:if test="#session.user.userType=='Gardener'">
											<li role="menuitem"><a href="donation!getDonationListByEmail.action">Dashboard</a></li>
										</s:if>
										<s:else>
											<li role="menuitem"><a href="donation!getDonatioList.action">Dashboard</a></li>
										</s:else>
										<li role="menuitem"><a href="user!logout.action">log out</a></li>
									</ul>
								</div>
			        		
			        			<!-- <li>Hello, ${session.user.firstName }</li> -->
			        		</s:else>
			        	</ul>
					</div>
		        </div>
		        <nav id="mainmenu" class="mainmenu">
					<ul>
						<li class="logo-wrapper"><a href="index.jsp"><img src="img/mPurpose-logo.png" alt="Multipurpose Twitter Bootstrap Template"></a></li>
						<li class="active">
							<a href="index.jsp">Home</a>
						</li>
						<li>
							<a href="community_garden!getAllCommunityGardens.action">Search Gardens</a>
						</li>
						<li>
							<a href="gradening-guide.jsp">Gardening Information</a>
						</li>
						<li>
							<a href="donation!initForm.action"> Food Donation</a>
						</li>
					</ul>
				</nav>
			</div>
		</div>

        <!-- Homepage Slider -->
        <div class="homepage-slider">
        	<div id="sequence">
				<ul class="sequence-canvas">
					<!-- Slide 1 -->
					<li class="bg4">
						<!-- Slide Title -->
						<h2 class="title">Community Garden</h2>
						<!-- Slide Text -->
						<h3 class="subtitle">Community gardens provide fresh products and plants as well as satisfying labor, neighborhood improvement, sense of community.</h3>
						<!-- Slide Image -->
						<!--<img class="slide-img" src="img/homepage-slider/slide1.png" alt="Slide 1" />-->
					</li>
					<!-- End Slide 1 -->
					<!-- Slide 2 -->
					<li class="bg3">
						<!-- Slide Title -->
						<h2 class="title">Gardening</h2>
						<!-- Slide Text -->
						<h3 class="subtitle">Gardening is the practice of growing and cultivating plants as part of horticulture.</h3>
						<!-- Slide Image -->
						<!--<img class="slide-img" src="img/homepage-slider/slide2.png" alt="Slide 2" />-->
					</li>
					<!-- End Slide 2 -->
					<!-- Slide 3 -->
					<li class="bg1">
						<!-- Slide Title -->
						<h2 class="title">Volunteering</h2>
						<!-- Slide Text -->
						<h3 class="subtitle">Huge amount of components and over 30 sample pages!</h3>
						<!-- Slide Image -->
						<!--<img class="slide-img" src="img/homepage-slider/slide3.png" alt="Slide 3" />-->
					</li>
					<!-- End Slide 3 -->
				</ul>
				<div class="sequence-pagination-wrapper">
					<ul class="sequence-pagination">
						<li>1</li>
						<li>2</li>
						<li>3</li>
					</ul>
				</div>
			</div>
        </div>
        <!-- End Homepage Slider -->

		<!--
        <div class="section">
	    	<div class="container">
				<div class="row">
					<div class="col-md-4 col-sm-6">
						<div class="in-press press-wired">
							<a href="#">Morbi eleifend congue elit nec sagittis. Praesent aliquam lobortis tellus, nec consequat vitae</a>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="in-press press-mashable">
							<a href="#">Morbi eleifend congue elit nec sagittis. Praesent aliquam lobortis tellus, nec consequat vitae</a>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="in-press press-techcrunch">
							<a href="#">Morbi eleifend congue elit nec sagittis. Praesent aliquam lobortis tellus, nec consequat vitae</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		-->

		<!-- Services -->
        <div class="section">
	        <div class="container">
	        	<div class="row">
	        		
	        		<div class="col-md-4 col-sm-6">
                                    <div class="portfolio-item" style="padding:1.5em">
	        			<div class="portfolio-image">
		        			<img src="img/service-icon/location.png" alt="Service 1">
                                                <h3>Find community garden</h3>
		        			<p>There are lots of community of gardens which are actually just around you. Find out others like you who are just a click away!!</p>
		        			<a href="community_garden!getAllCommunityGardens.action" class="btn">More</a>
		        		</div>
                                    </div>
                                    
	        		</div>
	        		
	        		<div class="col-md-4 col-sm-6">
                                    <div class="portfolio-item" style="padding:1.5em">
	        			<div class="portfolio-image">
		        			<img src="img/service-icon/gardening.png" alt="Service 2">
		        			<h3>Gardening guide</h3>
		        			<p>A interactive guide for you to see through different fruits and vegetables, weather, soil, pest and disease information in detail</p>
                                                <a href="gradening-guide.jsp" class="btn">More</a>
		        		</div>
                                    </div>
                                    
	        		</div>
                            
	        		<div class="col-md-4 col-sm-6">
                                     <div class="portfolio-item" style="padding:1.5em">
	        			<div class="portfolio-image">
		        			<img src="img/service-icon/donation.png" alt="Service 3">
		        			<h3>Food Donation</h3>
		        			<p>Don't waste the additional fruits/vegetables you have. Donate it here to feed the needy people in your community</p>
                                                <a href="donation!initForm.action" class="btn">More</a>
		        		</div>
                                     </div>
                                </div>
	        		</div>
	        	</div>
	        </div>
	    </div>
	    <!-- End Services -->

		<!--
	    <div class="section section-white">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="calltoaction-wrapper">
							<h3>It's a free multipurpose Bootstrap 3 template!</h3> <a href="http://www.dragdropsite.com" class="btn btn-orange">Download here!</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		-->

		<!-- Voice from you 
	    <div class="section">
			<div class="container">
				<h2>Voice from you</h2>
				<div class="row">
					<!-- Testimonial 
					<div class="testimonial col-md-4 col-sm-6">
						<!-- Author Photo 
						<div class="author-photo">
							<img src="img/male.jpg" alt="Author 1">
						</div>
						<div class="testimonial-bubble">
							<blockquote>
								<!-- Quote 
								<p class="quote">
		                            "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut."
                        		</p>
                        		<!-- Author Info 
                        		<cite class="author-info">
                        			- Name Surname,<br>Managing Director at <a href="#">Some Company</a>
                        		</cite>
                        	</blockquote>
                        	<div class="sprite arrow-speech-bubble"></div>
                        </div>
                    </div>
                    <!-- End Testimonial 
                    <div class="testimonial col-md-4 col-sm-6">
						<div class="author-photo">
							<img src="img/female.jpg" alt="Author 2">
						</div>
						<div class="testimonial-bubble">
							<blockquote>
								<p class="quote">
		                            "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo."
                        		</p>
                        		<cite class="author-info">
                        			- Name Surname,<br>Managing Director at <a href="#">Some Company</a>
                        		</cite>
                        	</blockquote>
                        	<div class="sprite arrow-speech-bubble"></div>
                        </div>
                    </div>
					<div class="testimonial col-md-4 col-sm-6">
						<div class="author-photo">
							<img src="img/female.jpg" alt="Author 3">
						</div>
						<div class="testimonial-bubble">
							<blockquote>
								<p class="quote">
		                            "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
                        		</p>
                        		<cite class="author-info">
                        			- Name Surname,<br>Managing Director at <a href="#">Some Company</a>
                        		</cite>
                        	</blockquote>
                        	<div class="sprite arrow-speech-bubble"></div>
                        </div>
                    </div>
				</div>
			</div>
	    </div>
	    <!-- End Voice from you -->
		
		<!-- Our Clients
	    <div class="section">
	    	<div class="container">
	    		<h2>Our Clients</h2>
				<div class="clients-logo-wrapper text-center row">
					<div class="col-lg-1 col-md-1 col-sm-3 col-xs-6"><a href="#"><img src="img/logos/canon.png" alt="Client Name"></a></div>
					<div class="col-lg-1 col-md-1 col-sm-3 col-xs-6"><a href="#"><img src="img/logos/cisco.png" alt="Client Name"></a></div>
					<div class="col-lg-1 col-md-1 col-sm-3 col-xs-6"><a href="#"><img src="img/logos/dell.png" alt="Client Name"></a></div>
					<div class="col-lg-1 col-md-1 col-sm-3 col-xs-6"><a href="#"><img src="img/logos/ea.png" alt="Client Name"></a></div>
					<div class="col-lg-1 col-md-1 col-sm-3 col-xs-6"><a href="#"><img src="img/logos/ebay.png" alt="Client Name"></a></div>
					<div class="col-lg-1 col-md-1 col-sm-3 col-xs-6"><a href="#"><img src="img/logos/facebook.png" alt="Client Name"></a></div>
					<div class="col-lg-1 col-md-1 col-sm-3 col-xs-6"><a href="#"><img src="img/logos/google.png" alt="Client Name"></a></div>
					<div class="col-lg-1 col-md-1 col-sm-3 col-xs-6"><a href="#"><img src="img/logos/hp.png" alt="Client Name"></a></div>
					<div class="col-lg-1 col-md-1 col-sm-3 col-xs-6"><a href="#"><img src="img/logos/microsoft.png" alt="Client Name"></a></div>
					<div class="col-lg-1 col-md-1 col-sm-3 col-xs-6"><a href="#"><img src="img/logos/mysql.png" alt="Client Name"></a></div>
					<div class="col-lg-1 col-md-1 col-sm-3 col-xs-6"><a href="#"><img src="img/logos/sony.png" alt="Client Name"></a></div>
					<div class="col-lg-1 col-md-1 col-sm-3 col-xs-6"><a href="#"><img src="img/logos/yahoo.png" alt="Client Name"></a></div>
				</div>
			</div>
	    </div>
	    -->

	    <!-- Footer -->
	    <div class="footer">
	    	<div class="container">
		    	<div class="row">
		    		
		    		<div class="col-footer col-md-3 col-xs-6">
		    			<h3>Navigate</h3>
		    			<ul class="no-list-style footer-navigate-section">
		    				<li><a href="plant!getAllPlants.action">Plant Guide</a></li>
		    				<li><a href="pest!getAllPest.action">Pest Control</a></li>
		    				<li><a href="soil!getAllSoilType.action">Soil Type</a></li>
		    				<li><a href="aboutUs.jsp">About Us</a></li>
		    				<li><a href="donation.jsp">Donation</a></li>
		    			</ul>
		    		</div>
		    		
		    		<div class="col-footer col-md-4 col-xs-6">
		    			<h3>Contacts</h3>
		    			<p class="contact-us-details">
	        				<b>Address:</b> 900 Dandenong Rd, Caufield East VIC, 3145<br/>
	        				<b>Team:</b> 27P CBI<br/>
	        				<b>Email:</b> <a href="cjin14@student.monash.edu">cjin14@student.monash.edu</a>
	        			</p>
		    		</div>
		    		<div class="col-footer col-md-2 col-xs-6">
		    			<h3>Stay Connected</h3>
		    			<ul class="footer-stay-connected no-list-style">
		    				<li><a href="#" class="facebook"></a></li>
		    				<li><a href="#" class="twitter"></a></li>
		    				<li><a href="#" class="googleplus"></a></li>
		    			</ul>
		    		</div>
		    	</div>
		    	<div class="row">
		    		<div class="col-md-12">
		    			<div class="footer-copyright">&copy; 2016 TuckerBag. All rights reserved.</div>
		    		</div>
		    	</div>
		    </div>
	    </div>

        <!-- Javascripts -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/jquery-1.9.1.min.js"><\/script>')</script>
        <script src="js/bootstrap.min.js"></script>
        <script src="http://cdn.leafletjs.com/leaflet-0.5.1/leaflet.js"></script>
        <script src="js/jquery.fitvids.js"></script>
        <script src="js/jquery.sequence-min.js"></script>
        <script src="js/jquery.bxslider.js"></script>
        <script src="js/main-menu.js"></script>
        <script src="js/template.js"></script>

    </body>
</html>