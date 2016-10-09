jQuery(function(){
	$(document).ready(function(){
		// 导航上的，不必要改
		$(".nLi").mousemove(function(){
			$(this).children(".sub").show();
			$(this).addClass('on');
		});
		$(".nLi").click(function(){
			$(this).children(".sub").show();
			$(this).addClass('on');
		});
		$(".nLi").mouseout(function(){
			$(this).children(".sub").hide();
			$(this).removeClass("on");
			});	
		});
		$(".nLi").click(function(){
			$(this).children(".sub").show();
			$(this).addClass('on');
		});


		// 这个也不必要改
		$("#all-hero").accordion({
			heightStyle: "content",
			collapsible: true
		});



		// 这是关于哪个 iframe 隐藏和显示的.....
		$("#show-skin").click(function(){
			$("#all-skin").show();
			$("#banner-form").hide();
			$("#show-all-banner").hide();
			$("#add-new-skin").hide();
			$("#all-order").hide();
			$("#allskinimg").hide();
		});


		$("#new-banner").click(function(){
			$("#all-skin").hide();
			$("#banner-form").show();
			$("#show-all-banner").hide();
			$("#add-new-skin").hide();
			$("#all-order").hide();
			$("#allskinimg").hide();
		});

		$("#show-banner").click(function(){
			$("#all-skin").hide();
			$("#banner-form").hide();
			$("#show-all-banner").show();
			$("#add-new-skin").hide();
			$("#all-order").hide();
			$("#allskinimg").hide();
		})

		$("#new-skin").click(function(){
			$("#all-skin").hide();
			$("#banner-form").hide();
			$("#show-all-banner").hide();
			$("#add-new-skin").show();
			$("#all-order").hide();
			$("#allskinimg").hide();
		});

		$("#show-all-order").click(function(){
			$("#all-skin").hide();
			$("#banner-form").hide();
			$("#show-all-banner").hide();
			$("#add-new-skin").hide();
			$("#all-order").show();
			$("#allskinimg").hide();
		});
		
		$("#show-skin").click(function() {
			$.post({
				url : "getTanke.action",
				data : {
					tanke : "坦克",
					sheshou : "射手",
					cike : "刺客",
					qianxing : "潜行",
					fuzhu : "辅助",
					zhanshi : "战士",
					fashi : "法师"
				}
			})
		})
		
		$(".changeStatus").click(function(){
			var thestatus = $(this).find(".thestatus").val();
			var theid = $(this).find(".theid").val();
			if(thestatus == 1){
				$(this).find("img").attr("src","../images/close.png");
				$(this).find(".thestatus").val("0");
			}else{
				$(this).find("img").attr("src","../images/open.png");
				$(this).find(".thestatus").val("1");
			}
			$.post({
				url:"changeSkinStatus.action",
				data:{thestatus:thestatus,theid:theid},
				success:function(data){
					if(data == 1){
						alert("操作成功");
					}
				}
			})
		})
		
});

