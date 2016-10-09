<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>联盟商城--购物车</title>
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
			} else {
				window.location.href = "login.jsp";
			}
		}
		var idList=new Array();
		var stringId="";
		/* $(".xz").click(function(){
			var id=$(this).attr("id");
			var check=$(this).is(":checked");
			if(check==true){
				idList.push(id);
			}
		}); */
		$(".qx").click(function(){
			if($(this).is(':checked')){
				$(".xz").prop('checked',true);
				$(".qx").prop('checked',true);
			}else{
				$(".xz").prop('checked',false);
				$(".qx").prop('checked',false);
			}
			var allMoney=0;
			$('.xz').each(function(){
				var money=0;
				if($(this).is(':checked')){
					var currentId=$(this).attr('id');
					money=$("input[name='"+currentId+"']").val();
					allMoney=money*1+allMoney*1;
					allMoney=allMoney.toFixed(2);
				}
				$("#allMoney").html(allMoney);
			});	
			
		});
		
		$(".xz").click(function(){
			var no=0;
			var allMoney=0;
			$('.xz').each(function(){
				var money=0;
				if($(this).is(':checked')){
					var currentId=$(this).attr('id');
					money=$("input[name='"+currentId+"']").val();
					allMoney=money*1+allMoney*1;
					allMoney=allMoney.toFixed(2);
				}else{
					no++;
				}
				$("#allMoney").html(allMoney);
			});	
			if(no>0){
				$(".qx").prop('checked',false);
			}
			if(no==0){
				$(".qx").prop('checked',true);
			}
		});
		
		$("#qqq").click(function(){
			$('.xz').each(function(){	
				if($(this).is(':checked'))
					idList.push($(this).attr('id'));		
			});	
			for(var i=0;i<idList.length;i++){
				stringId = stringId+idList[i]+",";
			}
			stringId = stringId.substring(0, stringId.length-1);
			$.ajax({
				url:'shopCarPay.action',
				method:'post',
				data:{stringId:stringId},
				success:function(data){
					window.location.href="pay.jsp";
				}
			});
		});
			
	})
	
	
		
</script>
<style type="text/css">
#qqq {
	text-decoration: none;
	text-align: center;
	line-height: 50px;
	height: 50px;
	width: 100px;
	color: white;
	background-color: red;
	float: right;
	display: block;
	font-size: 20px;
	font-weight: 800;
}

#qqq:hover {
	background-color: #D00000;
	text-decoration: none;
}
</style>
</head>
<body>
	<jsp:include page="head_1.jsp"></jsp:include>
	<input type="hidden" id="currentUser" value="${currentUser.userName }" />
	<br>
	<div class="row"
		style="margin-top: 20px; width: 90%; padding: auto; margin: auto;">

		<div class="col-md-12" style="margin-left: 60px;">

			<div style="display: block; margin-bottom: 20px;">
				<div class="col-md-6">
					<img alt="" src="images/logo.png"
						style="width: 300px; height: 70px;">
				</div>
				<div class="col-md-6">
					<div style="margin-right: 0px; margin-left: 260px;">
						<img alt="" src="images/shopcar.jpg"
							style="width: 100px; height: 60px;"><br> &nbsp;&nbsp;我的购物车
					</div>
				</div>
			</div>
			<br> <br> <br>
			<div style="display: block; width: 90%; margin-top: 20px;">
				<div class="panel panel-default">
					<div class="panel-body">
						<div style="display: block;">
							<div
								style="width: 200px; position: relative; overflow: hidden; text-align: left; float: left; height: 32px; line-height: 32px;">
								<div style="display: inline; vertical-align: middle;">
									<input type="checkbox" style="width: 15px; height: 15px;" class="qx">
									<label style="position: absolute; z-index: 2;"></label> 全选
								</div>
							</div>

							<div
								style="width: 250px; float: left; height: 32px; line-height: 32px; text-align: left;">商品名称</div>
							<div
								style="width: 150px; float: left; height: 32px; line-height: 32px; text-align: left;">类型</div>
							<div
								style="width: 150px; float: left; height: 32px; line-height: 32px; text-align: left;">数量</div>
							<div
								style="width: 150px; float: left; height: 32px; line-height: 32px; text-align: left;">单价（元）</div>
						</div>
					</div>
				</div>
			</div>

			<div style="display: block; float: inherit; width: 90%;">
				<c:if test="${shopCarList.size()==0 }">
					您的购物车空空如也！快去添加商品吧！
				</c:if>
				<c:forEach var="list" items="${shopCarList }">
					<div
					style="height: 150px; border: 1px solid lightgray; padding: 15px;">

					<div
						style="width: 200px; position: relative; overflow: hidden; text-align: left; float: left; height: 100px; line-height: 32px;"">
						<div style="float: left;">
							<input type="checkbox"
								style="float: left; margin-left: 15px; width: 15px; height: 15px;" id="${list.id }" class="xz">
						</div>

						<div style="float: left;">
							<img alt="" src="${list.skinPicture }"
								style="width: 70px; height: 100px; margin-left: 20px;">
						</div>
					</div>

					<div
						style="width: 250px; float: left;  line-height: 100px; text-align: left;">${list.skinHero }--${list.skinName }</div>
					<div
						style="width: 150px; float: left;  line-height: 100px; text-align: left;">${list.skinType }</div>
					<div
						style="width: 150px; float: left;  line-height: 100px; text-align: left;">1</div>
					<div
						style="width: 150px; float: left;  line-height: 100px; text-align: left;">¥<fmt:formatNumber value="${list.skinPrice * list.skinDiscount * 0.1 }" pattern="#.00"/></div>
					<input type="hidden"  name="${list.id }" value="${list.skinPrice * list.skinDiscount * 0.1}"/>
				</div>
				</c:forEach>
			
			

			</div>

			<div
				style="padding: 15px; display: block; float: inherit; width: 90%; margin-top: 20px; border: 1px solid lightgray;">

				<div style="display: block;">
					<div
						style="width: 200px; position: relative; overflow: hidden; text-align: left; float: left; height: 32px; line-height: 32px;">
						<div style="display: inline; vertical-align: middle;">
							<input type="checkbox" style="width: 15px; height: 15px;"  class="qx">
							<label style="position: absolute; z-index: 2;"></label> 全选
						</div>
					</div>



					<a href="#" id="qqq">结算</a>
					<div style="float: right;margin-right: 30px;line-height: 50px;">总金额：<font size="4" color="red" id="allMoney">¥0.00</font></div>
				</div>

			</div>

		</div>


	</div>

	<div style="clear: both; height: 30px;"></div>
	<hr style="border-bottom: 1px solid #e4eaed; width: 95%;">
	<br>
	<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>