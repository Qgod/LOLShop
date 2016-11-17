<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
	var url = window.location.href;
	if(url.substring(url.length-10,url.length)=='head_2.jsp'){
		window.location.href="index.jsp";
		return;
	}
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
<style type="text/css">
#logoandsearch{
	width: 85%;
	padding: auto;
	margin: auto;
	background-color: white;
	height: 150px; 
}
#search a{
	display:inline-block;
	background-color: red;
	width: 100px;
	height: 40px;
	margin-top: 60px;
	text-align: center;
	line-height: 40px;
	color: white;
	text-decoration:none;
}
#search a:hover{
	text-decoration:none;
}
</style>
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
	
	
	<nav class="navbar navbar-default" role="navigation">
  <div class="container-fluid" style="background-color: red;">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <a class="navbar-brand" style="color:white;" href="a.jsp">LOL</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="a.jsp" style="color:white;">首页</a></li>
        <li><a href="skinList.action" style="color:white;">商品列表</a></li>
        <li><a href="#" style="color:white;">关于我们</a></li>
        <li><a href="#" style="color:white;">关于网站</a></li>
        <li><a href="#" style="color:white;">联系我们</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
</body>
</html>