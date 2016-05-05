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
		<link href="build/css/bootstrap-datetimepicker.css" rel="stylesheet">

		<link rel="stylesheet" href="css/leaflet.css" />
		<!--[if lte IE 8]>
		    <link rel="stylesheet" href="css/leaflet.ie.css" />
		<![endif]-->
		<link rel="stylesheet" href="css/main.css">

		<link
			href="//netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"
			rel="stylesheet">

		<script src="js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
		<script type="text/javascript">
			var commID;
			var street;
			var suburb;
			var postCode;
			function selectedGarden(){
				var select = document.getElementById("selectComm");
				commID = select.options[select.selectedIndex].id;
				//alert(commID);
			    <s:iterator value="cglist" id="cg" status="I">
			  	
			  		if(commID == ${cg.commID}){
			  			street="${cg.address}";
			  			suburb="${cg.suburb}";
			  			postCode="${cg.postCode}";
			  		}
			  		
			    </s:iterator>
			    //alert(street);
			}
			
			function check(vi){
				var addressbar = document.getElementById("street");
				var suburbbar = document.getElementById("suburb");
				var postCodebar = document.getElementById("postCode");
				if(vi.checked){
					addressbar.value = street;
					suburbbar.value = suburb;
					postCodebar.value = postCode;
				}else if(!vi.checked){
					addressbar.value="";
					suburbbar.value="";
					postCodebar.value="";
				}
			} 
		</script>
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
							<div class="tab-content">
								<!-- first tab -->
								<div class="tab-pane active" id="tab1">
									<div>
										<div class="basic-login">
											<!-- Start Formoid form-->
											<link rel="stylesheet"
												href="donation_files/formoid1/formoid-solid-light-green.css"
												type="text/css" />
											<script type="text/javascript"
												src="donation_files/formoid1/jquery.min.js"></script>
											<form class="formoid-solid-light-green"
												action="donation!storeDonationForm.action"
												style="background-color: #FFFFFF; max-width: 480px; min-width: 150px; margin: 0 auto"
												method="post">
												<div class="title">
													<h3 class="donation_title">
														Food Collection Form
													</h3>
												</div>
												<div class="element-separator">
													<hr>
													<h4 class="section-break-title">
														Personal Information
													</h4>
												</div>
												<div class="element-input"
													title="Please Enter Your Full name">
													<label class="title">
														<span class="required" style="color: red">* All the
															fields are required</span>
													</label>
													<div class="item-cont">
														<input class="large" type="text" name="fullName"
															required="required" placeholder="Full Name" />
														<span class="icon-place"></span>
													</div>
												</div>
												<div class="element-select">
													<label class="title">
														<span class="required">*</span>
													</label>
													<div class="item-cont">
														<div class="large">
															<span> <select name="commGardenName" id="selectComm"
																	required="required" onchange="selectedGarden()">

																	<option>
																		Select Community Garden
																	</option>
																	<s:iterator value="cglist" id="cg">
																		<option id=${cg.commID }>
																			<s:property value="#cg.commName" />
																		</option>
																	</s:iterator>
																</select> <i></i> <span class="icon-place"></span> </span>
														</div>
													</div>
												</div>
												<div class="element-email">

													<div class="item-cont">
														<input class="large" type="email" name="email"
															required="required" placeholder="Email" />
														<span class="icon-place"></span>
													</div>
												</div>
												<div class="element-separator">
													<hr>
													<h4 class="section-break-title">
														Donation Location
													</h4>
												</div>
												<div class="element-checkbox">
													<label class="title"></label>
													<div class="column column1">
														<label>
															<input type="checkbox" id="checkbox" onclick="check(this)"/>
															<span>Use Address of The Community Garden</span>
														</label>
													</div>
													<span class="clearfix"></span>
												</div>
												<div class="element-address">
													<label class="title"></label>
													<span class="addr1"> <input id="street"
															placeholder="Street Address" type="text" name="street" />
														<span class="icon-place"></span> </span>
													<span class="addr2"> <input placeholder="Suburb" id="suburb"
															type="text" name="suburb" /> <span class="icon-place"></span>

													</span>
													<!--
                                                                                                    <span class="city">
                                                                                                        <input placeholder="City" type="text" name="address[city]" />
                                                                                                        <span class="icon-place"></span>

                                                                                                    </span>
                                                                                                    -->
													<span class="zip"> <input id="postCode"
															placeholder="Postal / Zip Code" type="text"
															maxlength="15" name="postCode" /> <span
														class="icon-place"></span> </span>
													<!--<div class="country">
                                                                                                        <select name="address[country]" >
                                                                                                            <option selected="selected" value="" disabled="disabled">--- Select a country ---</option>
                                                                                                            <option value="United States">United States</option>
                                                                                                            <option value="United Kingdom">United Kingdom</option>
                                                                                                            <option value="Australia">Australia</option>
                                                                                                            <option value="Canada">Canada</option>
                                                                                                            <option value="France">France</option>
                                                                                                            <option value="New Zealand">New Zealand</option><option value="India">India</option><option value="Brazil">Brazil</option><option value="----" disabled="disabled">----</option><option value="Afghanistan">Afghanistan</option><option value="Aland Islands">Aland Islands</option><option value="Albania">Albania</option><option value="Algeria">Algeria</option><option value="American Samoa">American Samoa</option><option value="Andorra">Andorra</option><option value="Angola">Angola</option><option value="Anguilla">Anguilla</option><option value="Antarctica">Antarctica</option><option value="Antigua and Barbuda">Antigua and Barbuda</option><option value="Argentina">Argentina</option><option value="Armenia">Armenia</option><option value="Aruba">Aruba</option><option value="Austria">Austria</option><option value="Azerbaijan">Azerbaijan</option><option value="Bahamas">Bahamas</option><option value="Bahrain">Bahrain</option><option value="Bangladesh">Bangladesh</option><option value="Barbados">Barbados</option><option value="Belarus">Belarus</option><option value="Belgium">Belgium</option><option value="Belize">Belize</option><option value="Benin">Benin</option><option value="Bermuda">Bermuda</option><option value="Bhutan">Bhutan</option><option value="Bolivia">Bolivia</option><option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option><option value="Botswana">Botswana</option><option value="British Indian Ocean Territory">British Indian Ocean Territory</option><option value="Brunei Darussalam">Brunei Darussalam</option><option value="Bulgaria">Bulgaria</option><option value="Burkina Faso">Burkina Faso</option><option value="Burundi">Burundi</option><option value="Cambodia">Cambodia</option><option value="Cameroon">Cameroon</option><option value="Cape Verde">Cape Verde</option><option value="Cayman Islands">Cayman Islands</option><option value="Central African Republic">Central African Republic</option><option value="Chad">Chad</option><option value="Chile">Chile</option><option value="China">China</option><option value="Colombia">Colombia</option><option value="Comoros">Comoros</option><option value="Democratic Republic of the Congo">Democratic Republic of the Congo</option><option value="Republic of the Congo">Republic of the Congo</option><option value="Cook Islands">Cook Islands</option><option value="Costa Rica">Costa Rica</option><option value="Cote d'Ivoire">Cote d'Ivoire</option><option value="Croatia">Croatia</option><option value="Cuba">Cuba</option><option value="Cyprus">Cyprus</option><option value="Czech Republic">Czech Republic</option><option value="Denmark">Denmark</option><option value="Djibouti">Djibouti</option><option value="Dominica">Dominica</option><option value="Dominican Republic">Dominican Republic</option><option value="East Timor">East Timor</option><option value="Ecuador">Ecuador</option><option value="Egypt">Egypt</option><option value="El Salvador">El Salvador</option><option value="Equatorial Guinea">Equatorial Guinea</option><option value="Eritrea">Eritrea</option><option value="Estonia">Estonia</option><option value="Ethiopia">Ethiopia</option><option value="Faroe Islands">Faroe Islands</option><option value="Fiji">Fiji</option><option value="Finland">Finland</option><option value="Gabon">Gabon</option><option value="Gambia">Gambia</option><option value="Georgia">Georgia</option><option value="Germany">Germany</option><option value="Ghana">Ghana</option><option value="Gibraltar">Gibraltar</option><option value="Greece">Greece</option><option value="Grenada">Grenada</option><option value="Guatemala">Guatemala</option><option value="Guinea">Guinea</option><option value="Guinea-Bissau">Guinea-Bissau</option><option value="Guyana">Guyana</option><option value="Haiti">Haiti</option><option value="Honduras">Honduras</option><option value="Hong Kong">Hong Kong</option><option value="Hungary">Hungary</option><option value="Iceland">Iceland</option><option value="Indonesia">Indonesia</option><option value="Iran">Iran</option><option value="Iraq">Iraq</option><option value="Ireland">Ireland</option><option value="Israel">Israel</option><option value="Italy">Italy</option><option value="Jamaica">Jamaica</option><option value="Japan">Japan</option><option value="Jordan">Jordan</option><option value="Kazakhstan">Kazakhstan</option><option value="Kenya">Kenya</option><option value="Kiribati">Kiribati</option><option value="North Korea">North Korea</option><option value="South Korea">South Korea</option><option value="Kuwait">Kuwait</option><option value="Kyrgyzstan">Kyrgyzstan</option><option value="Laos">Laos</option><option value="Latvia">Latvia</option><option value="Lebanon">Lebanon</option><option value="Lesotho">Lesotho</option><option value="Liberia">Liberia</option><option value="Libya">Libya</option><option value="Liechtenstein">Liechtenstein</option><option value="Lithuania">Lithuania</option><option value="Luxembourg">Luxembourg</option><option value="Macedonia">Macedonia</option><option value="Madagascar">Madagascar</option><option value="Malawi">Malawi</option><option value="Malaysia">Malaysia</option><option value="Maldives">Maldives</option><option value="Mali">Mali</option><option value="Malta">Malta</option><option value="Marshall Islands">Marshall Islands</option><option value="Mauritania">Mauritania</option><option value="Mauritius">Mauritius</option><option value="Mexico">Mexico</option><option value="Micronesia">Micronesia</option><option value="Moldova">Moldova</option><option value="Monaco">Monaco</option><option value="Mongolia">Mongolia</option><option value="Montenegro">Montenegro</option><option value="Morocco">Morocco</option><option value="Mozambique">Mozambique</option><option value="Myanmar">Myanmar</option><option value="Namibia">Namibia</option><option value="Nauru">Nauru</option><option value="Nepal">Nepal</option><option value="Netherlands">Netherlands</option><option value="Netherlands Antilles">Netherlands Antilles</option><option value="Nicaragua">Nicaragua</option><option value="Niger">Niger</option><option value="Nigeria">Nigeria</option><option value="Norway">Norway</option><option value="Oman">Oman</option><option value="Pakistan">Pakistan</option><option value="Palau">Palau</option><option value="Palestine">Palestine</option><option value="Panama">Panama</option><option value="Papua New Guinea">Papua New Guinea</option><option value="Paraguay">Paraguay</option><option value="Peru">Peru</option><option value="Philippines">Philippines</option><option value="Poland">Poland</option><option value="Portugal">Portugal</option><option value="Puerto Rico">Puerto Rico</option><option value="Qatar">Qatar</option><option value="Romania">Romania</option><option value="Russia">Russia</option><option value="Rwanda">Rwanda</option><option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option><option value="Saint Lucia">Saint Lucia</option><option value="Saint Vincent and the Grenadines">Saint Vincent and the Grenadines</option><option value="Samoa">Samoa</option><option value="San Marino">San Marino</option><option value="Sao Tome and Principe">Sao Tome and Principe</option><option value="Saudi Arabia">Saudi Arabia</option><option value="Senegal">Senegal</option><option value="Serbia">Serbia</option><option value="Seychelles">Seychelles</option><option value="Sierra Leone">Sierra Leone</option><option value="Singapore">Singapore</option><option value="Slovakia">Slovakia</option><option value="Slovenia">Slovenia</option><option value="Solomon Islands">Solomon Islands</option><option value="Somalia">Somalia</option><option value="South Africa">South Africa</option><option value="Spain">Spain</option><option value="Sri Lanka">Sri Lanka</option><option value="Sudan">Sudan</option><option value="Suriname">Suriname</option><option value="Swaziland">Swaziland</option><option value="Sweden">Sweden</option><option value="Switzerland">Switzerland</option><option value="Syria">Syria</option><option value="Taiwan">Taiwan</option><option value="Tajikistan">Tajikistan</option><option value="Tanzania">Tanzania</option><option value="Thailand">Thailand</option><option value="Togo">Togo</option><option value="Tonga">Tonga</option><option value="Trinidad and Tobago">Trinidad and Tobago</option><option value="Tunisia">Tunisia</option><option value="Turkey">Turkey</option><option value="Turkmenistan">Turkmenistan</option><option value="Tuvalu">Tuvalu</option><option value="Uganda">Uganda</option><option value="Ukraine">Ukraine</option><option value="United Arab Emirates">United Arab Emirates</option><option value="United States Minor Outlying Islands">United States Minor Outlying Islands</option><option value="Uruguay">Uruguay</option><option value="Uzbekistan">Uzbekistan</option><option value="Vanuatu">Vanuatu</option><option value="Vatican City">Vatican City</option><option value="Venezuela">Venezuela</option><option value="Vietnam">Vietnam</option><option value="Virgin Islands, British">Virgin Islands, British</option><option value="Virgin Islands, U.S.">Virgin Islands, U.S.</option><option value="Yemen">Yemen</option><option value="Zambia">Zambia</option><option value="Zimbabwe">Zimbabwe</option></select><i></i>
                                                                                                            <span class="icon-place"></span></div></div>-->
													<div class="element-separator">
														<hr>
														<h4 class="section-break-title">
															Collection Information
														</h4>
													</div>
													<div class="element-select">
														<label class="title">
															<span class="required" style="color: red">* All
																the fields are required</span>
														</label>
														<div class="item-cont">
															<div class="large">
																<span> <select name="product" required="required">

																		<option>
																			Donating Fruits /Vegetables
																		</option>
																		<s:iterator value="plist" id="p">
																			<option>
																				<s:property value="#p.plantName" />
																			</option>
																		</s:iterator>
																	</select><i></i> <span class="icon-place"></span> </span>
															</div>
														</div>
													</div>
													<div class="element-number"
														style="float: left; padding: 0em; margin-top: 0.2em; width: 60%; height: inherit;">

														<div class="item-cont">
															<input class="medium" type="text" name="amount"
																required="required" placeholder="Amount" />
															<span class="icon-place"></span>
														</div>
													</div>
													<div class="element-select"
														style="float: right; width: 40%; height: 100%;">
														<label class="title"></label>
														<div class="item-cont">
															<div class="small" style="width: 100%; font-size: 100%">
																<span><select name="unit">

																		<option>
																			Units
																		</option>
																		<option value="Kilogram">
																			Kilogram
																		</option>
																		<option value="Pound">
																			Pounds
																		</option>
																	</select> <i></i> <span class="icon-place"></span> </span>
															</div>
														</div>
													</div>
													<div class="element-select">


														<div id="datetimepicker1" class="input-append date">
															<input class="large" data-format="dd/MM/yyyy hh:mm:ss"
																type="date" name="date" required="required"
																placeholder="Collection Date" />
															<span class="add-on"> <i
																data-time-icon="icon-time"
																data-date-icon="icon-calendar"> </i> </span>
														</div>

													</div>
													<div class="element-select">

														<div class="item-cont">
															<div class="large">
																<span> <select name="timeRange"
																		required="required">

																		<option>
																			Select Time Range
																		</option>
																		<option value="9am-12pm">
																			9 am - 12 pm
																		</option>
																		<option value="12pm-3pm">
																			12 pm - 3 pm
																		</option>
																		<option value="3pm-6pm">
																			3 pm - 6 pm
																		</option>
																	</select><i></i> <span class="icon-place"></span> </span>
															</div>
														</div>
													</div>

													<div class="submit">
														<input type="submit" value="Collect" />
													</div>
											</form>
											<!--<p class="frmd"><a href="http://formoid.com/v29.php">php form</a> Formoid.com 2.9</p><script type="text/javascript" src="donation_files/formoid1/formoid-solid-light-green.js"></script>
                                                                                            <!-- Stop Formoid form-->

										</div>
									</div>
								</div>
							</div>
							<!-- second tab -->
							<div class="tab-pane" id="tab2">
								<div>
									<div class="basic-login">
										<form class="formoid-solid-light-green"
											style="background-color: #FFFFFF; max-width: 480px; min-width: 150px; margin: 0 auto"
											action="coming-soon.html" method="post">
											<div class="title">
												<h3 class="donation_title">
													Food Distribution Form
												</h3>
											</div>
											<div class="element-separator">
												<hr>
												<h4 class="section-break-title">
													Personal Information
												</h4>
											</div>
											<div class="element-input"
												title="Please Enter Your Full name">
												<label class="title">
													<span class="required" style="color: red">* All the
														fields are required</span>
												</label>
												<div class="item-cont">
													<input class="large" type="text" name="input"
														required="required" placeholder="Full Name" />
													<span class="icon-place"></span>
												</div>
											</div>
											<div class="element-select">
												<div class="item-cont">
													<div class="large">
														<span> <select name="select" required="required">

																<option value="Select Community Garden">
																	Select Community Garden
																</option>
																<s:iterator value="cglist" id="cg">
																	<option>
																		<s:property value="#cg.commName" />
																	</option>
																</s:iterator>
															</select> <i></i> <span class="icon-place"></span> </span>
													</div>
												</div>
											</div>
											<div class="element-email">
												<div class="item-cont">
													<input class="large" type="email" name="email" value=""
														required="required" placeholder="Email" />
													<span class="icon-place"></span>
												</div>
											</div>
											<div class="element-separator">
												<hr>
												<h4 class="section-break-title">
													Donation Location
												</h4>
											</div>
											<!--
											<div class="element-checkbox">
												<label class="title"></label>
												<div class="column column1">
													<label>
														<input type="checkbox" name="checkbox[]"
															value="Use Address of The Community Garden" />
														<span>Use Address of The Community Garden</span>
													</label>
												</div>
												<span class="clearfix"></span>
											</div>
                                                                                    -->
											<div class="element-address">
												<label class="title"></label>
												<span class="addr1"> <input
														placeholder="Street Address" type="text"
														name="address[addr1]" /> <span class="icon-place"></span>

												</span>
												<span class="addr2"> <input placeholder="Suburb"
														type="text" name="address[addr2]" /> <span
													class="icon-place"></span> </span>
												<!--
                                                                                                    <span class="city">
                                                                                                        <input placeholder="City" type="text" name="address[city]" />
                                                                                                        <span class="icon-place"></span>

                                                                                                    </span>
                                                                                                    -->


												</span>
												<span class="zip"> <input
														placeholder="Postal / Zip Code" type="text" maxlength="15"
														name="address[zip]" /> <span class="icon-place"></span> </span>
												<!--<div class="country">
                                                                                                        <select name="address[country]" >
                                                                                                            <option selected="selected" value="" disabled="disabled">--- Select a country ---</option>
                                                                                                            <option value="United States">United States</option>
                                                                                                            <option value="United Kingdom">United Kingdom</option>
                                                                                                            <option value="Australia">Australia</option>
                                                                                                            <option value="Canada">Canada</option>
                                                                                                            <option value="France">France</option>
                                                                                                            <option value="New Zealand">New Zealand</option><option value="India">India</option><option value="Brazil">Brazil</option><option value="----" disabled="disabled">----</option><option value="Afghanistan">Afghanistan</option><option value="Aland Islands">Aland Islands</option><option value="Albania">Albania</option><option value="Algeria">Algeria</option><option value="American Samoa">American Samoa</option><option value="Andorra">Andorra</option><option value="Angola">Angola</option><option value="Anguilla">Anguilla</option><option value="Antarctica">Antarctica</option><option value="Antigua and Barbuda">Antigua and Barbuda</option><option value="Argentina">Argentina</option><option value="Armenia">Armenia</option><option value="Aruba">Aruba</option><option value="Austria">Austria</option><option value="Azerbaijan">Azerbaijan</option><option value="Bahamas">Bahamas</option><option value="Bahrain">Bahrain</option><option value="Bangladesh">Bangladesh</option><option value="Barbados">Barbados</option><option value="Belarus">Belarus</option><option value="Belgium">Belgium</option><option value="Belize">Belize</option><option value="Benin">Benin</option><option value="Bermuda">Bermuda</option><option value="Bhutan">Bhutan</option><option value="Bolivia">Bolivia</option><option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option><option value="Botswana">Botswana</option><option value="British Indian Ocean Territory">British Indian Ocean Territory</option><option value="Brunei Darussalam">Brunei Darussalam</option><option value="Bulgaria">Bulgaria</option><option value="Burkina Faso">Burkina Faso</option><option value="Burundi">Burundi</option><option value="Cambodia">Cambodia</option><option value="Cameroon">Cameroon</option><option value="Cape Verde">Cape Verde</option><option value="Cayman Islands">Cayman Islands</option><option value="Central African Republic">Central African Republic</option><option value="Chad">Chad</option><option value="Chile">Chile</option><option value="China">China</option><option value="Colombia">Colombia</option><option value="Comoros">Comoros</option><option value="Democratic Republic of the Congo">Democratic Republic of the Congo</option><option value="Republic of the Congo">Republic of the Congo</option><option value="Cook Islands">Cook Islands</option><option value="Costa Rica">Costa Rica</option><option value="Cote d'Ivoire">Cote d'Ivoire</option><option value="Croatia">Croatia</option><option value="Cuba">Cuba</option><option value="Cyprus">Cyprus</option><option value="Czech Republic">Czech Republic</option><option value="Denmark">Denmark</option><option value="Djibouti">Djibouti</option><option value="Dominica">Dominica</option><option value="Dominican Republic">Dominican Republic</option><option value="East Timor">East Timor</option><option value="Ecuador">Ecuador</option><option value="Egypt">Egypt</option><option value="El Salvador">El Salvador</option><option value="Equatorial Guinea">Equatorial Guinea</option><option value="Eritrea">Eritrea</option><option value="Estonia">Estonia</option><option value="Ethiopia">Ethiopia</option><option value="Faroe Islands">Faroe Islands</option><option value="Fiji">Fiji</option><option value="Finland">Finland</option><option value="Gabon">Gabon</option><option value="Gambia">Gambia</option><option value="Georgia">Georgia</option><option value="Germany">Germany</option><option value="Ghana">Ghana</option><option value="Gibraltar">Gibraltar</option><option value="Greece">Greece</option><option value="Grenada">Grenada</option><option value="Guatemala">Guatemala</option><option value="Guinea">Guinea</option><option value="Guinea-Bissau">Guinea-Bissau</option><option value="Guyana">Guyana</option><option value="Haiti">Haiti</option><option value="Honduras">Honduras</option><option value="Hong Kong">Hong Kong</option><option value="Hungary">Hungary</option><option value="Iceland">Iceland</option><option value="Indonesia">Indonesia</option><option value="Iran">Iran</option><option value="Iraq">Iraq</option><option value="Ireland">Ireland</option><option value="Israel">Israel</option><option value="Italy">Italy</option><option value="Jamaica">Jamaica</option><option value="Japan">Japan</option><option value="Jordan">Jordan</option><option value="Kazakhstan">Kazakhstan</option><option value="Kenya">Kenya</option><option value="Kiribati">Kiribati</option><option value="North Korea">North Korea</option><option value="South Korea">South Korea</option><option value="Kuwait">Kuwait</option><option value="Kyrgyzstan">Kyrgyzstan</option><option value="Laos">Laos</option><option value="Latvia">Latvia</option><option value="Lebanon">Lebanon</option><option value="Lesotho">Lesotho</option><option value="Liberia">Liberia</option><option value="Libya">Libya</option><option value="Liechtenstein">Liechtenstein</option><option value="Lithuania">Lithuania</option><option value="Luxembourg">Luxembourg</option><option value="Macedonia">Macedonia</option><option value="Madagascar">Madagascar</option><option value="Malawi">Malawi</option><option value="Malaysia">Malaysia</option><option value="Maldives">Maldives</option><option value="Mali">Mali</option><option value="Malta">Malta</option><option value="Marshall Islands">Marshall Islands</option><option value="Mauritania">Mauritania</option><option value="Mauritius">Mauritius</option><option value="Mexico">Mexico</option><option value="Micronesia">Micronesia</option><option value="Moldova">Moldova</option><option value="Monaco">Monaco</option><option value="Mongolia">Mongolia</option><option value="Montenegro">Montenegro</option><option value="Morocco">Morocco</option><option value="Mozambique">Mozambique</option><option value="Myanmar">Myanmar</option><option value="Namibia">Namibia</option><option value="Nauru">Nauru</option><option value="Nepal">Nepal</option><option value="Netherlands">Netherlands</option><option value="Netherlands Antilles">Netherlands Antilles</option><option value="Nicaragua">Nicaragua</option><option value="Niger">Niger</option><option value="Nigeria">Nigeria</option><option value="Norway">Norway</option><option value="Oman">Oman</option><option value="Pakistan">Pakistan</option><option value="Palau">Palau</option><option value="Palestine">Palestine</option><option value="Panama">Panama</option><option value="Papua New Guinea">Papua New Guinea</option><option value="Paraguay">Paraguay</option><option value="Peru">Peru</option><option value="Philippines">Philippines</option><option value="Poland">Poland</option><option value="Portugal">Portugal</option><option value="Puerto Rico">Puerto Rico</option><option value="Qatar">Qatar</option><option value="Romania">Romania</option><option value="Russia">Russia</option><option value="Rwanda">Rwanda</option><option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option><option value="Saint Lucia">Saint Lucia</option><option value="Saint Vincent and the Grenadines">Saint Vincent and the Grenadines</option><option value="Samoa">Samoa</option><option value="San Marino">San Marino</option><option value="Sao Tome and Principe">Sao Tome and Principe</option><option value="Saudi Arabia">Saudi Arabia</option><option value="Senegal">Senegal</option><option value="Serbia">Serbia</option><option value="Seychelles">Seychelles</option><option value="Sierra Leone">Sierra Leone</option><option value="Singapore">Singapore</option><option value="Slovakia">Slovakia</option><option value="Slovenia">Slovenia</option><option value="Solomon Islands">Solomon Islands</option><option value="Somalia">Somalia</option><option value="South Africa">South Africa</option><option value="Spain">Spain</option><option value="Sri Lanka">Sri Lanka</option><option value="Sudan">Sudan</option><option value="Suriname">Suriname</option><option value="Swaziland">Swaziland</option><option value="Sweden">Sweden</option><option value="Switzerland">Switzerland</option><option value="Syria">Syria</option><option value="Taiwan">Taiwan</option><option value="Tajikistan">Tajikistan</option><option value="Tanzania">Tanzania</option><option value="Thailand">Thailand</option><option value="Togo">Togo</option><option value="Tonga">Tonga</option><option value="Trinidad and Tobago">Trinidad and Tobago</option><option value="Tunisia">Tunisia</option><option value="Turkey">Turkey</option><option value="Turkmenistan">Turkmenistan</option><option value="Tuvalu">Tuvalu</option><option value="Uganda">Uganda</option><option value="Ukraine">Ukraine</option><option value="United Arab Emirates">United Arab Emirates</option><option value="United States Minor Outlying Islands">United States Minor Outlying Islands</option><option value="Uruguay">Uruguay</option><option value="Uzbekistan">Uzbekistan</option><option value="Vanuatu">Vanuatu</option><option value="Vatican City">Vatican City</option><option value="Venezuela">Venezuela</option><option value="Vietnam">Vietnam</option><option value="Virgin Islands, British">Virgin Islands, British</option><option value="Virgin Islands, U.S.">Virgin Islands, U.S.</option><option value="Yemen">Yemen</option><option value="Zambia">Zambia</option><option value="Zimbabwe">Zimbabwe</option></select><i></i>
                                                                                                            <span class="icon-place"></span></div></div>-->

												<div class="submit">
													<input type="submit" value="Deliver" />
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
		<div w3-include-html="footer.html"></div>

		<!-- Javascripts -->
		<script
			src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
		<script>
	window.jQuery || document.write('__tag_532$43_<\/script>')
</script>
		<script src="js/bootstrap.min.js"></script>
		<script src="http://cdn.leafletjs.com/leaflet-0.5.1/leaflet.js"></script>
		<script src="js/jquery.fitvids.js"></script>
		<script src="js/jquery.sequence-min.js"></script>
		<script src="js/jquery.bxslider.js"></script>
		<script src="js/w3-include-HTML.js"></script>
		<script src="js/main-menu.js"></script>
		<script src="js/template.js"></script>



		<script
			src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

		<script src="build/js/bootstrap-datetimepicker.min.js"></script>
		<script
			src="//netdna.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

		<script
			src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.8.4/moment.min.js"></script>

		</script>



	</body>
</html>