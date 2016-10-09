<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>联盟商城--皮肤列表</title>
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
	<script type="text/javascript" src="js/index.js"></script>
	
	<script type="text/javascript">
		$(function(){
			var skinHero="";
			var skinType="";
			var skinSenes="";
			$(".skinHero").click(function(){
				$(".skinHero").css("background-color","white");
				$(".skinHero").css("color","gray");
				$(this).css("background-color","red");
				$(this).css("color","white");
				if($(this).html()=="不限"){
					skinHero="";
				}else{
					skinHero=$(this).html();
				}
			});
			$(".skinType").click(function(){
				$(".skinType").css("background-color","white");
				$(".skinType").css("color","gray");
				$(this).css("background-color","red");
				$(this).css("color","white");
				if($(this).html()=="不限"){
					skinType="";
				}else{
					skinType=$(this).html();
				}
			});
			$(".skinSenes").click(function(){
				
				$(".skinSenes").css("background-color","white");
				$(".skinSenes").css("color","gray");
				$(this).css("background-color","red");
				$(this).css("color","white");
				if($(this).html()=="不限"){
					skinSenes="";
				}else{
					skinSenes=$(this).html();
				}
			});
			$("#search_skin").click(function(){
				$.ajax({
					url:'searchSkinOfRightEncoding.action',
					method:'post',
					data:{skinHero:skinHero,skinType:skinType,skinSenes:skinSenes},
					success:function(data){
						window.location.reload();
					}
				});
			});
		});
	</script>
	<style type="text/css">
	body{
		margin:0;
		padding:0;
	}
	#kc tr td{
		filter:progid:DXImageTransform.Microsoft.Shadow(color=white,direction=120,strength=3);/*ie*/
		-moz-box-shadow: 2px 2px 10px white;/*firefox*/
		-webkit-box-shadow: 2px 2px 10px white;/*safari或chrome*/
		box-shadow:2px 2px 10px white;/*opera或ie9*/
	}
	#kc tr td:hover{
		filter:progid:DXImageTransform.Microsoft.Shadow(color=gray,direction=120,strength=3);/*ie*/
		-moz-box-shadow: 2px 2px 10px gray;/*firefox*/
		-webkit-box-shadow: 2px 2px 10px gray;/*safari或chrome*/
		box-shadow:2px 2px 10px gray;/*opera或ie9*/
	}
	#lb a{
		font-family: "Microsoft Yahei";
		display:inline-block;
		margin:5px;
		padding:5px;
		font-size: 14px;
		color:gray;
		text-decoration: none;
	}
	#lb a:hover{
		color:red;
	}
	#kc tr td a font{
		font-family: "Microsoft Yahei";
		font-size: 16px;
		color:black;
		text-decoration: none;
	}
	#kc tr td a font:hover{
		color:red;
	}
	</style>
</head>
<body>
<jsp:include page="head_2.jsp"/>
<div style="width: 100%;">
	<div style="width: 90%;padding: auto;margin: auto;" id="lb">
		<b style="margin-top: 50px;font-size: 16px;">|&nbsp;&nbsp;所有商品</b>
		<hr>
			<b>英雄:</b>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinHero">不限</a>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinHero">探险家</a>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinHero">德玛西亚之力</a>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinHero">法外狂徒</a>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinHero">德玛西亚皇子</a>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinHero">戏命师</a>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinHero">未来守护者</a>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinHero">暴走萝莉</a>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinHero">虚空行者</a>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinHero">不祥之刃</a>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinHero">诡术妖姬</a>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinHero">盲僧</a>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinHero">德邦总管</a>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinHero">疾风剑豪</a>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinHero">生化魔人</a>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinHero">影流之主</a>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinHero">荆棘之兴</a>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinHero">黑暗之女</a>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinHero">深渊巨口</a>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinHero">刀锋之影</a>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinHero">虚空先知</a>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinHero">放逐之刃</a>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinHero">流浪法师</a>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinHero">曙光女神</a>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinHero">荣耀行刑官</a>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinHero">时间刺客</a>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinHero">邪恶小法师</a>
		<hr>
			<b>皮肤类别:</b>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinType">不限</a>	
			<a href="javascript:void(0)" style="margin: 5px;" class="skinType">普通</a>	
			<a href="javascript:void(0)" style="margin: 5px;" class="skinType">传说</a>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinType">史诗</a>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinType">勇士</a>	
			<a href="javascript:void(0)" style="margin: 5px;" class="skinType">王者</a>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinType">限定</a>	
		<hr>
		<b>皮肤系列:</b>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinSenes">不限</a>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinSenes">泳池</a>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinSenes">电玩</a>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinSenes">源计划</a>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinSenes">冠军</a>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinSenes">猩红</a>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinSenes">三国</a>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinSenes">钢铁</a>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinSenes">足球</a>
			<a href="javascript:void(0)" style="margin: 5px;" class="skinSenes">死兆星</a>
		<button class="btn btn-default" style="float: right;width: 100px;margin-right: 30px;" id="search_skin">搜索</button>
		<hr>
		<table id="kc" style="margin: auto;padding:auto;">
			<c:forEach var="skin" items="${skinList }" varStatus="status">
					<c:if test="${status.index%5==0 }">
						<tr></tr>
					</c:if>
					<td valign="top" style="width: 260px;margin:auto;padding:auto;padding-top: 20px;padding-bottom: 20px;text-align: center;">
						<a href="skin_message.action?id=${skin.id }" style="text-decoration: none;"><img src="${skin.skinPicture }" style="width: 180px;height: 250px;"/></a>
						<br>
						<br>
						<a href="skin_message.action?id=${skin.id }" style="text-decoration: none;padding-left: 15px;"><font size="3" color="black" style="font-family: Microsoft YaHei;">${skin.skinHero }--${skin.skinName }</font></a>
						<br>
						<span>原价：<font color="red" style="text-decoration: line-through;">¥${skin.skinPrice }</font></span>
						<span>现价：<font color="red">¥<fmt:formatNumber value="${skin.skinPrice * skin.skinDiscount * 0.1 }" pattern="#.##"/></font></span>
					</td>
			</c:forEach>
			<c:if test="${skinList.size()==0 }">
				<center>
					<font color="red" size="4">没有查询到相关商品！</font>
				</center>
			</c:if>
		</table>
	</div>
</div>
<div style="clear:both;height: 30px;"></div>
<hr style="border-bottom: 1px solid #e4eaed;width: 90%;"/>
<div style="clear:both;height: 20px;"></div>

<jsp:include page="foot.jsp"/>
</body>
</html>