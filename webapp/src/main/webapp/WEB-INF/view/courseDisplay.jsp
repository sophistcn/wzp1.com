<!DOCTYPE html>
<%@page import="com.wzp1.webapp.constants.WebappConstants"%>
<%@page import="org.apache.commons.lang.StringUtils"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="utf-8">
<title>Welcome</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/chocolat.css" type="text/css"
	media="screen" />
</head>
<body>
<!--top-header-->
	<jsp:include page="${contextPath}/head.jsp"></jsp:include>
	<h1>${course}</h1>
	
	<div class="">
		<h4>IntellJ IDEA 介绍与环境搭建 超清</h4>
		<embed
			src="http://player.youku.com/player.php/sid/XMTM4Mjc2NDEwOA==/v.swf"
			allowFullScreen="true" quality="high" width="480" height="400"
			align="middle" allowScriptAccess="always"
			type="application/x-shockwave-flash"></embed>
		<!-- style="color:white"  <a href="#">Click</a> -->
	</div>
	
	<!--gallery -->
	<script src="js/jquery.chocolat.js"></script>
	<!--light-box-files -->
	<script type="text/javascript">
		$(function() {
			$('.moments-bottom a').Chocolat();
		});
	</script>


	<!--about 
		<div class="about-left"></div> -->
	<div id="about" class="about">
		<div class="about-right">
			<h3>关于我们</h3>
			<h4>站长留言</h4>
			<p>Java技术分享 相互提高交流技术。</p>
		</div>
		<div class="clearfix"></div>
	</div>

	<!--
	<div class="map">
		<iframe
			src=""
			style="border: 0"></iframe>
	</div>-->
	<!---->
	<div id="contact" class="contact">
		<div class="container">
			<h3>联系方式</h3>
			<div class="touch-top">
				<div class="col-md-8 touch-left">
					<form>
						<input type="text" value="Name" onfocus="this.value = '';"
							onblur="if (this.value == '') {this.value = 'Name';}" /> <input
							type="text" value="Email" onfocus="this.value = '';"
							onblur="if (this.value == '') {this.value = 'Email';}" />
						<textarea onfocus="this.value = '';"
							onblur="if (this.value == '') {this.value = 'Message';}"></textarea>
						<input type="submit" value="SUBMIT">
					</form>
				</div>
				<div class="col-md-4 touch-right">
					<div class="touch-right-top">
						<span class="add"> </span>
						<h4>
							海淀区知春路8号,<label>北京，中国</label>
						</h4>
					</div>
					<div class="touch-right-top">
						<span class="mail"> </span>
						<p>
							<a href="mailto:example@email.com">928336225@qq.com</a>
						</p>
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
	
	<jsp:include page="/foot.jsp"></jsp:include>

</body>
</html>