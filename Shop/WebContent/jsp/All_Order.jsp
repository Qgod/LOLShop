<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>所有订单</title>
	<link rel="stylesheet" type="text/css" href="../css/All_Order.css">
	
	<link rel="stylesheet" type="text/css" href="../bootstrap3/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../bootstrap3/css/bootstrap-table.css">
	<script type="text/javascript" src="../bootstrap3/js/jquery-1.11.2.min.js"></script>
	<script type="text/javascript" src="../js/Banner.js"></script>
	<script type="text/javascript" src="../bootstrap3/js/bootstrap.js"></script>
	<script type="text/javascript" src="../bootstrap3/js/bootstrap-table.js"></script>
	<script type="text/javascript" src="../bootstrap3/js/bootstrap-table-zh-CN.js"></script>
	<script type="text/javascript">
	
	$(function(){
		$("#tb_powerset").bootstrapTable({
		    url: 'allOrder.action',
		    method: 'post',
		    detailView: true,//父子表
		    //sidePagination: "server",
		    pageSize: 10,
		    pageList: [10, 25],
		    columns: [{
		      field: 'orderId',
		      title: '订单编号'
		    }, {
		      field: 'buyer',
		      title: '买家'
		    }, {
		      field: 'buyTime',
		      title: '购买时间'
		    },{
			  field: 'buyPrice',
			  title: '总花费'
			},{
			  field: 'buyStatus',
			  title: '是否发货'
			},{
			  field: 'Item Price',
			  title: '操作',
			  formatter:function(value,row,index){
				  return '<a href="javascript:sendSkin(\''+row.id+'\','+row.buyStatus+')">发货</a>'
			  }
			}
			],
		    //注册加载子表的事件。注意下这里的三个参数！
		    onExpandRow: function (index, row, $detail) {
		      var parentid = row.orderId;
		  	  var cur_table = $detail.html('<table></table>').find('table');
		  	  $(cur_table).bootstrapTable({
		  	    url: 'getOrderByOrderId.action?orderId='+parentid,
		  	    method: 'post',
		  	    queryParams: { strParentID: parentid },
		  	    ajaxOptions: { strParentID: parentid },
		  	    clickToSelect: true,
		  	    
		  	    uniqueId: "MENU_ID",
		  	    pageSize: 10,
		  	    pageList: [10, 25],
		  	    columns: [{
		  	      field: 'skinName',
		  	      title: '皮肤名称'
		  	    }, {
		  	      field: 'skinPrice',
		  	      title: '价格'
		  	    }, {
		  	      field: 'skinType',
		  	      title: '类型'
			  	}]
		    });
		    }
		    
		  });
		
	})
		
	</script>
</head>
<body>
	<hr/>
	<div class="all">
		
		<table id="tb_powerset">
		
		</table>
	</div>
</body>
</html>