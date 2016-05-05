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
		
		<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>  
        <script type="text/javascript">  
            var map;  
            
            
            function initialize() {  
            	
			  var Melbourne = {lat: -37.816029, lng: 144.965759};
			  var map = new google.maps.Map(document.getElementById('map_canvas'), {
				zoom: 8,
				center: Melbourne
			  });

			  //<s:iterator value="cglist" id="cg" status="I">
			  	
			  //	markers["Location_${I.index}"] = {commID:"${cg.commID}", commName:"${cg.commName}", address:"${cg.address}", suburb:"${cg.suburb}", postCode:"${cg.postCode}", timings:"${cg.timings}", latitude:"${cg.latitude}", longitude:"${cg.longitude}"};
			  	
			  //</s:iterator>
			  
			  //alert(markers["Location_4"].commName);
			  
			  // test gardens info
			  var markers = {};
			  var contents = {};
			  var infowindows = {};
			  var lastInfoWindow;
			  	<s:if test="%{cglist.isEmpty()}">
			  		alert("There is no community garden in this area!");
				</s:if>
				<s:else>
				  <s:iterator value="cglist" id="cg" status="I">
				  	contents["Location_${I.index}"] = '<div id="content">'+
					  '<div id="siteNotice">'+
					  '</div>'+
					  '<div id="bodyContent">'+
					  '<p><b><u><a href="community_garden!getCommunityGardenByID.action?id=${cg.commID}">${cg.commName}</a></u></b></p>'+
					  '</div>'+
					  '</div>';
	
					  infowindows["Location_${I.index}"] = new google.maps.InfoWindow({
						content: contents["Location_${I.index}"]
					  });
		
					  markers["Location_${I.index}"] = new google.maps.Marker({
						position: new google.maps.LatLng(${cg.latitude}, ${cg.longitude}),
						map: map,
						title: '${cg.commName}'
					  });
					  markers["Location_${I.index}"].addListener('click', function() {
					    if(lastInfoWindow){
						    lastInfoWindow.close();
					    }
						infowindows["Location_${I.index}"].open(map, markers["Location_${I.index}"]);
						lastInfoWindow = infowindows["Location_${I.index}"];
					  });
					  
				  </s:iterator>
				</s:else>
				  
            }  
        </script>
		
    </head>
    <body onload="initialize()">
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
                                            <div class="col-md-6">
						<h1><font color="#FFFFFF"> Search Community Garden Near You</font></h1>
                                            </div>
                                            <div class="col-md-6">
						<form action="community_garden!searchCommunityGarden.action">
							<div class="input-group">
								<input class="form-control input-md" id="appendedInputButtons" name="sPara" type="text" placeholder="Enter Suburb or postcode" value="${parameter }">
								<span class="input-group-btn">
									<button class="btn btn-md" type="submit">Search</button>
								</span>
							</div>
						</form>
                                            </div>
					</div>
				</div>
			</div>
		</div>
        
        <!-- Posts List -->
        <div class="section blog-posts-wrapper">
	    	<div class="container">
				<div class="row">
					<!-- Post -->
					<div style="width: auto; height: 500px;">  
						<!--google map-->  
						<div id="map_canvas" style="width: 100%; height: 100%;">  
                      
						</div>  
					</div>
				</div>
			</div>
	    </div>
		
	    <!-- End Posts List -->
			
	    <!-- Footer -->
	    <div class="footer">
	    	<div class="container">
		    	<div class="row">
		    		<div class="col-footer col-md-3 col-xs-6">
		    			<h3>Our Latest Work</h3>
		    			<div class="portfolio-item">
							<div class="portfolio-image">
								<a href="page-portfolio-item.html"><img src="img/portfolio6.jpg" alt="Project Name"></a>
							</div>
						</div>
		    		</div>
		    		<div class="col-footer col-md-3 col-xs-6">
		    			<h3>Navigate</h3>
		    			<ul class="no-list-style footer-navigate-section">
		    				<li><a href="plant!getAllPlants.action">Plant Guide</a></li>
		    				<li><a href="pest!getAllPest.action">Pest Control</a></li>
		    				<li><a href="soil!getAllSoilType.action">Soil Type</a></li>
		    				<li><a href="aboutUs.jsp">About Us</a></li>
		    				<li><a href="faq.jsp">FAQ</a></li>
		    			</ul>
		    		</div>
		    		
		    		<div class="col-footer col-md-4 col-xs-6">
		    			<h3>Contacts</h3>
		    			<p class="contact-us-details">
	        				<b>Address:</b> 900 Dandenong Rd, Caufield East VIC, 3145<br/>
	        				<b>Phone:</b> +61 451 990223<br/>
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
		    			<div class="footer-copyright">&copy; 2016 CBI. All rights reserved.</div>
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
        <script src="js/w3-include-HTML.js"></script>
        <script src="js/main-menu.js"></script>
        <script src="js/template.js"></script>

    </body>
</html>