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
		if(url.substring(url.length-10,url.length)=='head_1.jsp'){
			window.location.href="index.jsp";
			return;
		}
		if($("#currentUser").val()!=''){
			$("#h4").html('欢迎您,'+$("#currentUser").val());
			$("#h2").css('display','none');
			$("#h3").css('display','none');
			$("#h4").css('display','');
			$("#h5").css('display','');
			$("#h6").css('display','');
			$("#h7").css('display','');
		}else{
			$("#h2").css('display','');
			$("#h3").css('display','');
			$("#h4").css('display','none');
			$("#h5").css('display','none');
			$("#h6").css('display','none');
			$("#h7").css('display','none');
		}
		$("#h7 a").click(function(){
			if(confirm("您是否确认退出当前登录用户？")){
				$.ajax({
					url:'exit.action',
					method:'post',
					success:function(data){
						window.location.href="login.jsp";
					}
				});
			}
		})
	});
	</script>
<style type="text/css">
#head{
	width: 100%;
	height: 30px;
	background-color: #F1F1F1;
	line-height: 30px;
}
#head div ul li{
	list-style-type: none;
	font-family: 宋体;
	font-size: 14px;
	display: inline-block;
}
#head div ul li a{
	color: #666666;
	font-weight: 300;
	text-decoration: none;
	margin: 10px;
}
#head div ul li a:hover{
	color: red;
	font-weight: 500;
}
#h2{
	float: right;
}
#h3{
	float: right;
}
#h4{
	float: right;
	color: red;
}

#h5{
	float: right;
}
#h6{
	float: right;
}
#h7{
	float: right;
}
</style>
</head>
<body>
<input type="hidden" id="currentUser" value="${ currentUser.userName}"/>
	<div id="head">
		<div style="width: 90%;padding: auto;margin: auto;">
			<ul>
				<li id="h1"><a href="a.jsp">商城首页</a></li>
				<li id="h3"><a href="login.jsp">注册</a></li>
				<li id="h2"><a href="login.jsp">登录</a></li>
				
				<li id="h7"><a href="javascript:void(0)">退出</a></li>
				<li id="h6"><a href="myOrder.action">我的订单</a></li>
				<li id="h5"><a href="myShopCar.action">我的购物车</a></li>
				<li id="h4"></li>
			</ul>
		</div>
	</div>
</body>
</html>