<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="js/jquery-2.1.4.min.js"></script>
	<link rel="stylesheet"
		href="bootstrap3/css/bootstrap.min.css">
	<link rel="stylesheet"
		href="bootstrap3/css/bootstrap-theme.min.css">
	<script
		src="bootstrap3/js/jquery-1.11.2.min.js"></script>
	<script
		src="bootstrap3/js/bootstrap.min.js"></script>
	<script src="js/bootstrap-table.js"></script>
	<link rel="stylesheet" type="text/css" href="css/index.css">
	<script type="text/javascript">
	$(function(){
		var url = window.location.href;
		if(url.substring(url.length-8,url.length)=='foot.jsp'){
			window.location.href="index.jsp";
			return;
		}
	})
	</script>
</head>
<body>
<div id="footer" style="clear:both;height: 100px;background-color: black;text-align: center;width: 100%;">
		<nav id="nav_foot">
			<li><a href="index.html">网站首页</a></li>
			<li><a href="#">联系我们</a></li>
			<li><a href="#">意见反馈</a></li>
			<li><a href="#">关于我们</a></li>
		</nav>
		<font color="white" size="2" style="text-align: center">重庆科技学院：重庆市沙坪坝区虎溪大学城 168号 邮编：123456<br>
		重科教育研究中心版权所有2010-2100</font>
	</div>
</body>
</html>