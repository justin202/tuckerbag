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
    </head>
    <body>
    <!-- Navigation & Logo-->
        <div w3-include-html="header.html"></div>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->
        

        <!-- Page Title -->
		<div class="section section-breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<h1><s:property value="plant.plantName"/></h1>
					</div>
				</div>
			</div>
		</div>
        
        <div class="section">
	    	<div class="container">
				<div class="row">
					<!-- Image Column -->
					<div class="col-sm-6">
						<div class="portfolio-item">
							<div class="portfolio-image">
								<a href="#"><img src="img/plant/${plant.imagePath }" alt="Project Name"></a>
							</div>
						</div>
					</div>
					<!-- End Image Column -->
					<!-- Project Info Column -->
					<div class="portfolio-item-description col-sm-6">
						<ul class="no-list-style">
							<li><b>Soil:</b> <s:property value="plant.soilType"/></li>
							<li><b>Position:</b> <s:property value="plant.position"/></li>
							<li><b>Frost Tolerant:</b> <s:property value="plant.frostTolerant"/></li>
							<li><b>Feeding:</b> <s:property value="plant.feeding"/></li>
							<li><b>Sow and Plant:</b> <s:property value="plant.sowAndPlant"/></li>
							<li><b>Notes:</b> <s:property value="plant.notes"/></li>
							<li><b>Harvesting:</b> <s:property value="plant.harvesting"/></li>
							<li><b>Season to Grow:</b> <s:property value="plant.season"/></li>
						</ul>
					</div>
					<!-- End Project Info Column -->
				</div>
				
				<!-- Related Soil Type -->
				<h3>Soil Type</h3>
				<div class="row">
					<div class="col-md-4 col-sm-6">
						<div class="portfolio-item">
							<div class="portfolio-image">
								<a href="#"><img src="img/soil-type/${plantSoilType.imagePath }" alt="Project Name"></a>
							</div>
							<div class="portfolio-info-fade">
								<ul>
									<li class="portfolio-project-name">${plantSoilType.name }</li>
									<li class="read-more"><a href="soil!getSoilTypeByID.action?id=${plantSoilType.typeID }" class="btn">Read more</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- End Related Soil Type -->
				
				<!-- Pest -->
				<s:if test="0==plantPests.size">
				</s:if>
				<s:else>
					<h3>Pest</h3>
					<div class="row">
						<s:iterator value="plantPests" id="p">
							<div class="col-md-4 col-sm-6">
								<div class="portfolio-item">
									<div class="portfolio-image">
										<a href="#"><img src="img/Pest/${p.imagePath }" alt="Project Name"></a>
									</div>
									<div class="portfolio-info-fade">
										<ul>
											<li class="portfolio-project-name"><s:property value="#p.pestName"/></li>
											<li>Where Found: <s:property value="#p.whereFound"/></li>
											<li class="read-more"><a href="pest!getPestByID.action?id=${p.pestID }" class="btn">Read more</a></li>
										</ul>
									</div>
								</div>
							</div>
						</s:iterator>
					</div>
				</s:else>
				<!-- End Related Projects -->
				
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
    	<script src="js/w3-include-HTML.js"></script>
        <script src="js/jquery.bxslider.js"></script>
        <script src="js/main-menu.js"></script>
        <script src="js/template.js"></script>

    </body>
</html>