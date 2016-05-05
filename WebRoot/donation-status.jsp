<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
		<div class="mainmenu-wrapper">
			<div class="container">
				<div class="menuextras">
					<div class="extras">
						<ul>
							<s:if test="#session.user==null">
								<li>
									<a href="register.jsp">Register</a>
								</li>
								<li>
									<a href="login.jsp">Login</a>
								</li>
							</s:if>
							<s:else>

								<div class="dropdown choose-country">
									<a class="#" data-toggle="dropdown" href="#">Hello,
										${session.user.firstName }</a>
									<ul class="dropdown-menu" role="menu">
										<s:if test="#session.user.userType=='Gardener'">
											<li role="menuitem">
												<a href="donation!getDonationListByEmail.action">Dashboard</a>
											</li>
										</s:if>
										<s:else>
											<li role="menuitem">
												<a href="donation!getDonatioList.action">Dashboard</a>
											</li>
										</s:else>
									</ul>
								</div>

								<!-- <li>Hello, ${session.user.firstName }</li> -->
							</s:else>
						</ul>
					</div>
				</div>
				<nav id="mainmenu" class="mainmenu">
				<ul>
					<li class="logo-wrapper">
						<a href="index.jsp"><img src="img/mPurpose-logo.png"
								alt="Multipurpose Twitter Bootstrap Template"> </a>
					</li>
					<li class="active">
						<a href="index.jsp">Home</a>
					</li>
					<li>
						<a href="community_garden!getAllCommunityGardens.action">Search
							Gardens</a>
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

		<!-- Page Title -->
		<div class="section section-breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<h1>
							Donation Details
						</h1>
					</div>
				</div>
			</div>
		</div>

		<div class="section">
			<div class="container">
				<div class="row">

					<!-- Donation Information -->
					<div class="col-sm-8">
						<div class="portfolio-item">
							<div class="portfolio-item-description">
								<div style="text-align: center">
									<h2>
										Donation Information
									</h2>
									<h3>
										Delivery Date: ${d.date }, ${d.timeRange }
									</h3>
									<h4>
										<b>Name of the Donator: ${d.fullName }</b>
									</h4>
								</div>
								<div class="row">
									<div class="col-sm-1"></div>
									<div class="col-sm-5" style="border-right: .1em solid">
										<h5 style="text-align: center; font-size: 1.2em">
											<u>Donation Location</u>
										</h5>
										<ul class="no-list-style">
											<li>
												<b>Street Address:</b> ${d.street }
											</li>
											<li>
												<b>Suburb:</b> ${d.suburb }
											</li>
											<li>
												<b>Postal Code:</b> ${d.postCode }
											</li>
										</ul>
									</div>

									<div class="col-sm-5">
										<h5 style="text-align: center; font-size: 1.2em">
											<u>Donating Product</u>
										</h5>
										<ul class="no-list-style">
											<li>
												<b>Product Name:</b> ${d.product }
											</li>
											<li>
												<b>Product Amount:</b> ${d.amount } ${d.unit }
											</li>
										</ul>
									</div>

								</div>
							</div>
						</div>
					</div>


					<div class="col-sm-4">
						<div class="portfolio-item">
							<div class="portfolio-item-description">
								<h2 style="text-align: center">
									Donation Status
								</h2>
								<h3 style="margin: auto; width: 90%">
									Donation Id: ${d.donationID }
								</h3>
								<ul class="no-list-style"
									style="text-align: left; margin: auto; width: 90%">

									<li>
										<form action="donation!changeStatus.action?">
											<input type="text" name="id" value="${d.donationID }" style="visibility:hidden"></label>
											<br/>
											<b>Status:</b><br/>
										<s:if test="d.status=='Accepted'">
											<input type="radio" name="status" value="Accepted" Checked>
											Accepted
											<br>
											<input type="radio" name="status" value="In process">
											In process
											<br>
											<input type="radio" name="status" value="Completed">
											Completed
											<br />
										</s:if>
										<s:elseif test="d.status=='In process'">
											<input type="radio" name="status" value="Accepted">
											Accepted
											<br>
											<input type="radio" name="status" value="In process" Checked>
											In process
											<br>
											<input type="radio" name="status" value="Completed">
											Completed
											<br />
										</s:elseif>
										<s:elseif test="d.status=='Completed'">
											<input type="radio" name="status" value="Accepted">
											Accepted
											<br>
											<input type="radio" name="status" value="In process" >
											In process
											<br>
											<input type="radio" name="status" value="Completed" Checked>
											Completed
											<br />
										</s:elseif>
											
									</li>


								</ul>

								<div class="span7 text-center">
								<s:if test="#session.user.userType!='Gardener'">
									<button type="submit" class="btn btn-large btn-primary">
										Save
									</button>
								</s:if>
								</div>
								</form>
							</div>
						</div>
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
	window.jQuery || document.write('__tag_305$43_<\/script>')
</script>
		<script src="js/bootstrap.min.js"></script>
		<script src="http://cdn.leafletjs.com/leaflet-0.5.1/leaflet.js"></script>
		<script src="js/jquery.fitvids.js"></script>
		<script src="js/jquery.sequence-min.js"></script>
		<script src="js/jquery.bxslider.js"></script>
		<script src="js/main-menu.js"></script>
		<script src="js/template.js"></script>

	</body>
</html>