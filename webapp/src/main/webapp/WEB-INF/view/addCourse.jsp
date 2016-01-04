<%@page import="org.apache.commons.collections.CollectionUtils"%>
<%@page import="com.wzp1.webapp.constants.WebappConstants"%>
<%@page import="org.apache.commons.lang.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8 ">
<script src="/js/jquery-1.11.1.min.js"></script>
<title>添加课程</title>
<link href="/css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all">
<link href="/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="/css/chocolat.css" type="text/css"
	media="screen" />
</head>
<body>
<!--top-header-->
	<jsp:include page="/head.jsp"></jsp:include>
	<%
		request.setCharacterEncoding("utf-8");
	    if(request.getAttribute(WebappConstants.COURSE)!=null){
					
		}
	%>
	<form action="/course/addCourse">
		<c:if test="${!empty course }">
			<input type="hidden" name="courseId" value="${course.courseId}" >
		</c:if>		
		<table>
			<tr>
				<td>课程名称：</td>
				
				<td><input type="text" name="courseName" style="width: 600px" value="${course.courseName}" ></td>
			</tr>
			<tr>
				<td>课程内容</td>
				<td><textarea style="width: 600px; height: 600px;" rows="3"
						cols="3" name="courseContent" >${course.courseContent }</textarea></td>
			</tr>
			<tr>
				<td><input type="submit"></td>
			</tr>
		</table>
		<script type="text/javascript">
			$('form').submit(function() {
				$.ajax({
	                cache: true,
	                type: "POST",
	                url: $('form').attr("action"),
	                data:$('form').serialize(),// 你的formid
	                async: false,
	                error: function(request) {
	                    alert("Connection error");
	                },
	                success: function(data) {
	                    if(data=="success"){
	                    	alert('保存成功');
	                    }else{
	                    	alert('请先登录');
	                    	window.location.href='login.jsp';
	                    }
	                }
	            });
				
				return false;
			});
		</script>
	</form>
	<a href="/viewCourses" >查看课程</a>
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