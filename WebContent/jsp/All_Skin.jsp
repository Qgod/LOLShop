<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>所有英雄皮肤概览</title>
<script type="text/javascript" src="../js/jquery-3.1.0.min.js"></script>
<script type="text/javascript" src="../js/LOL_Skin.js"></script>
<script type="text/javascript" src="../JqueryUI/jquery-ui.min.js"></script>
<script type="text/javascript" src="../bootstrap3/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="../bootstrap3/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="../JqueryUI/jquery-ui.min.css">
<link rel="stylesheet" type="text/css" href="../css/All_Skin.css">
</head>
<body>
	<div id="all-hero">
		<h3>坦克</h3>
		<div>
			<s:iterator value="#session.tanke">
				<div class="col-sm-6 col-md-3">
					<div class="thumbnail">
						<img src="${skinPicture}" alt="皮肤">
						<div class="caption">
							<h4>皮肤名：${skinName}</h4>
							<p>所属英雄：${skinHero}</p>
							<p class="changeStatus">
								<s:if test="skinStatus==1">
								上下架：<img alt="" src="../images/open.png">
								</s:if>
								<s:else>
								上下架：<img alt="" src="../images/close.png">
								</s:else>
								<input type="hidden" value="${skinStatus }" class="thestatus">
								<input type="hidden" value="${id }" class="theid">
							</p>
						</div>
					</div>
				</div>
			</s:iterator>
		</div>
		<h3>法师</h3>
		<div>
			<s:iterator value="#session.fashi">
				<div class="col-sm-6 col-md-3">
					<div class="thumbnail">
						<img src="${skinPicture}" alt="皮肤">
						<div class="caption">
							<h4>皮肤名：${skinName}</h4>
							<p>所属英雄：${skinHero}</p>
							<p class="changeStatus">
								<s:if test="skinStatus==1">
								上下架：<img alt="" src="../images/open.png">
								</s:if>
								<s:else>
								上下架：<img alt="" src="../images/close.png">
								</s:else>
								<input type="hidden" value="${skinStatus }" class="thestatus">
								<input type="hidden" value="${id }" class="theid">
							</p>
						</div>
					</div>
				</div>
			</s:iterator>

		</div>
		<h3>射手</h3>
		<div>
			<s:iterator value="#session.sheshou">
				<div class="col-sm-6 col-md-3">
					<div class="thumbnail">
						<img src="${skinPicture}" alt="皮肤">
						<div class="caption">
							<h4>皮肤名：${skinName}</h4>
							<p>所属英雄：${skinHero}</p>
							<p class="changeStatus">
								<s:if test="skinStatus==1">
								上下架：<img alt="" src="../images/open.png">
								</s:if>
								<s:else>
								上下架：<img alt="" src="../images/close.png">
								</s:else>
								<input type="hidden" value="${skinStatus }" class="thestatus">
								<input type="hidden" value="${id }" class="theid">
							</p>
						</div>
					</div>
				</div>
			</s:iterator>

		</div>
		<h3>刺客</h3>
		<div>
			<s:iterator value="#session.cike">
				<div class="col-sm-6 col-md-3">
					<div class="thumbnail">
						<img src="${skinPicture}" alt="皮肤">
						<div class="caption">
							<h4>皮肤名：${skinName}</h4>
							<p>所属英雄：${skinHero}</p>
							<p class="changeStatus">
								<s:if test="skinStatus==1">
								上下架：<img alt="" src="../images/open.png">
								</s:if>
								<s:else>
								上下架：<img alt="" src="../images/close.png">
								</s:else>
								<input type="hidden" value="${skinStatus }" class="thestatus">
								<input type="hidden" value="${id }" class="theid">
							</p>
						</div>
					</div>
				</div>
			</s:iterator>
		</div>

		<h3>战士</h3>
		<div>
			<s:iterator value="#session.zhanshi">
				<div class="col-sm-6 col-md-3">
					<div class="thumbnail">
						<img src="${skinPicture}" alt="皮肤">
						<div class="caption">
							<h4>皮肤名：${skinName}</h4>
							<p>所属英雄：${skinHero}</p>
							<p class="changeStatus">
								<s:if test="skinStatus==1">
								上下架：<img alt="" src="../images/open.png">
								</s:if>
								<s:else>
								上下架：<img alt="" src="../images/close.png">
								</s:else>
								<input type="hidden" value="${skinStatus }" class="thestatus">
								<input type="hidden" value="${id }" class="theid">
							</p>
						</div>
					</div>
				</div>
			</s:iterator>
		</div>

		<h3>潜行</h3>
		<div>
			<s:iterator value="#session.qianxing">
				<div class="col-sm-6 col-md-3">
					<div class="thumbnail">
						<img src="${skinPicture}" alt="皮肤">
						<div class="caption">
							<h4>皮肤名：${skinName}</h4>
							<p>所属英雄：${skinHero}</p>
							<p class="changeStatus">
								<s:if test="skinStatus==1">
								上下架：<img alt="" src="../images/open.png">
								</s:if>
								<s:else>
								上下架：<img alt="" src="../images/close.png">
								</s:else>
								<input type="hidden" value="${skinStatus }" class="thestatus">
								<input type="hidden" value="${id }" class="theid">
							</p>
						</div>
					</div>
				</div>
			</s:iterator>

		</div>

		<h3>辅助</h3>
		<div>
			<s:iterator value="#session.fuzhu">
				<div class="col-sm-6 col-md-3">
					<div class="thumbnail">
						<img src="${skinPicture}" alt="皮肤">
						<div class="caption">
							<h4>皮肤名：${skinName}</h4>
							<p>所属英雄：${skinHero}</p>
							<p class="changeStatus">
								<s:if test="skinStatus==1">
								上下架：<img alt="" src="../images/open.png">
								</s:if>
								<s:else>
								上下架：<img alt="" src="../images/close.png">
								</s:else>
								<input type="hidden" value="${skinStatus }" class="thestatus">
								<input type="hidden" value="${id }" class="theid">
							</p>
						</div>
					</div>
				</div>
			</s:iterator>

		</div>
	</div>
	<!-- 以上为所有皮肤 -->
</body>
</html>