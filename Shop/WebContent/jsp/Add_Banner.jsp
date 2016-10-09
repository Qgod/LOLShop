<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>新增Banner</title>
	<script type="text/javascript" src="../js/jquery-3.1.0.min.js"></script>
	<script type="text/javascript" src="../bootstrap3/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../js/Banner.js"></script>
	<script type="text/javascript" src="../js/jquery.form.js"></script>
	<link rel="stylesheet" type="text/css" href="../bootstrap3/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../css/Banner.css">
	
	<script type="text/javascript">
		
	</script>

</head>
<body>
	<hr/>
	<h2>添加Banner</h2>
	<br/>
	<div id="add-banner" class="add-banner" >
		<form action="addBanner.action" method="post" enctype="multipart/form-data" id="bannerForm">
			<span>Banner名称</span>
			<input type="text" class="form-control" name="banner.bannerName" id="name">
			<br/>
			<span>Banner参数</span>
			<input type="text" class="form-control" name="banner.bannerParameter" id="parameter">
			<br/>
			<input type="hidden"  value="0" name="banner.bannerStatus" id="status">
			<span>上传Banner图片</span><br/>
			<span id="show_sth" style="color: red"></span>
			<input type="file"  id="myFile" multiple="multiple" class="form-control" name="file">
			<br/>
			<img src="" name="" id="show-image" width="500" height="200" alt="预览"/>
			<br/>
			<button class="btn btn-primary"id="sureSub">确认上传</button>
			<input type="reset" class="btn btn-danger" id="reset">
		</form>
	</div>
	
</body>
</html>