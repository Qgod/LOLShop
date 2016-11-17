<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>联盟皮肤商城登陆</title>
<script src="js/jquery-2.1.4.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/bootstrap3/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/bootstrap3/css/bootstrap-theme.min.css">
<script
	src="${pageContext.request.contextPath}/bootstrap3/js/bootstrap.min.js"></script>
<script src="js/bootstrap-table.js"></script>
<link href="css/drag.css" rel="stylesheet" type="text/css">
<script src="js/drag.js" type="text/javascript"></script>
<script type="text/javascript">
	
	function click_login(){
		$("#login").css("display","");
		$("#regist").css("display","none");
	}
	function click_regist(){
		$("#login").css("display","none");
		$("#regist").css("display","");
	}
	function regist(){
		var userName=$("#userName").val();
		var password=$("#password").val();
		var rePassword=$("#rePassword").val();
		
		if(userName==''){
			$('#userName_msg').html('用户名不能为空!');
			$('#userName_msg').css("display","");
			return false;
		}else if(userName.length<6){
			$('#userName_msg').html('用户名至少为6个字符!');
			$('#userName_msg').css("display","");
			return false;
		}else if(userName.length>15){
			$('#userName_msg').html('用户名最多为15个字符!');
			$('#userName_msg').css("display","");
			return false;
		}else{
			$('#userName_msg').html('');
			$('#userName_msg').css("display","none");
		}
		if(password==''){
			$('#password_msg').html('密码不能为空!');
			$('#password_msg').css("display","");
			return false;
		}else if(password.length<6){
			$('#password_msg').html('密码至少为6个字符!');
			$('#password_msg').css("display","");
			return false;
		}else if(password.length>16){
			$('#password_msg').html('密码最多为16个字符!');
			$('#password_msg').css("display","");
			return false;
		}else{
			$('#password_msg').html('');
			$('#password_msg').css("display","none");
		}
		if(rePassword==''){
			$('#rePassword_msg').html('重复密码不能为空!');
			$('#rePassword_msg').css("display","");
			return false;
		}else if(rePassword!=password){
			$('#rePassword_msg').html('两次密码输入不一致！');
			$('#rePassword_msg').css("display","");
			return false;
		}else{
			$('#rePassword_msg').html('');
			$('#rePassword_msg').css("display","none");
		}
		if($('.drag_text').html()!='验证通过'){
			alert("请拖动滑块进行验证！");
			return false;
		}else{
			$('#password_msg').html('');
			$('#userName_msg').html('');
			$('#rePassword_msg').html('');
			$.ajax({
				url:'user_regist.action',
				method:'post',
				data:{userName:userName,password:password},
				success:function(data){
					if(data.result=='false'){
						$('#userName_msg').html('当前用户名已被注册!');
						$('#userName_msg').css("display","");
					}
					if(data.result=='true'){
						if(confirm("注册成功！")){
							$('#userName_msg').css("display","none");
							window.location.reload();
						}else{
							$('#userName_msg').css("display","none");
							window.location.reload();
						}
					}
				}
			});
		}
	}
	
	
	function login(){
		var userName=$("#userName1").val();
		var password=$("#password1").val();
		if(userName==''){
			$('#userName1_msg').html('用户名不能为空！');
			$('#userName1_msg').css("display","");
			return false;
		}
		if(password==''){
			$('#password1_msg').html('密码不能为空！');
			$('#password1_msg').css("display","");
			return false;
		}else{
			$('#userName1_msg').css("display","none");
			$('#password1_msg').css("display","none");
			$.ajax({
				url:'user_login.action',
				method:'post',
				data:{userName:userName,password:password},
				success:function(data){
					if(data.result=='false'){
						$("#login_msg").html('用户名或密码错误！');
						$("#login_msg").css("display","");
					}
					if(data.result=='true'){
						$("#login_msg").html('');
						$("#login_msg").css("display","none");
						window.location.href="a.jsp";
					}
				}
			});
		}
	}
</script>
<style type="text/css">
a {
	color: black;
}

a:hover {
	color: red;
}

.button {
	padding: 5px 15px 5px 15px;
	text-decoration: none;
	text-align: center;
	display: inline-block;
	
	font-size: 25px;
	margin-left: 20px;
	margin-top: 20px;
	white-space: nowrap;
	width: 350px;
}

.button:hover,.button:link,.button:visited {
	color: white;
	background-color:red;
	text-decoration: none;
}

.button:active {
	top: 1px;
	left: 1px;
}

.red {
	background-color: red;
	color: #FFF;
	font-family: "Palatino Linotype";
}

.red:hover {
	background-color: #E00000;
	text-decoration: none;
}
</style>
</head>
<body>
	<div style="height: 100px; width: 90%;">
		<img style="margin-left: 180px; margin-top: 10px; height: 80px;"
			src="images/logo.png" /> <img style="float: right; height: 90px;"
			src="images/1.png" />
	</div>
	<div
		style="background-size: 100% 100%; width: 100%; background-image: url('images/login.jpg'); height: 567px;">
		<br> <br>
		<div
			style="height: 450px; width: 387px; background-color: white; margin-left: 774px;">
			<div class="hh"
				style="width: 192px; float: right; border-bottom: 1px solid lightgray; height: 62px; text-align: center;">
				<br> <a href="javascript:void(0)"
					style="text-decoration: none; font-size: 18px; font-family: Microsoft YaHei;"
					onclick="click_login()" id="login_button"> 用户登陆 </a>
			</div>
			<div class="hh"
				style="width: 192px; border-bottom: 1px solid lightgray; float: right; height: 62px; border-right: 1px solid lightgray; text-align: center;">
				<br> <a href="#"
					style="text-decoration: none; font-size: 18px; font-family: Microsoft YaHei;"
					id="regist_button" onclick="click_regist()">新人注册</a>
			</div>
			<br> <br> <br>
			<br>
			<font id="userName_msg" style="display: none;margin-left: 20px;color: red;"></font>
			<div style="display: none;" id="regist">
				<form class="form-horizontal" role="form">
					<div style="margin-left: 23px; margin-top: 20px;"
						class="input-group input-group-md">
						<span class="input-group-addon" id="sizing-addon1"><i
							class="glyphicon glyphicon-user" aria-hidden="true"></i></span> <input
							style="width: 300px; height: 40px;" type="text"
							class="form-control" placeholder="用户名"
							aria-describedby="sizing-addon1" id="userName">
					</div>
					<br>
					<font id="password_msg" style="display: none;margin-left: 20px;color: red;"></font>
					<div style="margin-left: 23px; margin-top: 20px;"
						class="input-group input-group-md">
						<span class="input-group-addon" id="sizing-addon1"><i
							class="glyphicon glyphicon-lock"></i></span> <input
							style="width: 300px; height: 40px;" type="password"
							class="form-control" placeholder="密码"
							aria-describedby="sizing-addon1" id="password">
					</div>
					<br>
					<font id="rePassword_msg" style="display: none;margin-left: 20px;color: red;"></font>
					<div style="margin-left: 23px; margin-top: 20px;"
						class="input-group input-group-md">
						<span class="input-group-addon" id="sizing-addon1"><i
							class="glyphicon glyphicon-lock"></i></span> <input
							style="width: 300px; height: 40px;" type="password"
							class="form-control" placeholder="重复密码"
							aria-describedby="sizing-addon1" id="rePassword">
					</div>
					<center>
						<br>
						<div id="drag"></div>
					</center>
					<script type="text/javascript">
						$('#drag').drag();
					</script>
					<a href="javascript:void(0)" onclick="javascript:regist()" class="button red">注&nbsp;&nbsp;&nbsp;&nbsp;册</a>
				</form>
			</div>

			<div id="login">
				<font id="userName1_msg" style="display: none;margin-left: 20px;color: red;"></font>
					<div style="margin-left: 23px; margin-top: 20px;"
						class="input-group input-group-md">
						<span class="input-group-addon" id="sizing-addon1"><i
							class="glyphicon glyphicon-user" aria-hidden="true"></i></span> <input
							style="width: 300px; height: 40px;" type="text"
							class="form-control" placeholder="用户名"
							aria-describedby="sizing-addon1" id="userName1">
					</div>
					<font id="password1_msg" style="display: none;margin-left: 20px;color: red;"></font>
					<div style="margin-left: 23px; margin-top: 20px;"
						class="input-group input-group-md">
						<span class="input-group-addon" id="sizing-addon1"><i
							class="glyphicon glyphicon-lock"></i></span> <input
							style="width: 300px; height: 40px;" type="password"
							class="form-control" placeholder="密码"
							aria-describedby="sizing-addon1" id="password1"/>
					</div>
					<div style="margin-left: 23px; margin-top: 20px;" class="checkbox">
						<label> <input type="checkbox">记住密码<font id="login_msg" style="display: none;margin-left: 20px;color: red;"></font>
						</label>
					</div>
					<a href="javascript:void(0)" onclick="login()" class="button red">登&nbsp;&nbsp;&nbsp;&nbsp;陆</a>
			</div>
		</div>
	</div>

</body>
</html>