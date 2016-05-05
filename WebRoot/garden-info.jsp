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
        <title>mPurpose - Multipurpose Feature Rich Bootstrap Template</title>
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
          
            function initMap() {
			  var location = {lat: ${cg.latitude}, lng: ${cg.longitude}};
			  var map = new google.maps.Map(document.getElementById('contact-us-map'), {
				zoom: 13,
				center: location
			  });

//			  var contentString = '<div id="content">'+
//				  '<div id="siteNotice">'+
//				  '</div>'+
//				  '<h1 id="firstHeading" class="firstHeading">Uluru</h1>'+
//				  '<div id="bodyContent">'+
//				  '<p><b>Uluru</b>, also referred to as <b>Ayers Rock</b>, is a large ' +
//				  'sandstone rock formation in the southern part of the '+
//				  'Northern Territory, central Australia. It lies 335&#160;km (208&#160;mi) '+
//				  'south west of the nearest large town, Alice Springs; 450&#160;km '+
//				  '(280&#160;mi) by road. Kata Tjuta and Uluru are the two major '+
//				  'features of the Uluru - Kata Tjuta National Park. Uluru is '+
//				  'sacred to the Pitjantjatjara and Yankunytjatjara, the '+
//				  'Aboriginal people of the area. It has many springs, waterholes, '+
//				  'rock caves and ancient paintings. Uluru is listed as a World '+
//				  'Heritage Site.</p>'+
//				  '<p>Attribution: Uluru, <a href="https://en.wikipedia.org/w/index.php?title=Uluru&oldid=297882194">'+
//				  'https://en.wikipedia.org/w/index.php?title=Uluru</a> '+
//				  '(last visited June 22, 2009).</p>'+
//				  '</div>'+
//				  '</div>';

//			  var infowindow = new google.maps.InfoWindow({
//				content: contentString
//			  });

			  var marker = new google.maps.Marker({
				position: location,
				map: map,
				title: '${cg.commName}'
			  });
//			  marker.addListener('click', function() {
//				infowindow.open(map, marker);
//			  });
		}

        </script>  
        
        
    </head>
    <body onload="initMap()">
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->
        

        <!-- Navigation & Logo-->
        <div w3-include-html="header.html"></div>

        <!-- Page Title -->
		<div class="section section-breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<h1>Community Garden Detail</h1>
					</div>
				</div>
			</div>
		</div>
        
        <div class="section">
	    	<div class="container">
	        	<div class="row">
	        		<div class="col-sm-7">
	        			<!-- Map -->
	        			<div id="contact-us-map">

	        			</div>
	        			<!-- End Map -->
	        			<!-- Contact Info 
	        			<p class="contact-us-details">
	        				<b>Address:</b> 123 Fake Street, LN1 2ST, London, United Kingdom<br/>
	        				<b>Phone:</b> +44 123 654321<br/>
	        				<b>Fax:</b> +44 123 654321<br/>
	        				<b>Email:</b> <a href="mailto:getintoutch@yourcompanydomain.com">getintoutch@yourcompanydomain.com</a>
	        			</p>
	        			-->
	        			<!-- End Contact Info -->
	        		</div>
	        		<div class="col-sm-5">
	        			<!-- Contact Form -->
	        			<h3>${cg.commName }</h3>
	        			<div class="contact-form-wrapper">
		        			<form class="form-horizontal" role="form">
		        				 <div class="form-group">
		        				 	<label for="Name" class="col-sm-3 control-label"><b>Address:</b></label>
		        				 	<div class="col-sm-9">
			        				 	<label>${cg.address }</label>
										<!-- <input class="form-control" id="Name" type="text" placeholder=""> -->
									</div>
								</div>
								<div class="form-group">
									<label for="contact-email" class="col-sm-3 control-label"><b>Suburb:</b></label>
									<div class="col-sm-9">
			        				 	<label>${cg.suburb }</label>
										<!-- <input class="form-control" id="contact-email" type="text" placeholder=""> -->
									</div>
								</div>
								<div class="form-group">
									<label for="contact-message" class="col-sm-3 control-label"><b>Post Code:</b></label>
									<div class="col-sm-9">
			        				 	<label>${cg.postCode }</label>
									</div>
								</div>
								<div class="form-group">
									<label for="contact-message" class="col-sm-3 control-label"><b>Open Time:</b></label>
									<div class="col-sm-9">
										<label>${cg.timings }</label>
									</div>
								</div>
		        			</form>
		        		</div>
		        		<!-- End Contact Info -->
	        		</div>
	        	</div>
	    	</div>
	    </div>

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