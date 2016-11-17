<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>后台管理</title>
	<script type="text/javascript" src="../js/jquery-3.1.0.min.js"></script>
	<script type="text/javascript" src="../JqueryUI/jquery-ui.min.js"></script>
	<script type="text/javascript" src="../js/LOL_Skin.js"></script>
	<script type="text/javascript" src="../bootstrap3/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="../css/LOL_Skin.css">
	<link rel="stylesheet" type="text/css" href="../JqueryUI/jquery-ui.min.css">
	<style type="text/css">
		image{
			width: 400px;
			height: 400px;
		}
	</style>
	<script type="text/javascript">
	
		function addBanner(){
			$("#myallbanner").attr("src","allBanner.action");
		}
		function getAllOrder(){
			$("#myallorder").attr("src","All_Order.jsp");
		}
	</script>
</head>
<body>
	<div>
		<ul id="nav" class="nav clearfix">
			<li class="nLi">
				<h3><a href="LoL_Skin.jsp">联盟商城后台管理</a></h3>
			</li>
			<li class="nLi">
				<h3><a href="#">皮肤管理</a></h3>
					<ul class="sub">
						<li><a href="#" id="show-skin">查看皮肤</a></li>
						<li><a href="#" id="new-skin">新增新皮肤</a></li>
					</ul>
			</li>
			<li class="nLi">
				<h3><a href="#">订单管理</a></h3>
				<ul class="sub">
					<li><a href="javascript:getAllOrder()" id="show-all-order">所有订单</a></li>
				</ul>
			</li>
			<li class="nLi">
				<h3><a href="#">Banner管理</a></h3>
				<ul class="sub" style="width: 116px">
					<li><a href="#" id="new-banner">新增Banner</a></li>
					<li><a href="javascript:addBanner()" id="show-banner">显示Banner</a></li>
				</ul>
			</li>	
			<li class="nLi" style="float: right;">
				<h3><a href="#"><s:property value="#session.manager.userName"/></a></h3>
				<ul class="sub" style="width: 68px;">
					<li><a href="Admin_Login.jsp">退出</a></li>
				</ul>
			</li>
		</ul>
	</div>
	<!-- 以上为导航 -->
	<div id="allskinimg" class="allskinimg">
		
	</div>
	
	<!-- 
		以下图方便以及能力有限，全部暴力采用iframe来抒发我的情感 如要修改，看注释。
		js统一写在了 LOL_Skin.js 里面，理论就是该谁隐藏该谁显示的问题。
	-->

	<div id="all-skin" class="all-skin">
		<iframe src="All_Skin.jsp" width="100%" height="900" id="myiframe"  ></iframe>
	</div>
	<!-- 以上为所有英雄概览.如要修改 在 AllHero.html -->
	
	<div id="banner-form" class="banner-form">
		<iframe src="Add_Banner.jsp" width="100%" height="800" id="myaddbaner" ></iframe>
	</div>
	<!-- 以上是添加Banner，如要修改 在Add_Banner.html -->

	<div id="show-all-banner" class="show-all-banner">
		<iframe src="Show_All_Banner.jsp" width="100%" height="700" id="myallbanner" ></iframe>
	</div>
	<!-- 以上是显示所有banner,如要修改 在 Show_All_Banner.html  -->

	<div id="add-new-skin" class="add-new-skin">
		<iframe src="Add_Skin.jsp" width="100%" height="800" id="myaddskin"></iframe>
	</div>
	<!-- 以上是增加新皮肤，如要.. 在 Add_Skin.html -->

	<div id="all-order" class="all-order">
		<iframe src="#" width="100%" height="500" id="myallorder"></iframe>
	</div>
	<!-- All_Order.html -->
</body>
</html>