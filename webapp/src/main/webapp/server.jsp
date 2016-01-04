<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--
Au<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8"/>
<title>个人网站-软件开发</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen" />
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Expire Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="js/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<!--scrolling-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
 <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
<!--scrolling-->
</head>
<body>	
<!--top-header-->
<div id="home" class="top-header">
	 <div class="container">
		 <div class="logo">
				<h1><a href="index.html">进入</a></h1>
		 </div>
		 <div class="top-menu">
			 <span class="menu"><img src="images/nav-icon.png" alt=""/></span>
			 <ul>
				<li><a  href="index.jsp">主页</a></li>
				<li><a class="scroll" href="#about">关于</a></li>
				<li><a class="scroll" href="#service">服务</a></li>
				<li><a class="scroll" href="#gallery">展示</a></li>
				<li><a class="scroll" href="#blog">博客</a></li>
				<li><a class="scroll" href="server.jsp">服务器</a></li>
				<li><a class="scroll" href="#contact">联系我们</a></li>
			 </ul>
		     <!-- script-for-menu -->
				 <script>					
							$("span.menu").click(function(){
								$(".top-menu ul").slideToggle("slow" , function(){
								});
							});
				 </script>
		     <!-- script-for-menu -->
		  </div>
	 </div>
</div>	

<div id="header" >
	<%= new Date().toLocaleString() %>
</div>

<form action="">
	
</form>


<div class="map">
	 <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6632.248000703498!2d151.265683!3d-33.7832959!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b12abc7edcbeb07%3A0x5017d681632bfc0!2sManly+Vale+NSW+2093%2C+Australia!5e0!3m2!1sen!2sin!4v1433329298259" style="border:0"></iframe>
</div>
<!---->	
<div id="contact" class="contact">
	 <div class="container">
		 <h3>联系方式</h3>
		 <div class="touch-top">
			 <div class="col-md-8 touch-left">
				 <form>
					<input type="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" />
					<input type="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" />
					<textarea onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}"></textarea>
					<input type="submit" value="SUBMIT">				
				 </form>	
			 </div>
			 <div class="col-md-4 touch-right">
					<div class="touch-right-top">
							<span class="add"> </span>
							<h4>海淀区知春路8号,<label>北京，中国</label></h4>
					</div>
					<div class="touch-right-top">
							<span class="mail"> </span>
							<p><a href="mailto:example@email.com">928336225@qq.com</a></p>
					</div>
					<div class="touch-right-top">
							<span class="num"> </span>
							<p>+86 18210893253</p>
					</div>
			 </div>
				<div class="clearfix"></div>
		  </div>
	 </div>
</div>
<div class="footer">
	 <div class="container">
		 <p>Copyrights © 2015 Emplox. All rights reserved | Template by <a href="http://user.qzone.qq.com/928336225?ptlang=2052">W3layouts</a></p>
		 <div class="social">							
				<a href="#"><i class="facebook"></i></a>
				<a href="#"><i class="twitter"></i></a>
				<a href="#"><i class="dribble"></i></a>	
				<a href="#"><i class="google"></i></a>	
				<a href="#"><i class="youtube"></i></a>	
				
<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1256658439'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s95.cnzz.com/z_stat.php%3Fid%3D1256658439%26show%3Dpic1' type='text/javascript'%3E%3C/script%3E"));</script>
		 </div>
		 <div class="arrow">
			 <a class="scroll" href="#home"><img src="images/top.png" alt=""></a>
		 </div>
	 </div>
</div>
<!---->
<script type="text/javascript">
		$(document).ready(function() {
				/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
				*/
		$().UItoTop({ easingType: 'easeOutQuart' });
});
</script>
<a href="#to-top" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!----> 

</body>
</html>		
	