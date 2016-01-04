<%@page import="com.wzp1.webapp.constants.WebappConstants"%>
<%@page import="org.apache.commons.lang.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="/js/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="/css/flexslider.css" type="text/css"
	media="screen" />
	
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="footer">
		<div class="container">
			<p>
				<a href="http://www.miitbeian.gov.cn/">京ICP备15058188号</a>
			</p>
			<div class="social" style="display:none">
				<script type="text/javascript">
					var cnzz_protocol = (("https:" == document.location.protocol) ? " https://"
							: " http://");
					document
							.write(unescape("%3Cspan id='cnzz_stat_icon_1256658439'%3E%3C/span%3E%3Cscript src='"
									+ cnzz_protocol
									+ "s95.cnzz.com/z_stat.php%3Fid%3D1256658439%26show%3Dpic1' type='text/javascript'%3E%3C/script%3E"));
				</script>
			</div>
			<div class="arrow">
				<a class="scroll" href="#home"><img src="/images/top.png" alt=""></a>
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
			$().UItoTop({
				easingType : 'easeOutQuart'
			});
		});
	</script>
	<a href="#home" id="toTop" style="display: block;"> <span
		id="toTopHover" style="opacity: 1;"> </span></a>
	<!---->
