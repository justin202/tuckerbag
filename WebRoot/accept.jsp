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
							Password Reset
						</h1>
					</div>
				</div>
			</div>
		</div>

		<div class="section">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div class="col-sm-2"></div>
						<div class="col-sm-8" style="background: whitesmoke">
							<h1>
								Thank you, ${session.user.firstName}
							</h1>
							<h3>
								You have accepted a collection request
							</h3>
							<h5>
								Your Collection Id is: ${orderID }
							</h5>
							<h5>
								A confirmation email will be sent to your email
							</h5>
							<h5>
								in a short while
							</h5>
							<br/><br/>
							Go to "Dashboard" after 3 seconds<br/>
							If it doesn't, click <a href="donation!getDonatioList.action">Here</a>!
							<%
								response.setHeader("refresh", "3;URL=donation!getDonatioList.action");
							 %>

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
		<script src="js/w3-include-HTML.js"></script>
		<script src="js/main-menu.js"></script>
		<script src="js/template.js"></script>

	</body>
</html>