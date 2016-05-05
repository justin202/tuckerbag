<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
        <div w3-include-html="header.html"></div>

        <!-- Page Title -->
		<div class="section section-breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h1>Gardening</h1>
					</div>
				</div>
			</div>
		</div>
        
        <div class="section">
	        <div class="container">
	        	<div class="row service-wrapper-row">
        			<div class="col-sm-4">
        				<div class="service-image">
                                            <a href="plant!getAllPlants.action"><img src="img/services1.jpg" alt="Service Name"></a>
        				</div>
        			</div>
        			<div class="col-sm-8">
    					<h3><a href="plant!getAllPlants.action">Plant Guide</a></h3>
    					<p>
    						An comprehensive guide for you to find out the most appropriate plant to grow in your garden 
    					</p>
    				</div>
				</div>
				<div class="row service-wrapper-row">
        			<div class="col-sm-4">
        				<div class="service-image">
                                            <a href="weather.jsp"><img src="img/services2.jpg" alt="Service Name"></a>
        				</div>
        			</div>
        			<div class="col-sm-8">
    					<h3><a href="weather.jsp">Weather</a></h3>
    					<p>
    						Show the related weather forecast.
    					</p>
    				</div>
				</div>
				<div class="row service-wrapper-row">
        			<div class="col-sm-4">
        				<div class="service-image">
                                            <a href="soil!getAllSoilType.action"><img src="img/services3.jpg" alt="Service Name"></a>
        				</div>
        			</div>
        			<div class="col-sm-8">
    					<h3><a href="soil!getAllSoilType.action">Soil Type</a></h3>
    					<p>
    						Find out about the differnet soil types to empower your gardening skills. 
    					</p>
    				</div>
				</div>
				<div class="row service-wrapper-row">
        			<div class="col-sm-4">
        				<div class="service-image">
                                            <a href="pest!getAllPest.action"><img src="img/services4.jpg" alt="Service Name"></a>
        				</div>
        			</div>
        			<div class="col-sm-8">
    					<h3><a href="pest!getAllPest.action">Pest Control</a></h3>
    					<p>
							Know about those little culprits ruining your garden quitely.
    					</p>
    				</div>
				</div>
	        </div>
	    </div>

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
	    <!-- End Testimonials -->

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
	    <div w3-include-html="footer.html"></div>

        <!-- Javascripts -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/jquery-1.9.1.min.js"><\/script>')</script>
        <script src="js/bootstrap.min.js"></script>
        <script src="http://cdn.leafletjs.com/leaflet-0.5.1/leaflet.js"></script>
        <script src="js/jquery.fitvids.js"></script>
        <script src="js/jquery.sequence-min.js"></script>
        <script src="js/jquery.bxslider.js"></script>
    	<script src="js/w3-include-HTML.js"></script>
        <script src="js/main-menu.js"></script>
        <script src="js/template.js"></script>

    </body>
</html>