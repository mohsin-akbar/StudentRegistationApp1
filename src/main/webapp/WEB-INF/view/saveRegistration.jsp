<!--
Author: Colorlib
Author URL: https://colorlib.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>SignUp</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="login.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- web font -->
<link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
<!-- //web font -->
<!-- social icon CSS-->
<style>

.social__media__container {
	position: relative;
	display: flex;
	-ms-flex-pack: center;
	justify-content: center;
	-ms-flex-align: center;
	align-items: center;
	column-gap: 1rem;
    
	padding:20px;
}

a.social {
	position: relative;
	width: 2.5rem;
	height: 2.5rem;
	background-color: #fff;
	color: #000;
	border-radius: 50%;
	text-align: center;
	border: 1px solid var(--color-border-sc);
	box-shadow: 1px 0 10px rgba(0,0,0,.2);
	overflow: hidden;
	-webkit-transition: all .2s ease;
	transition: all .2s ease;
}

a.social i {
	line-height: 2.5rem;
}

a.social::before {
	position: absolute;
	top: 90%;
	left: -110%;
	content: '';
	width: 120%;
	height: 120%;
	transform: rotate(45deg);
}

a.social:hover {
	box-shadow: 1px 0 10px rgba(0,0,0,.1);
	-webkit-transform: scale(1.1);
	transform: scale(1.1);
}

a.social:hover i {
	color: #fff;
	-webkit-transform: scale(1.1);
	transform: scale(1.1);
	-webkit-transition: all .2s ease-in-out;
	transition: all .2s ease-in-out;
}

a.social:hover::before {
	animation: social .7s 1;
	top: -10%;
	left: -10%;
}

@keyframes social {
	0%{
		
		left: -110%;
		top: 90%;
	}
	
	50%{
		
		left: 10%;
		top: -30%;
	}
	
	100%{
		
		top: -10%;
		left: -10%;
	}
}

a.social.codepen::before {
	background: #ffffff;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #434343, #ffffff);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #4169e1, #4169e1); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

}

a.social.google::before {
	background: #0F9D58;
}

a.social.instagram::before {
	background-color: background: #f09433; 
background: -moz-linear-gradient(45deg, #f09433 0%, #e6683c 25%, #dc2743 50%, #cc2366 75%, #bc1888 100%); 
background: -webkit-linear-gradient(45deg, #f09433 0%,#e6683c 25%,#dc2743 50%,#cc2366 75%,#bc1888 100%); 
background: linear-gradient(45deg, #f09433 0%,#e6683c 25%,#dc2743 50%,#cc2366 75%,#bc1888 100%); 
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f09433', endColorstr='#bc1888',GradientType=1 );
	background-position: center;
	background-size: cover;
}



</style>
<!-- icons css -->
       <link rel="stylesheet" href="test_logincopy.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
		<link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>

	<!-- main -->
	<div class="main-w3layouts wrapper">
		<h1>Registration Form</h1>
		<div class="main-agileinfo">
				<div class="social__media__container">
						<a href="https://m.facebook.com/people/Abdurrab-Nazir/100007308042927/?comment_id=Y29tbWVudDoyMDE0MzUwNzkyMTI2MzQ1XzIwMTQ4MTMwODg3NDY3ODI%3D" target="_blank" class="social codepen">
							<i class="fa-brands fa-facebook"></i>
						</a>
						<a href="https://myaccount.google.com/?utm_source=chrome-profile-chooser&pli=1" class="social google">
							<i class="fa-brands fa-google"></i>
						</a>
						<a href="https://www.instagram.com/x_mohsin_nazir_x7/"  target="_blank" class="social instagram">
							<i class="fa-brands fa-instagram"></i>
						</a>
					</div>
			<div class="agileits-top">
			<p id="baby">
			<% 
		if(request.getAttribute("saved")!=null){
			out.println(request.getAttribute("saved"));
		}
	         %>
			</p>
				<form action="saveRegistration" method="post">
			 	<input class="text" type="text" name="name" placeholder="&#128578;  your Name" required=""> 
					<input class="text email" type="text" name="city" placeholder="&#127968;  City" required="">
					<input class="text" type="email" name="email" placeholder="&#128231;  Email" required="">
					<input class="text w3lpass" type="text" name="mobile" placeholder="&#128222;  Mobile No." required=""> 
					<div class="wthree-text">
						<label class="anim">
							<input type="checkbox" class="checkbox" >
							<span>I Agree To The Terms & Conditions</span>
						</label>
						<div class="clear"> </div>
					</div>
					<p id="hr"><input type="submit" value="Submit"></p>
				</form>
				<p>Already have an Account? <a href="login.jsp"> Login.!</a></p>
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