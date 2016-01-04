<%@page import="com.wzp1.webapp.constants.WebappConstants"%>
<%@page import="org.apache.commons.lang.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8"/>
<title>Java 技术分享</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/chocolat.css" type="text/css"
	media="screen" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Expire Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<script src="js/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css"
	media="screen" />
<!--scrolling-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1200);
		});
	});
</script>
<!--scrolling-->
</head>
<body>
	<!--top-header-->
	<jsp:include page="head.jsp"></jsp:include>
	<!--header  class="header" -->
	<div>
		<table>
			<tr>
				<td class="videoElement">
					<div class="">
						<h4>IntellJ IDEA 介绍与环境搭建 超清</h4>
						<embed
							src="http://player.youku.com/player.php/sid/XMTM4Mjc2NDEwOA==/v.swf"
							allowFullScreen="true" quality="high" width="480" height="400"
							align="middle" allowScriptAccess="always"
							type="application/x-shockwave-flash"></embed>
						<!-- style="color:white"  <a href="#">Click</a> -->
					</div>
				</td>

				<td class="videoElement">
					<div>
						<h4>
							<a href="#">PLSQl 使用技巧</a>
						</h4>
						<embed
							src="http://player.youku.com/player.php/sid/XMTM4MjU2NDU5Ng==/v.swf"
							allowFullScreen="true" quality="high" width="480" height="400"
							align="middle" allowScriptAccess="always"
							type="application/x-shockwave-flash"></embed>
					</div>
				</td>

			</tr>
			<tr>

				<td class="videoElement"><div>
						<h4>快速搭建Spring Web Maven 开发环境 发布Tomcat 超清</h4>

						<embed
							src="http://player.youku.com/player.php/sid/XMTM4MjU1MzA4NA==/v.swf"
							allowFullScreen="true" quality="high" width="480" height="400"
							align="middle" allowScriptAccess="always"
							type="application/x-shockwave-flash"></embed>
					</div></td>
					<td class="videoElement"><div>
						<h4>Selenium自动化测试 入门 Java 教程 超清 </h4>

						<embed src="http://player.youku.com/player.php/sid/XMTM4NDY4NTU4NA==/v.swf" allowFullScreen="true" quality="high" width="480" height="400" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
					</div></td>
				
				<td class="videoElement" >
				<td>
						<h4>Tomcat远程调试Java代码 集成项目的调试方法 超清  </h4>
				
					<embed src="http://player.youku.com/player.php/sid/XMTM4NDM1NzI0MA==/v.swf" allowFullScreen="true" quality="high" width="480" height="400" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
				</td>

			</tr>
			<tr>

				<td class="videoElement"><div>
						<h4>Linux服务器 SVN提交后 自动执行脚本 超清 </h4>

						<embed src="http://player.youku.com/player.php/sid/XMTM4NDMyNTk4MA==/v.swf" allowFullScreen="true" quality="high" width="480" height="400" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
					</div></td>
					<td class="videoElement"><div>
						<h4>强烈推荐Java+前端开发工具：IntelliJ IDEA之安装和简单优化配置（视频) </h4>

						<embed src="http://player.youku.com/player.php/sid/XMTM4MzI4OTM0OA==/v.swf" allowFullScreen="true" quality="high" width="480" height="400" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
					</div></td>
				
				<td class="videoElement" >
				<td>
						<h4> @IntelliJ IDEA第三部分视频教程：最重要的“快捷键”专讲(列表张贴)_转 超清  </h4>
				
				<embed src="http://player.youku.com/player.php/sid/XMTM4MzI2OTM0OA==/v.swf" allowFullScreen="true" quality="high" width="480" height="400" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
				</td>

			</tr>
		</table>

		<p>联系方式</p>
		<p>QQ/手机: 13699193823</p>
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
