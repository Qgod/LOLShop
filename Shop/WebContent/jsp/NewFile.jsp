<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../bootstrap3/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../bootstrap3/css/bootstrap-table.css">
<script type="text/javascript" src="../bootstrap3/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="../bootstrap3/js/bootstrap.js"></script>
<script type="text/javascript" src="../bootstrap3/js/bootstrap-table.js"></script>
<script type="text/javascript" src="../bootstrap3/js/bootstrap-table-zh-CN.js"></script>
<script type="text/javascript">

$(function(){
	$("#tb_powerset").bootstrapTable({
	    url: 'table.json',
	    method: 'get',
	    detailView: true,//父子表
	    //sidePagination: "server",
	    pageSize: 10,
	    pageList: [10, 25],
	    columns: [{
	      field: 'ID',
	      title: '菜单名称'
	    }, {
	      field: 'Item Name',
	      title: '菜单URL'
	    }, {
	      field: 'Item Price',
	      title: '父级菜单'
	    }, ],
	    //注册加载子表的事件。注意下这里的三个参数！
	    onExpandRow: function (index, row, $detail) {
	      var parentid = row.MENU_ID;
	  	  var cur_table = $detail.html('<table></table>').find('table');
	  	  $(cur_table).bootstrapTable({
	  	    url: 'table.json',
	  	    method: 'get',
	  	    queryParams: { strParentID: parentid },
	  	    ajaxOptions: { strParentID: parentid },
	  	    clickToSelect: true,
	  	    detailView: true,//父子表
	  	    uniqueId: "MENU_ID",
	  	    pageSize: 10,
	  	    pageList: [10, 25],
	  	    columns: [{
	  	      checkbox: true
	  	    }, {
	  	      field: 'Item Name',
	  	      title: '菜单名称'
	  	    }, {
	  	      field: 'Item Price',
	  	      title: '菜单URL'
	  	    }, ]
	    });
	    }
	    
	  });
	
})
	
</script>
</head>
<body>
<table id="tb_powerset">
</table>
</body>
</html>