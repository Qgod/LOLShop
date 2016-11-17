<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>龙年限定李青——龙的传人</title>
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
	<script type="text/javascript">
	$(function(){
		$("#black").css("background-color","red");
		$("#black").css("color","white");
		$(".bu").click(function(){
			if($("#currentUser").val()==""){
				$(".bu").attr("href","#");
				if(confirm("请先登录!")){
					window.location.href="login.jsp";
				}else{
					window.location.href="login.jsp";
				}
			}
		});
	});
		function click_black(){
			$("#black").css("background-color","red");
			$("#black").css("color","white");
			$("#green").css("color","black");
			$("#blue").css("color","black");
			$("#yellow").css("color","black");
			$("#yellow").css("background-color","white");
			$("#blue").css("background-color","white");
			$("#green").css("background-color","white");
		}
		function click_blue(){
			$("#blue").css("background-color","red");
			$("#blue").css("color","white");
			$("#green").css("color","black");
			$("#black").css("color","black");
			$("#yellow").css("color","black");
			$("#yellow").css("background-color","white");
			$("#black").css("background-color","white");
			$("#green").css("background-color","white");
		}
		function click_yellow(){
			$("#yellow").css("background-color","red");
			$("#yellow").css("color","white");
			$("#green").css("color","black");
			$("#blue").css("color","black");
			$("#black").css("color","black");
			$("#black").css("background-color","white");
			$("#blue").css("background-color","white");
			$("#green").css("background-color","white");
		}
		function click_green(){
			$("#green").css("background-color","red");
			$("#green").css("color","white");
			$("#black").css("color","black");
			$("#blue").css("color","black");
			$("#yellow").css("color","black");
			$("#yellow").css("background-color","white");
			$("#blue").css("background-color","white");
			$("#black").css("background-color","white");
		}
		function addToShopCar(){
			var id=$("#currentSkinId").val();
			$.ajax({
				url:'addToShopCar.action',
				method:'post',
				data:{id:id},
				success:function(data){
					alert("加入购物车成功！");
				}
			});
		}
	</script>
	<style type="text/css">
		#pic tr td{
			border: 1px solid white;
		}
		#pic tr td:hover{
			border: 1px solid red;
		}
		.color{
			margin-left: 20px;
			display:inline-block;
			width: 50px;
			height: 30px;
			line-height: 30px;
			font-size: 14px;
			font-family: "Microsoft YaHei";
			background-color: white;
			text-align: center;
			text-decoration: none;
			color: black;
		}
		.bu{
			margin-left: 40px;
			display:inline-block;
			width: 150px;
			height: 60px;
			line-height: 60px;
			font-size: 26px;
			font-family: "Microsoft YaHei";
			background-color: red;
			text-align: center;
			text-decoration: none;
			color: white;
		}
		.bu:hover,.bu:link,.bu:visited{
			color: white;
			text-decoration: none;
			background-color: #D00000;
		}
	</style>
</head>
<body>
<jsp:include page="head_2.jsp"></jsp:include>
<input type="hidden" id="currentUser" value="${currentUser.userName }"/>
<div style="width: 90%;padding: auto;margin: auto;" id="lb">
	<b style="margin-top: 30px;font-size: 16px;">|&nbsp;&nbsp;商品详情</b>
	<div style="width: 100%;border: 1px solid #e4eaed;height: 500px;margin-top: 20px;">
		<div class="col-md-4" style="border-right: 1px solid #e4eaed;height: 100%;">
			<br>
			<div align="center">
				<img alt="" src="${currentSkin.skinPicture }" width="220" height="300">
			</div>
			<hr>
			<div>
				<table style="border-collapse:separate; border-spacing:10px 0px;" id="pic">
					<tr>
						<td><a href="#"><img src="images/5.jpg" width="60" height="80" style="padding: 5px;"/></a></td>
						<td><a href="#"><img src="images/4.jpg" width="60" height="80" style="padding: 5px;"/></a></td>
						<td><a href="#"><img src="images/3.jpg" width="60" height="80" style="padding: 5px;"/></a></td>
						<td><a href="#"><img src="images/2.jpg" width="60" height="80" style="padding: 5px;"/></a></td>
						<td><a href="#"><img src="images/1.jpg" width="60" height="80" style="padding: 5px;"/></a></td>
					</tr>
				</table>
			</div>
			
		</div>
		<div class="col-md-8">
			<br>
			<b style="margin-top: 30px;font-size: 16px;">${currentSkin.skinHero }--${currentSkin.skinName }--${currentSkin.skinType }级皮肤</b>
			<div style="width: 100%;background-color: red;height: 100px;margin-top: 20px;">
				<br>
				<span style="margin-left: 20px;color: white;font-size: 14px;">参&nbsp;考&nbsp;价：&nbsp;&nbsp;¥<font size="3" style="font-weight: 800;text-decoration: line-through;"><fmt:formatNumber value="${currentSkin.skinPrice }" pattern="#.00"/></font></span>
				<br>
				<span style="margin-left: 20px;color: white;font-size: 14px;">联&nbsp;盟&nbsp;价：&nbsp;&nbsp;¥<font size="5" style="font-weight: 800;"><fmt:formatNumber value="${currentSkin.skinPrice * currentSkin.skinDiscount * 0.1 }" pattern="#.00"/></font></span>
				<span style="float: right;color: white;font-size: 14px;margin-right: 20px;">折扣剩余&nbsp;&nbsp;1天8小时12分</span>
			</div>
			<br>
			<span><font color="gray">发货速度：</font>&nbsp;&nbsp;发放到您的QQ只需&nbsp;&nbsp;<font color="red" style="font-weight: 800" size="3">5</font>&nbsp;&nbsp;分钟！客服24小时不间断为您服务！</span>
			<br>
			<br>
			<span><font color="gray">选择皮肤颜色：</font></span>
			<a href="javascript:void(0)" class="color" id="black" onclick="click_black()">黑色</a>
			<a href="javascript:void(0)" class="color" id="yellow" onclick="click_yellow()">黄色</a>
			<a href="javascript:void(0)" class="color" id="blue" onclick="click_blue()">蓝色</a>
			<a href="javascript:void(0)" class="color" id="green" onclick="click_green()">绿色</a>
			<br>
			<br>
			<span><font color="gray">竭诚服务：</font>&nbsp;&nbsp;购买皮肤后一个月内再次购买可享受9.9折优惠！</span>
			<br>
			<br>
			<span><font color="gray">支持：</font>&nbsp;&nbsp;购买皮肤到特定大区后可随时享受这款皮肤所带来的超级视觉效果！</span>
			<br>
			<br>
			<br>
			<br>
			<a href="goOrderDetail.action?id=${currentSkin.id }" class="bu">购买</a>
			<a href="javascript:void(0)" onclick="addToShopCar()" class="bu" style="width: 220px;">加入购物车</a>
			<input type="hidden" id="currentSkinId" value="${currentSkin.id }"/>
		</div>
	</div>
</div>
<br>
<hr style="width: 90%;">
<br>
<jsp:include page="foot.jsp"></jsp:include>

</body>
</html>