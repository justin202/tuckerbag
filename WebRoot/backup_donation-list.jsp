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
<!--[if gt IE 8]><!-->
<html class="no-js">
	<!--<![endif]-->
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>mPurpose - Multipurpose Feature Rich Bootstrap Template</title>
		<meta name="description" content="">
		<meta name="viewport" content="width=device-width">

		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/icomoon-social.css">
		<link
			href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,600,800'
			rel='stylesheet' type='text/css'>

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
						<h1>
							Events
						</h1>
					</div>
				</div>
			</div>
		</div>

		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<table class="events-list table-striped">
							<tr>
								<td>
									<div align="center">
										<h4>
											<b>Date</b>
										</h4>
									</div>
								</td>
								<td>
									<div align="center">
										<h4>
											<b>Time Period</b>
										</h4>
									</div>
								</td>
								<td align="center">
									<h4>
										<b>Community Garden</b>
									</h4>
								</td>
								<td align="center">
									<h4>
										<b>Product</b>
									</h4>
								</td>
								<td align="center">
									<h4>
										<b>Location</b>
									</h4>
								</td>
								<td align="center">
									<h4>
										<b>Donor</b>
									</h4>
								</td>
                                                                <td align="center">
									<h4>
                                                                            <b>&nbsp;</b>
									</h4>
								</td>
							</tr>
							<!-- Donation List -->
							<s:iterator value="dlist" id="d">
								<tr>
									<td align="center">
										<div class="event-date">
											<div class="event-day">
												<s:property value="#d.date" />
											</div>
										</div>
									</td>
									<td align="center">
										<s:property value="#d.timeRange"/>
									</td>
									<td align="center">
										<s:property value="#d.commGardenName" />
									</td>
									<td align="center">
										<div>
											<s:property value="#d.product" />
											:
											<s:property value="#d.amount" />
											<s:property value="#d.unit" />
										</div>
									</td>
									<td align="center">
										<s:property value="#d.street" /> <s:property value="#d.suburb"/>
									</td>
									<td align="center">
										<s:property value="#d.fullName" />
									</td>
									<td>
										<a href="order!generateOrderID.action" class="btn btn-success" role="button">Accept</a>
									</td>
								</tr>
							</s:iterator>
							<!-- End Donation List  -->
						</table>
					</div>
				</div>
			</div>
		</div>

		<!-- Footer -->
		<div class="footer">
			<div class="container">
				<div class="row">
					<div class="col-footer col-md-3 col-xs-6">
						<h3>
							Our Latest Work
						</h3>
						<div class="portfolio-item">
							<div class="portfolio-image">
								<a href="page-portfolio-item.html"><img
										src="img/portfolio6.jpg" alt="Project Name"> </a>
							</div>
						</div>
					</div>
					<div class="col-footer col-md-3 col-xs-6">
						<h3>
							Navigate
						</h3>
						<ul class="no-list-style footer-navigate-section">
							<li>
								<a href="page-blog-posts.html">Blog</a>
							</li>
							<li>
								<a href="page-portfolio-3-columns-2.html">Portfolio</a>
							</li>
							<li>
								<a href="page-products-3-columns.html">eShop</a>
							</li>
							<li>
								<a href="page-services-3-columns.html">Services</a>
							</li>
							<li>
								<a href="page-pricing.html">Pricing</a>
							</li>
							<li>
								<a href="page-faq.html">FAQ</a>
							</li>
						</ul>
					</div>

					<div class="col-footer col-md-4 col-xs-6">
						<h3>
							Contacts
						</h3>
						<p class="contact-us-details">
							<b>Address:</b> 123 Fake Street, LN1 2ST, London, United Kingdom
							<br />
							<b>Phone:</b> +44 123 654321
							<br />
							<b>Fax:</b> +44 123 654321
							<br />
							<b>Email:</b>
							<a href="mailto:getintoutch@yourcompanydomain.com">getintoutch@yourcompanydomain.com</a>
						</p>
					</div>
					<div class="col-footer col-md-2 col-xs-6">
						<h3>
							Stay Connected
						</h3>
						<ul class="footer-stay-connected no-list-style">
							<li>
								<a href="#" class="facebook"></a>
							</li>
							<li>
								<a href="#" class="twitter"></a>
							</li>
							<li>
								<a href="#" class="googleplus"></a>
							</li>
						</ul>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="footer-copyright">
							&copy; 2013 mPurpose. All rights reserved.
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Javascripts -->
		<script
			src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
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