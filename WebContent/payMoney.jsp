<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>联盟商城--结算付款</title>
<script src="js/jquery-2.1.4.min.js"></script>
	<link rel="stylesheet"
		href="bootstrap3/css/bootstrap.min.css">
	<link rel="stylesheet"
		href="bootstrap3/css/bootstrap-theme.min.css">
	<script
		src="bootstrap3/js/bootstrap.min.js"></script>
	<script src="js/bootstrap-table.js"></script>
	<link rel="stylesheet" type="text/css" href="css/index.css">
<script type="text/javascript">
$(function(){
	if ($("#currentUser").val() == "") {
		if(confirm("请先登录!")) {
			window.location.href = "login.jsp";
		} else {
			window.location.href = "login.jsp";
		}
	}else if ($("#order").val() == "") {
		window.location.href = "order.jsp";
		return;
	}
	
	$("#sure").click(function(){
		var orderId=$("#orderId").val();
		var pay_password=$("#pay_password").val();
		if($("#pay_password").val()==""){
			$("#message").css("display","");
		}else{
			$("#message").css("display","none");
			$.ajax({
				url:'end_pay.action',
				method:'post',
				data:{orderId:orderId,pay_password:pay_password},
				success:function(data){
					if(data.result=="true"){
						if(confirm("付款成功！")){
							$("#message").css("display","none");
							window.location.href="a.jsp";
						}
					}else if(data.result=="errorPassword"){
						$("#message").css("display","");
					}else{
						$("#message").css("display","none");
						alert("账户余额不足！");
					}
					
				}
			});
		}
	});
});
</script>
<style type="text/css">
#sure{
display: inline-block;
 width: 250px;
 height: 40px;
 line-height: 40px;
 background-color: red;
 text-align: center;
 color: white;
 text-decoration: none;
}
#sure:hover{
	text-decoration: none;
	background-color: #D00000;
}
</style>
</head>
<body>
	<jsp:include page="head_1.jsp"></jsp:include>
	<input type="hidden" id="currentUser" value="${currentUser.userName }" />
	<input type="hidden" id="order" value="${order }" />
	<div id="logoandsearch">
		<div class="col-md-5" style="margin-top:30px; "><img src="images/logo.png"></div>
		<div class="col-md-4"></div>
		<div class="col-md-3" style="height: 100px;margin-top: 30px;line-height: 100px;text-align: center;">
		</div>
	</div>
	<br>
	<div style="width: 86%;border: 1px solid #e4eaed;height: 300px;margin: auto;padding: auto;text-align: center;">
		<label style="margin-top: 20px;">应付金额：</label>&nbsp;&nbsp;&nbsp;<font size="4" color="red">¥<fmt:formatNumber value="${allMoney }" pattern="#.00"/></font>
		<br>
		<hr>
		<label style="display: inline-block;">请输入密码：</label>
		<input type="text" class="form-control" style="width: 250px;display: inline-block;font-size: 26px;" id="pay_password" onfocus="this.type='password'"/>
		<font color="red" style="margin-left: 20px;display: none;" id="message">密码为空或密码错误！</font>
		<br>
		<hr>
		<input type="hidden" id="orderId" value="${order.orderId }"/>
		<a href="javascript:void(0)" id="sure">确认无误，点击完成付款</a>
	</div>
	
	<div style="clear:both;height: 30px;"></div>
		<hr style="border-bottom: 1px solid #e4eaed;width: 95%;">
		<br>
	<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>