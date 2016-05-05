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

		<link rel="stylesheet" href="css/leaflet.css" />
		<!--[if lte IE 8]>
		    <link rel="stylesheet" href="css/leaflet.ie.css" />
		<![endif]-->
		<link rel="stylesheet" href="css/main.css">

		<script src="js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
		<script src="js/w3-include-HTML.js"></script>
	</head>
	<body class="register-Background">
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
							Registration
						</h1>
					</div>
				</div>
			</div>
		</div>

		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						<div>
							<!-- Start Formoid form-->
							<link rel="stylesheet"
								href="donation_files/formoid1/formoid-solid-light-green.css"
								type="text/css" />
							<script type="text/javascript"
								src="donation_files/formoid1/jquery.min.js"></script>
							<form class="formoid-solid-light-green"
								  action="user!register.action"
								style="background-color: #FFFFFF; max-width: 480px; min-width: 150px"
								method="post">

								<div class="element-separator">
									<hr>
									<h3 class="section-break-title">
										Profile Information
									</h3>
								</div>

								<div class="element-email">
									<label class="title">
										<span class="required" style="color: red">* All the
											fields are required</span>
									</label>
									<div class="item-cont">
										<input class="large" type="email" name="email"
											required="required" placeholder="Email" />
										<span class="icon-place"></span>
									</div>
								</div>
								<div class="element-password">
									<div class="item-cont">
										<input class="large" type="password" name="password"
											required="required" placeholder="Password" />
										<span class="icon-place"></span>
									</div>
								</div>
								<div class="element-password">

									<div class="item-cont">
										<input class="large" type="password" name="re-password"
											required="required" placeholder="Please Retype Password" />
										<span class="icon-place"></span>
									</div>
								</div>
								<div class="element-separator">
									<hr>
									<h3 class="section-break-title">
										Personal Information
									</h3>
								</div>
								<div class="element-input" title="Please Enter Your First name">
									<label class="title">
										<span class="required" style="color: red">* All the
											fields are required</span>
									</label>
									<div class="item-cont">
										<input class="large" type="text" name="firstName"
											required="required"
											placeholder="Please Enter Your First name" />
										<span class="icon-place"></span>
									</div>
								</div>
								<div class="element-input" title="Please Enter Your Last name">

									<div class="item-cont">
										<input class="large" type="text" name="lastName"
											required="required" placeholder="Please Enter Your Last name" />
										<span class="icon-place"></span>
									</div>
								</div>
								<div class="element-select">
									<div class="item-cont">
										<div class="large">
											<span> <select name="gender" required="required">

													<option>
														Gender
													</option>
													<option value="Male">
														Male
													</option>
													<option value="Female">
														Female
													</option>
												</select> <i></i> <span class="icon-place"></span> </span>
										</div>
									</div>
								</div>
								<!--<div class="element-separator">
                                                                                                    <hr>
                                                                                                    <h3 class="section-break-title">Donation Location</h3>
                                                                                                </div>
                                                                                                <div class="element-checkbox">
                                                                                                    <label class="title"></label>
                                                                                                    <div class="column column1">
                                                                                                        <label>
                                                                                                            <input type="checkbox" name="checkbox[]" value="Use Address of The Community Garden"/>
                                                                                                            <span>Use Address of The Community Garden</span>
                                                                                                        </label>
                                                                                                    </div>
                                                                                                    <span class="clearfix"></span>
                                                                                                </div>-->
								<div class="element-address">
									<label class="title"></label>
									<span class="addr1"> <input placeholder="Street Address"
											type="text" name="street" /> <span
										class="icon-place"></span> </span>
									<span class="addr2"> <input placeholder="Suburb"
											type="text" name="suburb" /> <span
										class="icon-place"></span> </span>
									<!--
                                                                                                    <span class="city">
                                                                                                        <input placeholder="City" type="text" name="address[city]" />
                                                                                                        <span class="icon-place"></span>

                                                                                                    </span>
                                                                                                    -->

									<span class="zip"> <input
											placeholder="Postal / Zip Code" type="text"
											name="postCode" /> <span class="icon-place"></span> </span>


									<div class="submit">
										<input type="submit" value="Register" />
									</div>
							</form>
							<!--<p class="frmd"><a href="http://formoid.com/v29.php">php form</a> Formoid.com 2.9</p><script type="text/javascript" src="donation_files/formoid1/formoid-solid-light-green.js"></script>
                                                                                            <!-- Stop Formoid form-->
						</div>
					</div>

				</div>
			</div>
		</div>
		</div>

		<!-- Footer -->
		<div w3-include-html="footer.html"></div>

		<!-- Javascripts -->
		<script
			src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
		<script>window.jQuery || document.write('<script src="js/jquery-1.9.1.min.js"><\/script>')</script>
		<script src="js/bootstrap.min.js"></script>
		<script src="http://cdn.leafletjs.com/leaflet-0.5.1/leaflet.js"></script>
		<script src="js/jquery.fitvids.js"></script>
		<script src="js/jquery.sequence-min.js"></script>
		<script src="js/jquery.bxslider.js"></script>
		<script src="js/main-menu.js"></script>
		<script src="js/template.js"></script>
		<script src="js/w3-include-HTML.js"></script>

	</body>
</html>