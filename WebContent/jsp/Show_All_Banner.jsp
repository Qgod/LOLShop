<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>所有 Banner 的显示</title>
	<script type="text/javascript" src="../js/jquery-3.1.0.min.js"></script>
	<script type="text/javascript" src="../bootstrap3/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../js/Banner.js"></script>
	<link rel="stylesheet" type="text/css" href="../bootstrap3/css/bootstrap.min.css"/>
	<link rel="stylesheet" type="text/css" href="../css/Banner.css">
	<style type="text/css">
		img{
			display: block;
		}
	</style>
</head>
<body>
	<hr/>
	<div class="show-all-banner" id="show-all-banner">
		<table class="table table-hover">
			<h2 style="text-align: center;">所有Banner都在这里</h2>
			<thead>
				<tr>
					<th>Banner名字</th><th>Banner描述</th><th>是否现在挂在首页</th><th>概览</th><th>操作</th>
				</tr>
			</thead>
			<tbody>
				<s:iterator var="banner" value="#request.bannerList">
					<tr>
						<td><s:property value="bannerName"/></td>
						<td><s:property value="bannerParameter"/></td>
						<td><a href="#">
							
							<s:if test="bannerStatus==0">
								<img src="../images/close.png" class="isStart">
							</s:if>
							<s:else>
								<img src="../images/open.png" class="isStart">
							</s:else>
						
						</a>
							<input type="hidden" class="mark"  value="${id}" >
						</td>
						
						<td><img src="<s:property value="bannerPicture"/>" width="150" height="90"></td>
						<td>
							
							<button class="btn btn-danger deleteBanner">删除</button>
						</td>
					</tr>
				</s:iterator>


			</tbody>
		</table>
	</div>
</body>
</html>