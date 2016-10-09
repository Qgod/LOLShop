jQuery(function() {
	$(document).ready(function() {
		$("#mypic").change(function() {
			var objUrl = getObjectURL(this.files[0]);
			console.log("objUrl = " + objUrl);
			if (objUrl) {
				$("#show_pic").attr("src", objUrl);
				$("#show_pic").show();
			}
		});
		// 建立一个存取该file的url
		function getObjectURL(file) {
			var url = null;
			if (window.createObjectURL != undefined) {
				url = window.createObjectURL(file);
			} else if (window.URL != undefined) {
				url = window.URL.createObjectURL(file);
			} else if (window.webkitURL != undefined) {
				url = window.webkitURL.createObjectURL(file);
			}
			return url;
		}

		$("#price").change(function() {
			var price = $(this).val();
			if (price <= 0) {
				$("#error").html("您输入的价格不合法，请重新输入");
			} else {
				$("#error").remove();
			}
		})

		$("#discount").change(function() {
			var isdiscount = $(this).val();
			if (isdiscount === "") {
				alert("是否有折扣?");
			}
			if (isdiscount == "yes") {
				$("#discount_num").show();
				$("#discount_num").attr("value", "");
			} else {
				$("#discount_num").hide();
				$("#discount_num").attr("value", 10);
			}
		});

		$("#sureAdd").click(function() {
			$("#skinForm").ajaxSubmit({
				type : "post",
				url : "addSkin.action",
				success : function(data) {
					if (data == 1) {
						$("#showsth").html("添加成功!!");
					}
				}
			});
		});

		$("#res").click(function() {
			$("#show_pic").hide();
			$("#showsth").remove();
		})
		
		
	});
});