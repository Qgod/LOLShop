<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>联盟商城--订单支付</title>
<script src="js/jquery-2.1.4.min.js"></script>
	<link rel="stylesheet"
		href="bootstrap3/css/bootstrap.min.css">
	<link rel="stylesheet"
		href="bootstrap3/css/bootstrap-theme.min.css">
	<script
		src="bootstrap3/js/bootstrap.min.js"></script>
	<script src="js/bootstrap-table.js"></script>
	<link rel="stylesheet" type="text/css" href="css/index.css">
<style type="text/css">
#p{
 display: inline-block;
 width: 150px;
 height: 40px;
 line-height: 40px;
 background-color: red;
 text-align: center;
 color: white;
 text-decoration: none;
}
#p:hover{
text-decoration: none;
}
#su{
 display: inline-block;
 width: 150px;
 height: 40px;
 line-height: 40px;
 background-color: red;
 text-align: center;
 color: white;
 text-decoration: none;
 float: right;
}
#su:hover{
text-decoration: none;
}
</style>
<script type="text/javascript">
$(function(){
	if($("#currentUser").val()==""){
		if(confirm("请先登录!")){
			window.location.href="login.jsp";
		}else{
			window.location.href="login.jsp";
		}
	}else if ($("#currentSkin_order").val() == "") {
		window.location.href = "order.jsp";
		return;
	}
})
	function show(){
		$("#n").css("display","inline-block");
		if($("#currentUser").val()==""){
			if(confirm("请先登录!")){
				window.location.href="login.jsp";
			}else{
				window.location.href="login.jsp";
			}
		}
	}
	
	function checkQQ(){
		if($("#qq").val()==""){
			alert("请输入游戏ID！");
			return false;
		}else{
			$.ajax({
				url:'submitOrder.action',
				method:'post',
				success:function(data){
					window.location.href="payMoney.jsp";
				}
			});
		}
	}
</script>
</head>
<body>
<input type="hidden" id="currentUser" value="${currentUser.userName }"/>
<input type="hidden" id="currentSkin_order" value="${currentSkin_order }"/>
	<jsp:include page="head_1.jsp"></jsp:include>
	<div id="logoandsearch">
		<div class="col-md-5" style="margin-top:30px; "><img src="images/logo.png"></div>
		<div class="col-md-4"></div>
		<div class="col-md-3" style="height: 100px;margin-top: 30px;line-height: 100px;text-align: center;">
		</div>
	</div>
	<br>
	<div style="width: 85%;padding: auto;margin: auto;">
		<b>填写并核对订单信息</b>
	</div>
	<br>
	<div style="padding: auto;margin: auto;width: 88%;border: 1px solid #e4eaed;margin-left: 100px;">
		<br>
		<span style="margin-left: 20px;"><b>收货人信息</b></span>
		<br>
		<br>

		<div style="border-bottom: 1px solid #e4eaed;">
			<label style="display: inline-block;margin-left: 20px;">游戏ID：</label>
			<input type="text" class="form-control" style="width: 250px;display: inline-block;" id="qq"/>
			<br><br>
		</div>
		<br>
		<div style="border-bottom: 1px solid #e4eaed;">
			<label style="display: inline-block;margin-left: 20px;">选择大区：</label>
			<select class="form-control" onclick="show()" style="width: 250px;display: inline-block;">
				<option>艾欧尼亚</option>
				<option>祖安</option>
				<option>诺克萨斯</option>
				<option>皮尔特沃夫</option>
				<option>战争学院</option>
				<option>黑色玫瑰</option>
				<option>钢铁烈阳</option>
				<option>征服之海</option>
			</select>
			<input type="text" class="form-control" disabled="disabled" id="n" style="width: 250px;display: none;" value="丶丨奥利奥丨"/>
			<br><br>
		</div>
		
		<div style="border-bottom: 1px solid #e4eaed;">
			<br>
			<label style="display: inline-block;margin-left: 20px;">支付方式：</label>
			<a id="p" href="javascript:void(0)">账户余额支付</a>
			
			<br><br>
		</div>
		<div style="border-bottom: 1px solid #e4eaed;">
			<br><br>
			<table class="table">
				<tr>
					<th>商品</th>
					<th>价格</th>
					<th>数量</th>
					<th>状态</th>
				</tr>
				
				<c:forEach var="list" items="${currentSkin_order }">
					<tr>
						<td>
							<img alt="" src="${list.skin.skinPicture }" width="70" height="100">
							${list.skin.getSkinName() }--${list.skin.getSkinHero() }--${list.skin.getSkinType() }
						</td>
						<td style="line-height: 100px;">¥<fmt:formatNumber value="${list.skin.getSkinPrice() * list.skin.getSkinDiscount() * 0.1 }" pattern="#.00"/></td>
						<td style="line-height: 100px;">X&nbsp;&nbsp;1</td>
						<td style="line-height: 100px;">有货</td>
					</tr>
				</c:forEach>
				
			</table>
			<div style="float: right;">
			<br>
				<font color="red" size="3">${currentSkin_order.size() }</font>件商品，总商品金额：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
				<font color="red" size="3">¥<fmt:formatNumber value="${allMoney }" pattern="#.00"/></font>
				<br>
				<br>
				<a href="javascript:void(0)" id="su" onclick="checkQQ()">提交订单</a>
			</div>
		</div>
		
	</div>
	<div style="clear:both;height: 30px;"></div>
		<hr style="border-bottom: 1px solid #e4eaed;width: 95%;">
		<br>
	<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>