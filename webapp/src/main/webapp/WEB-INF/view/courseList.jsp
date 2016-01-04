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
<link href="/css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all">
<link href="/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="/css/chocolat.css" type="text/css"
	media="screen" />
</head>
<body>
<!--top-header-->
	<jsp:include page="/head.jsp"></jsp:include>
	
<%if(!StringUtils.isEmpty((String)request.getParameter("redirectURL"))){ %>
	<a href="addCourse.jsp" >添加课程</a>
	<%} %>
	<table class="viewCourse" >
	<tr>
		<%if(StringUtils.isNotEmpty((String)session.getAttribute(WebappConstants.SESSION_MEMBER))){ %>
			<td></td>
			<td></td>
		<%} %>
		<td>课程名称</td>
		<td>老师名称</td>
		<td>创建时间</td>
		<td>上次修改时间</td>
		<td>课程内容</td>
	</tr>
	<c:forEach var="course" items="${courses}">
		<tr>
		
		<%if(StringUtils.isNotEmpty((String)session.getAttribute(WebappConstants.SESSION_MEMBER))){ %>
			<td><a href="<%=request.getContextPath() %>/course/initAddCourse?courseId=${course.courseId}">编辑</a></td>
			<td><a href="<%=request.getContextPath() %>/course/deleteCourse?courseId=${course.courseId}">删除</a></td>
			<%-- <td><a href="addCourse.jsp?id=${course.id}">编辑</a></td> --%>
		<%} %>
			<td><h2>${course.courseName}</h2></td>
			<td>${course.teacherName}</td>
			<td>${course.createDate}</td>
			<td>${course.lastUpdateTime}</td>
			<td>${course.courseContent}</td>
		</tr>
	</c:forEach>
	
	</table>
	
	<!--gallery -->
	<script src="/js/jquery.chocolat.js"></script>
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