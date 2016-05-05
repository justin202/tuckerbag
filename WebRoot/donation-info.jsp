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

        <!-- Page Title -->&lt;<div class="section">
	    	<div class="container">
				<div class="row">
					<div class="col-sm-12">
                                            <div
                                                class = "col-sm-2"></div>
                                            <div class="col-sm-8" style="background: whitesmoke">
                                                <h1>Congratulations ${d.fullName }</h1>
                                                <h2>You have posted a collection request</h2>
                                                <h5>Your Request information is as follows</h5>
                                                <div class="table-responsive">
                                                <table class="table table-stripped" align="cneter">
                                                    <thead>
                                                        <tr>
                                                            <td>
                                                                <b>Table fields</b>
                                                            </td>
                                                            <td>
                                                                <b>Information</b>
                                                            </td>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr>
                                                        <td>Name</td>
                                                        <td><s:property value="d.fullName"/></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Community Garden Name</td>
                                                        <td><s:property value="d.commGardenName"/></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Your Address</td>
                                                        <td>
                                                            <table class="table" style="background: whitesmoke">
                                                                <tr>
                                                                    <td>
                                                                        Street
                                                                    </td>
                                                                    <td>
                                                                        <s:property value="d.street"/>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        Suburb
                                                                    </td>
                                                                    <td><s:property value="d.suburb"/></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        Postal Code
                                                                    </td>
                                                                    <td>
                                                                        <s:property value="d.postCode"/>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Donated Product</td>
                                                        <td><s:property value="d.product"/></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Product Amount with unit</td>
                                                        <td><s:property value="d.amount"/> <s:property value="d.unit"/></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Date and time range for the collection</td>
                                                        <td><s:property value="d.date"/>/<s:property value="d.timeRange"/></td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                             </div>
                                            </div>
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