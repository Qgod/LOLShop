<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>联盟商城--我的订单</title>
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
	if($("#currentUser").val()==""){
		if(confirm("请先登录!")){
			window.location.href="login.jsp";
		}else{
			window.location.href="login.jsp";
		}
	}
});

function del(ss){
	$.ajax({
		url:'deleteOrder.action',
		method:'post',
		data:{orderId:ss},
		success:function(data){
			if(confirm("删除成功！")){
				window.location.reload();
			}else{
				window.location.reload();
			}
		}
	});
}
</script>
<style type="text/css">
.table tr td{
	border-right:1px solid #e4eaed;
}
.table_table{
	width: 100%;
}
.table_table tr{
	border-bottom: 1px solid #e4eaed;
	height: 120px;
}
.table_table tr td{
	border: 0;
	word-break:break-all;
}
</style>
</head>
<body>
<input type="hidden" id="currentUser" value="${currentUser.userName }"/>
<jsp:include page="head_2.jsp"></jsp:include>
<div style="background-color: #F5F5F5;width: 100%;margin-top: -20px;">
	<div style="width: 90%;margin: auto;padding:auto;">
	<br>
		<div style="width: 100%;background-color: white;height: 50px;line-height: 50px;">
			&nbsp;&nbsp;&nbsp;&nbsp;<font size="2" color="black" style="font-family: Microsoft YaHei;font-weight: 600;">我的订单</font>
		</div>
		<br>
		<div style="width: 100%;background-color: white;">
			<div style="height: 5px;"></div>
			<c:forEach var="list" items="${orderMapList }" varStatus="status">
				<table class="table" style="width: 94%;margin: auto;padding: auto;border: 1px solid #e4eaed;margin-top: 20px;">
				<tr style="background-color: #F5F5F5;height: 30px;line-height: 30px;">
					<th>&nbsp;&nbsp;${list.order.buyTime }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;订单号：${list.order.orderId }</th>
					<th></th>
					<th></th>
					<th></th>
					<th><a href="orderXq.action?orderId=${list.order.orderId }">订单详情-></a></th>
				</tr>
				<tr>
					<td>
					<c:set var="second" value="${list.skinList }"></c:set>
					<c:forEach var="list222" items="${second }" varStatus="status">
						<table class="table_table">
							
							<div style="border-bottom: 1px solid #e4eaed;width: 100%;height: 120px;">
								<div class="col-md-2" style="margin-top: 10px;">
									<a href="skin_message.action?id=${list222.id }"><img alt="" src="${list222.skinPicture }" width="70" height="100"></a>
								</div>
								<div class="col-md-5" style="margin-top: 10px;">
									<a href="skin_message.action?id=${list222.id }">${list222.skinHero }--${list222.skinName }--${list222.skinType }</a>
								</div>
								<div class="col-md-3"></div>
								<div class="col-md-2" style="margin-top: 10px;">
									X&nbsp;&nbsp;1
								</div>
							</div>
						</table>
					</c:forEach>
					</td>
					<td style="text-align: center;"><span class="glyphicon glyphicon-user"></span>&nbsp;${list.order.buyer }</td>
					<td style="text-align: center;">¥<fmt:formatNumber value="${list.order.buyPrice }" pattern="#.00"/></td>
					<c:choose>
						<c:when test="${list.order.isPay==1 && list.order.buyStatus==0 }">
							<td style="text-align: center;color: red;">已付款</td>
						</c:when>
						
						<c:when test="${list.order.isPay==1 && list.order.buyStatus==1 }">
							<td style="text-align: center;color: red;">交易成功</td>
						</c:when>
						
						<c:otherwise>
							<td style="text-align: center;color: red;"><a href="payMoney.action?orderId=${list.order.orderId }">付款</a></td>
						</c:otherwise>
					</c:choose>
					
					
					<td style="text-align: center;"><a href="javascript:void(0)" onclick="del(${list.order.orderId })">删除</a></td>
				</tr>
			</table>
			</c:forEach>
			<br>
		</div>
	</div>
	
	<br>
<hr style="border-bottom: 1px solid #e4eaed;width: 95%;">
<br>
</div>



<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>