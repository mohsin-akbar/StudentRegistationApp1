<!--
Author: Colorlib
Author URL: https://colorlib.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>

<%@page import="java.util.Date"%>
<html>
<head>
<title>Login Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="login.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- //Custom Theme files -->
<!-- web font -->
<link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
<!-- //web font -->
</head>
<body>
	<!-- main -->
	<div class="main-w3layouts wrapper">
			<i class="fa fa-clock-o" style="font-size:30px;color:white"></i> <!-- icon of time -->
			<%=new Date() %> <!-- expression tag for time -->
		<h1>Login Form</h1>
		
		<div class="main-agileinfo">
		
			<div class="agileits-top">
			<p id="baby"><% 
		if(request.getAttribute("msg")!=null){
			out.println(request.getAttribute("msg"));
		}
	%></p>
				<form action="verifyLogin" method="post">
				<!--  	<input class="text" type="text" name="Username" placeholder="Username" required=""> -->
					<input class="text email" type="email" name="email" placeholder="&#128231; Email" required="">
					<input class="text" type="password" name="password" placeholder="&#x1F511; Password" required="" pattern = ".{4,}"
         title="four or more characters">
				<!--	<input class="text w3lpass" type="password" name="password" placeholder="Confirm Password" required=""> -->
					<div class="wthree-text">
						<label class="anim">
							<input type="checkbox" class="checkbox" >
							<span>I Agree To The Terms & Conditions</span>
						</label>
						
					</div>
					<p id="hr"><input type="submit" value="LogIn"></p>
				</form>
				<p>Don't have an Account? <a href="saveRegistration"> Register Here</a></p>
			</div>
		</div>
		<!-- copyright -->
		<div class="colorlibcopy-agile">
			<p>&#9410; 2022 Login Form. All rights reserved | Design by <a href="https://www.instagram.com/x_mohsin_nazir_x7/" target="_blank">Mohsin</a></p>
		</div>
		<!-- //copyright -->
		<ul class="colorlib-bubbles">
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>
	<!-- //main -->
	
</body>
</html>