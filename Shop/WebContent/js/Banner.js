jQuery(function(){
	$(document).ready(function(){
		$("#myFile").change(function(){

			var pot = $(this).val().lastIndexOf("\\");
			var fileName = $(this).val().substring(pot + 1);
			var HzName = /\.[^\.]+/.exec(fileName);
			if(!(HzName == ".png" || HzName == ".PNG" || HzName == ".jpg" || HzName == ".JPG" || HzName == ".jepg" || HzName == ".JEPG")){
				$("#error-span").html("格式不对");
				$("#show-image").hide();
			}
			var objUrl = getObjectURL(this.files[0]);
			console.log("objUrl = "+ objUrl);
			if(objUrl){
				$("#show-image").attr("src",objUrl);
				$("#show-image").show();
			}
		})
		//建立一个存取该file的url
			function getObjectURL(file){
				var url = null;
				if(window.createObjectURL != undefined){
					url = window.createObjectURL(file);
				}else if(window.URL != undefined){
					url = window.URL.createObjectURL(file);
				}else if(window.webkitURL != undefined){
					url = window.webkitURL.createObjectURL(file);
				}
				return url;
			}		

		// 以上是对于图片的操作,验证格式以及即时显示

		$("#reset").click(function(){
			$("#show-image").hide();
		})

		
		$(".isStart").click(function(){
			var $tr = $(this).parent().parent();
			var mark=$tr.find(".mark");
			var YorN=mark.val();
			var d;
			$.ajax({
				url:'changeStatus.action',
				data:{id:YorN},
				async:false,
				success:function(data){
					d=data;
				}
			})
			if(d==0){
				$(this).attr("src","../images/close.png");
			}else{
				$(this).attr("src","../images/open.png");
			}
		});
		$(".deleteBanner").click(function(){
			var $tr=$(this).parent().parent();
			var bannerId=$tr.find(".mark").val();
			$.ajax({
				url:'deletebanner.action',
				data:{bannerid:bannerId},
				success:function(data){
					if(data=="0"){
						//刷新页面
						location.reload();   
					}else{
						alert("删除失败");
					}
				}
			})
		})
		
		$("#sureSub").click(function(){
			alert("添加成功");
		})
	});
	
})

function sendSkin(id,status){
	if(status==1){
		alert("已经发货");
		return false;
	}
	$.ajax({
		url:'changeOrderStatus.action',
		data:{id:id},
		success:function(data){
			if(data=="0"){
				/*alert("发货成功");*/
				location.reload();   
			}else{
				alert("发货失败");
			}
				
		}
	})
	
}