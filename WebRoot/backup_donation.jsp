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
		<title>TuckerBag- A Platform for Community Gardeners</title>
		<meta name="description"
			content="TuckerBag- A Platform for Community Gardeners">
		<meta name="viewport" content="width=device-width">

		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/icomoon-social.css">
		<link
			href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,600,800'
			rel='stylesheet' type='text/css'>

		<!--Included bu CBI-->

		<link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet"
			media="screen">

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
							Food Donation Form
						</h1>
					</div>
				</div>
			</div>
		</div>

		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div class="tabbable">
							<!-- Tabs -->
							<ul class="nav nav-tabs product-details-nav">
								<li class="active">
									<a href="#tab1" data-toggle="tab">Collect</a>
								</li>
								<li>
									<a href="#tab2" data-toggle="tab">Deliver</a>
								</li>
							</ul>
							<!-- Tab Content (Full Description) -->
							<div class="tab-content product-detail-info">
								<!-- first tab -->
								<div class="tab-pane active" id="tab1">
									<div>
										<div class="basic-login">
											<form action="donation!storeDonationForm.action"
												class="form-horizontal" role="form">
												<div class="form-group">

													<label for="register-username">
														<i class="icon-user"></i>
														<b>Name</b>
													</label>
													<input class="form-control" id="register-username"
														type="text" placeholder="Enter first name" name="name">
													<label for="register-password">
														<i class="icon-lock"></i>
														<b>Community Garden</b>
													</label>
													<select class="form-control" id="prependedInput"
														name="commName">
														<option value="garden 1">
															Please select
														</option>
														<s:iterator value="cglist" id="cg">
															<option>
																<s:property value="#cg.commName" />
															</option>
														</s:iterator>
													</select>
													<label for="register-password2">
														<i class="icon-lock"></i>
														<b>Product</b>
													</label>
													<input class="form-control" id="register-password2"
														type="text" placeholder="Enter the product name"
														name="product">
													<div>
														<label for="register-password">
															<i class="icon-lock"></i>
															<b>Amount</b>
														</label>
													</div>
													<div class="amount-left">
														<input class="form-control" style="width: 100%"
															id="register-password2" type="text"
															placeholder="Enter Product Amount" name="amount">
													</div>
													<div class="amount-right">
														<select class="form-control"
															style="width: 100%; padding-right: 50%"
															id="prependedInput" name="unit">
															<option>
																Please select
															</option>
															<option value="kg">
																Kilogram
															</option>
															<option value="lb">
																Pounds
															</option>
														</select>
													</div>

													<div>
														<label for="register-username">
															<i class="icon-user"></i>
															<b>Location</b>
														</label>
														<input class="form-control" id="register-username"
															type="text" name="location"
															placeholder="Enter your location(street,suburb)">
													</div>
													<label for="dtp_input1">
														Date & Time
													</label>
													<div class="input-group date form_datetime col-md-5"
														data-date="1979-09-16T05:25:07Z"
														data-date-format="dd MM yyyy - HH:ii p"
														data-link-field="dtp_input1" style="width: 100%">
														<input class="form-control" size="16" type="text" readonly
															name="time">
														<span class="input-group-addon"><span
															class="glyphicon glyphicon-remove"></span> </span>
														<span class="input-group-addon"><span
															class="glyphicon glyphicon-th"></span> </span>
													</div>
													<input type="hidden" id="dtp_input1" value="" />
													<br />

													<div class="btn-right">
														<button class="btn" type="submit">
															Collect
														</button>
													</div>

												</div>
											</form>

										</div>
									</div>
								</div>
								<!-- second tab -->
								<div class="tab-pane" id="tab2">
									<div>
										<div class="basic-login">
											<form action="donation!storeDonationForm.action"
												class="form-horizontal" role="form">
												<div class="form-group">

													<label for="register-username">
														<i class="icon-user"></i>
														<b>Name</b>
													</label>
													<input class="form-control" id="register-username"
														type="text" placeholder="Enter first name" name="name">
													<label for="register-password">
														<i class="icon-lock"></i>
														<b>Community Garden</b>
													</label>
													<select class="form-control" id="prependedInput"
														name="commName">
														<option value="garden 1">
															Please select
														</option>
														<s:iterator value="cglist" id="cg">
															<option>
																<s:property value="#cg.commName" />
															</option>
														</s:iterator>
													</select>
													<label for="register-password2">
														<i class="icon-lock"></i>
														<b>Product</b>
													</label>
													<input class="form-control" id="register-password2"
														type="text" placeholder="Enter the product name"
														name="product">
													<div>
														<label for="register-password">
															<i class="icon-lock"></i>
															<b>Amount</b>
														</label>
													</div>
													<div class="amount-left">
														<input class="form-control" style="width: 100%"
															id="register-password2" type="text"
															placeholder="Enter Product Amount" name="amount">
													</div>
													<div class="amount-right">
														<select class="form-control"
															style="width: 100%; padding-right: 50%"
															id="prependedInput" name="unit">
															<option>
																Please select
															</option>
															<option value="kg">
																Kilogram
															</option>
															<option value="lb">
																Pounds
															</option>
														</select>
													</div>

													<div class="btn-right">
														<button class="btn" type="submit">
															Collect
														</button>
													</div>

												</div>
											</form>

										</div>
									</div>
								</div>

							</div>
						</div>
					</div>


					<!--<div class="col-sm-6 col-sm-offset-1 social-login">
						<p>You can use your Facebook or Twitter for registration</p>
						<div class="social-login-buttons">
							<a href="#" class="btn-facebook-login">Use Facebook</a>
							<a href="#" class="btn-twitter-login">Use Twitter</a>
						</div>-->
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
		<script>
	window.jQuery || document.write('__tag_363$43_<\/script>')
</script>
		<script src="js/bootstrap.min.js"></script>
		<script src="http://cdn.leafletjs.com/leaflet-0.5.1/leaflet.js"></script>
		<script src="js/jquery.fitvids.js"></script>
		<script src="js/jquery.sequence-min.js"></script>
		<script src="js/jquery.bxslider.js"></script>
		<script src="js/w3-include-HTML.js"></script>
		<script src="js/main-menu.js"></script>
		<script src="js/template.js"></script>

		<script type="text/javascript" src="js/bootstrap-datetimepicker.js"
			charset="UTF-8"></script>
		<script type="text/javascript"
			src="js/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
		<script type="text/javascript">
	$('.form_datetime').datetimepicker( {
		//language:  'fr',
		weekStart : 1,
		todayBtn : 1,
		autoclose : 1,
		todayHighlight : 1,
		startView : 2,
		forceParse : 0,
		showMeridian : 1
	});
	$('.form_date').datetimepicker( {
		language : 'en',
		weekStart : 1,
		todayBtn : 1,
		autoclose : 1,
		todayHighlight : 1,
		startView : 2,
		minView : 2,
		forceParse : 0
	});
	$('.form_time').datetimepicker( {
		language : 'en',
		weekStart : 1,
		todayBtn : 1,
		autoclose : 1,
		todayHighlight : 1,
		startView : 1,
		minView : 0,
		maxView : 1,
		forceParse : 0
	});
</script>



	</body>
</html>