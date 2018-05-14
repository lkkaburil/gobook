<!DOCTYPE HTML>
<!--
	Future Imperfect by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title></title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="top/assets/css/main.css" />
		<link rel="stylesheet" href="top/assets/css/message.css"/>
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	</head>
	<body>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header" style="height: 150px; background-color: #70866F; color: white; font-size: 20px;">
						
						<h1 style="margin-top: 40px; width:20%;text-align: center;"><a href="#"><img src="top/images/goobookTitle.png" width="250px" ></a></h1>
						<nav class="links">
							<ul style="margin-top:40px;">
								<li><a href="#">Notice</a></li>
								<li><a href="#">FreeBoard</a></li>
								<li><a href="#">Customer Center</a></li>
							</ul>
						</nav>
						<nav class="main" >
							<ul  >
								<li class="search">
									<a style="margin-top: 40px;" class="fa-search" href="#search">Search</a>
									<form style="margin-top:40px;"  id="search" method="get" action="#">
										<input type="text" name="query" placeholder="Search" />
									</form>
								</li>
<%-- 								<% if(session.getAttribute("id")!=null) { %> --%>
								<li class="message">
								<span id="span_count" style="z-index: 2;"></span>
									<a style="margin-top:65px; z-index: 1;" class="fa fa-envelope-o" href="javascript:messageop()">Message</a>
									<div id="message_div">
										<div id="message_nav">
											<div class="message_navbtn" id="listbtn" onclick="newmlist()">받은쪽지함</div>
											<div class="message_navbtn" id="sendlistbtn" onclick="newmsendlist()">보낸쪽지함</div>
											<div class="message_navbtn" id="createbtn" onclick="mcreateform()">쪽지보내기</div>
										</div>
										<table id="message_content"></table>
										<div id="message_paging" style="text-align:center"></div>
										<div id="message_etc"></div>
									</div>
								</li>
<%-- 								<% } %> --%>
								<li class="user">
									<a style="margin-top:40px;" class="fa-user" href="#user">User</a>
								</li>
								<li class="menu">
									<a style="margin-top: 40px;" class="fa-bars" href="#menu">Menu</a>
								</li>
								
							</ul>
						</nav>
						
					</header>

				<!-- Menu -->
					<section id="menu">

						<!-- Search -->
							<section>
								<form class="search" method="get" action="#">
									<input type="text" name="query" placeholder="Search" />
								</form>
							</section>

						<!-- Links -->
							<section>
								<ul class="links">
									<li>
										<a href="#">
											<h3>Lorem ipsum</h3>
											<p>Feugiat tempus veroeros dolor</p>
										</a>
									</li>
									<li>
										<a href="#">
											<h3>Dolor sit amet</h3>
											<p>Sed vitae justo condimentum</p>
										</a>
									</li>
									<li>
										<a href="#">
											<h3>Feugiat veroeros</h3>
											<p>Phasellus sed ultricies mi congue</p>
										</a>
									</li>
									<li>
										<a href="#">
											<h3>Etiam sed consequat</h3>
											<p>Porta lectus amet ultricies</p>
										</a>
									</li>
								</ul>
							</section>

						<!-- Actions -->
							<section>
								<ul class="actions vertical">
									<li><a href="#" class="button big fit">Log In</a></li>
								</ul>
							</section>

					</section>

				

					


			</div>

		<!-- Scripts -->
			<script src="top/assets/js/jquery.min.js"></script>
			<script src="top/assets/js/skel.min.js"></script>
			<script src="top/assets/js/util.js"></script>
			<script src="top/assets/js/message.js"/></script>
	
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="top/assets/js/main.js"></script>

	</body>
</html>