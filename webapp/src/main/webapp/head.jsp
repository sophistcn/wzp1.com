<%@page import="com.wzp1.webapp.constants.WebappConstants"%>
<%@page import="org.apache.commons.lang.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="/js/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="/css/flexslider.css" type="text/css"
	media="screen" />
	
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div id="home" class="top-header">
		<div class="container">
			<%
				if (StringUtils.isEmpty((String) session
						.getAttribute(WebappConstants.SESSION_MEMBER))) {
			%>
			<div class="logo">
				<h1>
					<a href="/login.jsp">进入</a>
				</h1>
			</div>
			<%
				}else{
			%>
			
			<div class="logo">
				<h1>
					<a href="/logout">退出</a>
				</h1>
			</div>
			<% } %>
			<div class="top-menu">
				<span class="menu"><img src="/images/nav-icon.png" alt="" /></span>
				<ul>
					<li><a class="scroll" href="<%=request.getContextPath() %>/index.jsp">主页</a></li>
					<li><a class="scroll" href="#service">服务</a></li>
					<li><a href="/viewCourses">查看课程</a></li>
					<%
				if (!StringUtils.isEmpty((String) session
						.getAttribute(WebappConstants.SESSION_MEMBER))) {
			%><li><a href="/course/initAddCourse?courseId=0">添加课程</a></li><%} %>
					<li><a class="scroll" href="#contact">关于</a></li>
				</ul>
				<!-- script-for-menu -->
				<script>
					$("span.menu").click(function() {
						$(".top-menu ul").slideToggle("slow", function() {
						});
					});
				</script>
				<!-- script-for-menu -->
			</div>
		</div>
	</div>