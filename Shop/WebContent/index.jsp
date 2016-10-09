<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>联盟皮肤商城</title>
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
		function gojptj(){
			 window.location.hash = "#jptj";   
		}
		function godjpz(){
			 window.location.hash = "#djpz";   
		}
		function gocymtj(){
			 window.location.hash = "#cymtj";   
		}
		function gommtj(){
			 window.location.hash = "#mmtj";   
		}
		$(function(){
			$("#searchByLike").click(function(){
				var searchString=$("#searchString").val();
				if($("#searchString").val()==""){
					window.open("list.jsp");
				}else{
					$.ajax({
						url:'search_like.action',
						method:'post',
						data:{searchString:searchString},
						success:function(data){
							window.open("list.jsp");
						}
					});
				}
			})
		})
		
	</script>
</head>
<body>
	<jsp:include page="head_1.jsp"/>
	
	<div id="logoandsearch">
		<div class="col-md-5" style="margin-top:30px; "><img src="images/logo.png"></div>
		<div class="col-md-7" id="search">
			<input type="text" style="width: 400px;height: 40px;border: 2px solid red;float: left;margin-top: 60px;" placeholder="请输入关键字..." id="searchString">
			<a href="javascript:void(0)" id="searchByLike">搜索</a>
		</div>
	</div>

	<div style="width: 100%;height: 400px;">
		<div style="width: 100%;height: 400px;padding: auto;margin: auto;">
			<table style="border-collapse:collapse;">
				<tr>
					<td style="width: 15%;">
						<div style="height: 400px;">
							<div style="width: 100%;background-color: red;height: 40px;text-align: center;line-height: 40px;">
								<b>全部商品分类</b>
							</div>
							<div style="width: 100%;height: 360px;">
								<dl id="fenlei">
									<dt>&nbsp;&nbsp;英雄类别</dt>
									<table style="border-collapse:   separate;   border-spacing:22px 10px;">
										<tr>
											<td><a href="searchSkinBySkinHeroType.action?skinHeroType=射手">射手</a></td>
											<td><a href="searchSkinBySkinHeroType.action?skinHeroType=战士">战士</a></td>
											<td><a href="searchSkinBySkinHeroType.action?skinHeroType=法师">法师</a></td>
										</tr>
										<tr>
											<td><a href="searchSkinBySkinHeroType.action?skinHeroType=坦克">坦克</a></td>
											<td><a href="searchSkinBySkinHeroType.action?skinHeroType=刺客">刺客</a></td>
											<td><a href="searchSkinBySkinHeroType.action?skinHeroType=潜行">潜行</a></td>
										</tr>
										<tr>
											<td><a href="searchSkinBySkinHeroType.action?skinHeroType=辅助">辅助</a></td>
											<td><a href="searchSkinBySkinHeroType.action?skinHeroType=推进">推进</a></td>
											<td><a href="#"></a></td>
										</tr>

									</table>

									<dt>&nbsp;&nbsp;皮肤类别</dt>
									<table style="border-collapse:   separate;   border-spacing:22px 10px;">
										<tr>
											<td><a href="searchSkin.action?skinType=王者">王者</a></td>
											<td><a href="searchSkin.action?skinType=史诗">史诗</a></td>
											<td><a href="searchSkin.action?skinType=勇士">勇士</a></td>
										</tr>
										<tr>
											<td><a href="searchSkin.action?skinType=传说">传说</a></td>
											<td><a href="searchSkin.action?skinType=限定">限定</a></td>
											<td><a href="searchSkin.action?skinType=普通">普通</a></td>
										</tr>
									</table>

									<dt>&nbsp;&nbsp;皮肤系列</dt>
									<table style="border-collapse:   separate;   border-spacing:22px 10px;">
										<tr>
											<td><a href="searchSkin.action?skinSenes=泳池">泳池</a></td>
											<td><a href="searchSkin.action?skinSenes=电玩">电玩</a></td>
											<td><a href="searchSkin.action?skinSenes=计划">源计划</a></td>
										</tr>
										<tr>
											<td><a href="searchSkin.action?skinSenes=三国">三国</a></td>
											<td><a href="searchSkin.action?skinSenes=冠军">冠军</a></td>
											<td><a href="searchSkin.action?skinSenes=猩红">猩红</a></td>
										</tr>
										<tr>
											<td><a href="searchSkin.action?skinSenes=钢铁">钢铁</a></td>
											<td><a href="searchSkin.action?skinSenes=足球">足球</a></td>
											<td><a href="searchSkin.action?skinSenes=死兆星">死兆星</a></td>
										</tr>
									</table>
								</dl>
							</div>
						</div>
					</td>
					<td>
						<div style="height: 40px;" id="nav">
					<ul>
						<li><a href="a.jsp">首页</a></li>
						<li><a href="skinList.action">商品列表</a></li>
						<li><a href="javascript:viod(0)" onclick="javascript:gojptj()">极品推荐</a></li>
						<li><a href="javascript:viod(0)" onclick="javascript:godjpz()">顶级配置</a></li>
						<li><a href="javascript:viod(0)" onclick="javascript:gocymtj()">帅哥推荐</a></li>
						<li><a href="javascript:viod(0)" onclick="javascript:gommtj()">靓女推荐</a></li>
					</ul>
					</div>
					<div id="myCarousel" class="carousel slide" style="height: 360px;;padding: auto;margin: auto;">
					       <ol class="carousel-indicators">
					         <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					         <li data-target="#myCarousel" data-slide-to="1"></li>
					         <li data-target="#myCarousel" data-slide-to="2"></li>
					         <li data-target="#myCarousel" data-slide-to="3"></li>
					         <li data-target="#myCarousel" data-slide-to="4"></li>
					       </ol>
					       <div class="carousel-inner">
					          <c:forEach var="banner" items="${bannerList }" varStatus="status">
					          	<c:choose>
					          		<c:when test="${status.index==0}">
					          			<div class="active item"><a href="searchSkin.action?skinSenes=${banner.bannerParameter }"><img src="${banner.bannerPicture }" style="width: 100%;height: 360px;"/></a></div>
					          		</c:when>
					          		<c:otherwise>
						          		<div class="item" ><a href="searchSkin.action?skinSenes=${banner.bannerParameter }"><img src="${banner.bannerPicture }" style="width: 100%;height: 360px;"/></a></div>
					          		</c:otherwise>
					          	</c:choose>
					          </c:forEach>
					          
					       </div>
					       <a class="carousel-control left" href="#myCarousel" data-slide="prev">
					       	<img alt="" src="images/left.png" style="width:40px; height:40px; border-radius:100%; overflow:hidden;margin-top: 100%;">
					       </a>
					       <a class="carousel-control right" href="#myCarousel" data-slide="next" id="next">
					       	<img alt="" src="images/right.png" style="width:40px; height:40px; border-radius:100%; overflow:hidden;margin-top: 100%;">
					       </a>
					  </div>
					</td>
				</tr>
			</table>

			<div id="nav_right" style="width: 70%;float: left;">
				
			</div>
			
		</div>
	</div>

	<div style="width: 100%;height: 920px;background-color: #e4eaed;">
		<div style="width: 90%;padding: auto;margin: auto;">
		<div style="height: 50px;" id="jptj"></div>
			<b style="margin-left:50px; font-size: 20px;color: #788595;">|&nbsp;极品推荐</b>
			<hr style="border-bottom: 4px solid gray;width: 97%;">
			<div style="height: 20px;"></div>
			<table style="margin-left: 10px;border-collapse:separate; border-spacing:15px 15px;" id="tuijian">
				<tr>
				<c:forEach var="skin" items="${skinList_type }" varStatus="status">
					<c:choose>
						<c:when test="${status.index<5 }">
							<td style="text-align: center;">
								<a href="skin_message.action?id=${skin.id }">
									<div style="width: 220px;height: 360px;background-color: white;">
										<img src="${skin.skinPicture }" width="180" height="250" style="margin-top:20px;  ">
										<hr>
										<span>${skin.skinHero }--${skin.skinName }</span>
										<br>
										<span>原价：<font color="red" style="text-decoration: line-through;">¥${skin.skinPrice }</font></span>
										<span>现价：<font color="red">¥<fmt:formatNumber value="${skin.skinPrice * skin.skinDiscount * 0.1 }" pattern="#.##"/></font></span>
									</div>
								</a>
							</td>
						</c:when>
					</c:choose>
				</c:forEach>
				</tr>

				<tr>
				<c:forEach var="skin" items="${skinList_type }" varStatus="status">
					<c:choose>
						<c:when test="${status.index>=5 && status.index<10 }">
							<td style="text-align: center;">
								<a href="skin_message.action?id=${skin.id }">
									<div style="width: 220px;height: 360px;background-color: white;">
										<img src="${skin.skinPicture }" width="180" height="250" style="margin-top:20px;  ">
										<hr>
										<span>${skin.skinHero }--${skin.skinName }</span>
										<br>
										<span>原价：<font color="red" style="text-decoration: line-through;">¥${skin.skinPrice }</font></span>
										<span>现价：<font color="red">¥<fmt:formatNumber value="${skin.skinPrice * skin.skinDiscount * 0.1 }" pattern="#.##"/></font></span>
									</div>
								</a>
							</td>
						</c:when>
					</c:choose>
				</c:forEach>
				</tr>
			</table>


			<div style="height: 50px;" id="djpz"></div>
			<b style="margin-left:50px; font-size: 20px;color: #788595;">F1&nbsp;|&nbsp;顶级配置</b>
			<hr style="border-bottom: 4px solid red;width: 97%;">
			
			<div style="width: 100%;height: 660px;">
			<div style="height: 20px;"></div>
				<div class="col-md-3" style="height: 100%;border-right: 1px solid lightgray;background-color: #F4F7FA;">
					<a href="skin_message.action?id=13">
						<img src="images/5.jpg" width="100%" height="400px">
					</a>
					<br>
					<br>
					<span id="dp">&nbsp;&nbsp;&nbsp;&nbsp;李青是一个近战战士型英雄，拥有很高的机动性和爆发力，单挑和小规模团战能力很强，同时李青也是非常优秀的打野英雄，非常擅长野区的遭遇战和Gank，是非常致命的英雄人物。<br>
					&nbsp;&nbsp;&nbsp;&nbsp;拥有龙瞎，将会使你的技术和意识有一个质的飞跃，还在等什么，快快戳我抢购吧！！！</span>
				</div>
				<div class="col-md-9" style="height: 100%;background-color: #F4F7FA;">
					<table style="border-collapse:separate; border-spacing:20px 20px;margin-left: 20px;" id="dp2">
						<tr>
						<c:forEach var="skin" items="${skinList_price }" varStatus="status">
							<c:choose>
								<c:when test="${status.index<4 }">
									<td style="text-align: center;">
										<a href="skin_message.action?id=${skin.id }">
											<div style="width: 180px;height: 300px;background-color: white;">
												<img src="${skin.skinPicture }" width="150" height="200" style="margin-top:20px;  ">
												<hr>
												<span>${skin.skinHero }--${skin.skinName }</span>
												<br>
												<span>原价：<font color="red" style="text-decoration: line-through;">¥${skin.skinPrice }</font></span>
												<span>现价：<font color="red">¥<fmt:formatNumber value="${skin.skinPrice * skin.skinDiscount * 0.1 }" pattern="#.##"/></font></span>
											</div>
										</a>
									</td>
								</c:when>
							</c:choose>
						</c:forEach>
						</tr>
						<tr>
						<c:forEach var="skin" items="${skinList_price }" varStatus="status">
							<c:choose>
								<c:when test="${status.index>=4 && status.index<8 }">
									<td style="text-align: center;">
										<a href="skin_message.action?id=${skin.id }">
											<div style="width: 180px;height: 300px;background-color: white;">
												<img src="${skin.skinPicture }" width="150" height="200" style="margin-top:20px;  ">
												<hr>
												<span>${skin.skinHero }--${skin.skinName }</span>
												<br>
										<span>原价：<font color="red" style="text-decoration: line-through;">¥${skin.skinPrice }</font></span>
										<span>现价：<font color="red">¥<fmt:formatNumber value="${skin.skinPrice * skin.skinDiscount * 0.1 }" pattern="#.##"/></font></span>
											</div>
										</a>
									</td>
								</c:when>
							</c:choose>
						</c:forEach>
						</tr>
					</table>


				</div>
				<div style="clear: both;height: 50px;" id="cymtj"></div>
				<b style="margin-left:50px;font-size: 20px;color: #788595;">F2&nbsp;|&nbsp;纯爷们推荐</b>
				<hr style="border-bottom: 4px solid red;width: 97%;">
				
				<div style="width: 100%;height: 660px;">
				<div style="height: 20px;"></div>
					<div class="col-md-3" style="height: 100%;border-right: 1px solid lightgray;background-color: #F4F7FA;">
						<a href="skin_message.action?id=32">
							<img src="images/Graves_3.jpg" width="100%" height="400px">
						</a>
						<br>
						<br>
						<span id="dp">&nbsp;&nbsp;&nbsp;&nbsp;格雷福斯拥有非常独特的散弹枪机制和装弹机制，他的普攻可以造成范围伤害并且能被阻挡，在使用完两发散弹之后需要一定的时间装填子弹，他的技能爆发非常可观，是一个持续输出和爆发能力兼备的AD英雄,是非常致命的英雄人物。<br>
						&nbsp;&nbsp;&nbsp;&nbsp;拥有法外狂徒，将会使你的技术和意识有一个质的飞跃，还在等什么，快快戳我抢购吧！！！</span>
						<br>
					</div>
					<div class="col-md-9" style="height: 100%;background-color: #F4F7FA;">
						<table style="border-collapse:separate; border-spacing:20px 20px;margin-left: 20px;" id="dp2">
							<tr>
						<c:forEach var="skin" items="${skinList }" varStatus="status">
							<c:choose>
								<c:when test="${status.index<4 }">
									<td style="text-align: center;">
										<a href="skin_message.action?id=${skin.id }">
											<div style="width: 180px;height: 300px;background-color: white;">
												<img src="${skin.skinPicture }" width="150" height="200" style="margin-top:20px;  ">
												<hr>
												<span>${skin.skinHero }--${skin.skinName }</span>
												<br>
										<span>原价：<font color="red" style="text-decoration: line-through;">¥${skin.skinPrice }</font></span>
										<span>现价：<font color="red">¥<fmt:formatNumber value="${skin.skinPrice * skin.skinDiscount * 0.1 }" pattern="#.##"/></font></span>
											</div>
										</a>
									</td>
								</c:when>
							</c:choose>
						</c:forEach>
						</tr>
						<tr>
						<c:forEach var="skin" items="${skinList }" varStatus="status">
							<c:choose>
								<c:when test="${status.index>=4 && status.index<8 }">
									<td style="text-align: center;">
										<a href="skin_message.action?id=${skin.id }">
											<div style="width: 180px;height: 300px;background-color: white;">
												<img src="${skin.skinPicture }" width="150" height="200" style="margin-top:20px;  ">
												<hr>
												<span>${skin.skinHero }--${skin.skinName }</span>
												<br>
										<span>原价：<font color="red" style="text-decoration: line-through;">¥${skin.skinPrice }</font></span>
										<span>现价：<font color="red">¥<fmt:formatNumber value="${skin.skinPrice * skin.skinDiscount * 0.1 }" pattern="#.##"/></font></span>
											</div>
										</a>
									</td>
								</c:when>
							</c:choose>
						</c:forEach>
						</tr>
						</table>
			</div>


			<div style="clear: both;height: 50px;" id="mmtj"></div>
				<b style="margin-left:50px;font-size: 20px;color: #788595;">F3&nbsp;|&nbsp;美眉推荐</b>
				<hr style="border-bottom: 4px solid red;width: 97%;">
				
				<div style="width: 100%;height: 660px;">
				<div style="height: 20px;"></div>
					
					<div class="col-md-3" style="height: 100%;border-right: 1px solid lightgray;background-color: #F4F7FA;">
						<a href="skin_message.action?id=31">
							<img src="images/Sona_7.jpg" width="100%" height="400px">
						</a>
						<br>
						<br>
						<span id="dp">&nbsp;&nbsp;&nbsp;&nbsp;娑娜上手难度不高，对线期除了能保护己方ADC之外骚扰对手也非常容易。她能对己方队友进行移动速度加成和治疗，还拥有一个团控技能。娑娜还可以配合自己的被动技能为敌方单位施加减速或者减少敌人输出的Debuff。距离感是使用娑娜最需要掌握的，合理运用走位能达到保护与攻击的最佳效果。<br>
						&nbsp;&nbsp;&nbsp;&nbsp;拥有sona，将会使你的技术和意识有一个质的飞跃，还在等什么，快快戳我抢购吧！！！</span>
					</div>
					
					<div class="col-md-9" style="height: 100%;background-color: #F4F7FA;">
						<table style="border-collapse:separate; border-spacing:20px 20px;margin-left: 20px;" id="dp2">
							<tr>
						<c:forEach var="skin" items="${skinList }" varStatus="status">
							<c:choose>
								<c:when test="${status.index>=8 && status.index<12 }">
									<td style="text-align: center;">
										<a href="skin_message.action?id=${skin.id }">
											<div style="width: 180px;height: 300px;background-color: white;">
												<img src="${skin.skinPicture }" width="150" height="200" style="margin-top:20px;  ">
												<hr>
												<span>${skin.skinHero }--${skin.skinName }</span>
												<br>
										<span>原价：<font color="red" style="text-decoration: line-through;">¥${skin.skinPrice }</font></span>
										<span>现价：<font color="red">¥<fmt:formatNumber value="${skin.skinPrice * skin.skinDiscount * 0.1 }" pattern="#.##"/></font></span>
											</div>
										</a>
									</td>
								</c:when>
							</c:choose>
						</c:forEach>
						</tr>
						<tr>
						<c:forEach var="skin" items="${skinList_price }" varStatus="status">
							<c:choose>
								<c:when test="${status.index>=12 && status.index<16 }">
									<td style="text-align: center;">
										<a href="skin_message.action?id=${skin.id }">
											<div style="width: 180px;height: 300px;background-color: white;">
												<img src="${skin.skinPicture }" width="150" height="200" style="margin-top:20px;  ">
												<hr>
												<span>${skin.skinHero }--${skin.skinName }</span>
												<br>
										<span>原价：<font color="red" style="text-decoration: line-through;">¥${skin.skinPrice }</font></span>
										<span>现价：<font color="red">¥<fmt:formatNumber value="${skin.skinPrice * skin.skinDiscount * 0.1 }" pattern="#.##"/></font></span>
											</div>
										</a>
									</td>
								</c:when>
							</c:choose>
						</c:forEach>
						</tr>
						</table>
		</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	
	<div style="clear:both;height: 30px;"></div>
	<hr style="border-bottom: 1px solid #e4eaed;">
	<div style="clear:both;height: 20px;"></div>
	<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>