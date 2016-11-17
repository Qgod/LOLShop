<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>增加新皮肤页面</title>
	<script type="text/javascript" src="../js/jquery-3.1.0.min.js"></script>
	<script type="text/javascript" src="../bootstrap3/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../js/Add_Skin.js"></script>
	<script type="text/javascript" src="../js/jquery.form.js"></script>
	<link rel="stylesheet" type="text/css" href="../bootstrap3/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../css/Add_Skin.css">
</head>
<body>
	<hr/>
	<div id="add-skin" class="add-skin">
		<h2>添加新皮肤</h2>
		<form action="#" method="post" enctype="multipart/form-data" id="skinForm" >
			
			<span>皮肤名称</span>
			<input type="text" class="form-control" name="skin.skinName">
			<span>皮肤类型</span>
			<select class="form-control" name="skin.skinType"> 
				<option value="王者">王者</option>
				<option value="史诗">史诗</option>
				<option value="勇士">勇士</option>
				<option value="传说">传说</option>
				<option value="限定">限定</option>
				<option value="普通">普通</option>
			</select>
			<span>所属英雄</span>
			<select class="form-control" name="skin.skinHero">
				<option value="荒漠屠夫">荒漠屠夫</option>
				<option value="战争女神">战争女神 </option>
				<option value="祖安狂人">祖安狂人</option> 
				<option value="扭曲树精">扭曲树精</option>
				<option value="圣枪游侠">圣枪游侠</option>
				<option value="战争之王">战争之王</option> 
				<option value="钢铁大使">钢铁大使</option>
				<option value="光辉女郎">光辉女郎</option>
				<option value="众星之子">众星之子</option>
				<option value="琴瑟仙女">琴瑟仙女</option>
				<option value="探险家">探险家</option>
				<option value="末日使者">末日使者</option>
				<option value="荒漠屠夫">荒漠屠夫</option>
				<option value="曹瑞猛">曹瑞猛</option>
				<option value="虚空行者">虚空行者</option>
				<option value="风暴之怒">风暴之怒</option>
				<option value="迅捷斥候">迅捷斥候</option>
				<option value="发条魔灵">发条魔灵</option>
				<option value="德玛西亚皇子">德玛西亚皇子</option>
				<option value="金属大师">金属大师</option>
				<option value="雪人骑士">雪人骑士</option>
				<option value="海洋之灾">海洋之灾</option>
				<option value="麦林炮手">麦林炮手</option>
				<option value="刀锋意志">刀锋意志</option>
				<option value="嗜血猎手">嗜血猎手</option>
				<option value="赏金猎人">赏金猎人</option>
				<option value="英勇投弹手">英勇投弹手</option>
				<option value="复仇焰魂">复仇焰魂</option>
				<option value="暗影之拳">暗影之拳</option>
				<option value="天启者">天启者</option>
				<option value="盲僧">盲僧</option>
				<option value="狂暴之心"> 狂暴之心</option>
				<option value="德玛西亚之力"> 德玛西亚之力</option>
				<option value="寒冰射手">寒冰射手</option>
				<option value="蛮族之王">蛮族之王</option>
				<option value="宝石骑士">宝石骑士</option>
				<option value="荣耀行刑官">荣耀行刑官</option>
				<option value="时间刺客">时间刺客</option>
				<option value="邪恶小法师">邪恶小法师</option>
			</select>
			<span>英雄类别</span>
			<select class="form-control" name="skin.skinHeroType">
				<option value="射手">射手</option>
				<option value="法师">法师</option>
				<option value="辅助">辅助</option>
				<option value="战士">战士</option>
				<option value="潜行">潜行</option>
				<option value="坦克">坦克</option>
				<option value="刺客">刺客</option>
				<option value="推进">推进</option>
			</select>
			<span>皮肤系列</span>
			<select class="form-control" name="skin.skinSenes">
				<option value="泳池">泳池</option>
				<option value="电玩">电玩</option>
				<option value="源计划">源计划</option>
				<option value="三国">三国</option>
				<option value="冠军">冠军</option>
				<option value="钢铁">钢铁</option>
				<option value="足球">足球</option>
				<option value="死兆星">死兆星</option>
			</select>
			
			<span>皮肤定价</span>
			<br/>
			
			<input type="text" name="skin.skinPrice" class="form-control" placeholder="￥">
			<span>是否有折扣</span><br/>
			<select  class="form-control" id="discount">
				<option value="">请选择</option>
				<option value="no">没有折扣</option>
				<option value="yes">有折扣</option>
			</select>
			<br/>
			<input type="number" name="skin.skinDiscount" id="discount_num" style="display: none;width:90px;" class="form-control" placeholder="几折?"
			min="1" max="10">
			<span>图片上传</span>
			<input type="file" name="file" id="mypic" multiple="multiple" class="form-control">	
			<img src="" id="show_pic" width="300" height="200" alt="预览">
			<span id="showsth" style="color: red;font-size: 20px;"></span>
			<input type="hidden" name="skin.skinStatus" value="1">
			<br/>
			<button class="btn btn-primary" type="button" id="sureAdd">确认添加</button>
			<input type="reset" name="" value="重置" class="btn btn-danger" id="res">
		</form>
	</div>
</body>
</html>