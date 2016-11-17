<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>联盟商城--订单详情</title>
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
		if (confirm("请先登录!")) {
			window.location.href = "login.jsp";
			return ;
		} 
	}else if ($("#size").val() == "") {
		window.location.href = "order.jsp";
		return;
	}
	
});
</script>

<style type="text/css">
a {
	text-decoration: none;
	font-size: 2px;
	color: black;
}

a:hover {
	text-decoration: none;
	color: #E45050;
}

.table{
	
}

.table tr{
	background-color: white;
}


</style>
</head>
<body>
<jsp:include page="head_2.jsp"></jsp:include>
<input type="hidden" id="currentUser" value="${currentUser.userName }"/>
<input type="hidden" id="size" value="${orderSkinList.size() }"/>
	<div style="background-color: #F5F5F5; width: 100%; height: 500px;margin-top: -20px;">
		<div style="width: 90%; margin: auto; padding: auto;">
			<br>
			<a href="a.jsp">皮肤首页</a>><a href="order.jsp">我的订单</a>><font
				style="font-size: 2px;">订单详情</font> <br> <br>
			<table class="table" style="width: 100%;">
				<thead>
					<tr style="background-color: #F9F9F9;">
						<td style="width: 40%">名称</td>
						<td style="width: 10%">类别</td>
						<td style="width: 10%">数量</td>
						<td style="width: 10%">单价</td>
					</tr>
				</thead>
				<tbody>
				 <c:forEach var="list" items="${orderSkinList }">
				 	<tr>
						<td style="width: 40%"><a href="skin_message.action?id=${list.id }"><img src="${list.skinPicture }" style="width: 50px;height: 70px;">&nbsp;&nbsp;&nbsp;&nbsp;${list.skinHero }--${list.skinName }--${list.skinType }</a></td>
						<td  style="line-height: 70px;">${list.skinHeroType }</td>
						<td  style="line-height: 70px;">1</td>
						<td  style="line-height: 70px;"><fmt:formatNumber value="${list.skinPrice * list.skinDiscount * 0.1 }" pattern="#.00"/></td>
					</tr>
				 </c:forEach>
					<tr>
						<td style="width: 40%"></td>
						<td style="width: 10%"></td>
						<td style="width: 10%"></td>
						<td style="width: 10%"></td>
						<td style="width: 10%"><font style="font-size: 3px;">商品总额：¥<fmt:formatNumber value="${allMoney }" pattern="#.00"/></font><br>
							   <font style="font-size: 3px;">应付总额：</font><font style="font-size: 25px;color: red;">¥<fmt:formatNumber value="${allMoney }" pattern="#.00"/></font>
						</td>
					</tr>
				</tbody> 
			</table>
		</div>
	</div>
	
	<div style="clear:both;height: 30px;"></div>
		<hr style="border-bottom: 1px solid #e4eaed;width: 95%;">
		<br>
	<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>