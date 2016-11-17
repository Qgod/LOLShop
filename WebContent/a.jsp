<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>联盟商城</title>
<script src="js/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
	$(function(){
		document.getElementById("sub").click();
	});
</script>
</head>
<body>
	<form action="indexLoad.action" method="post">
		<input type="submit" id="sub" style="display: none;"/>
	</form>
</body>
</html>