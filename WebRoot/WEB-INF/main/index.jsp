<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.lrmz.dao.goods.GoodsDAOImpl"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"
	+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<script type="text/javascript">
	//跳转到目标页
	function toPage(targetPage){
		document.getElementById("targetPage").value=targetPage;
		document.forms[0].submit();
	}
</script>
	<script> 
	//鼠标移过来的动作。显示当前图片，清除轮询。 
	function adchangea(adid) { 
		dochange(adid); 
		clearTimeout(adisround); 
	} 
	//自动轮询 
	function adchangea2(adid) { 
		dochange(adid); 
		var adbigimg = document.getElementById("adpica").getElementsByTagName("div"); 
		if ((adnext = adid + 1) > adbigimg.length) adnext = 1; 
		adisround = setTimeout('adchangea2(' + adnext + ')', 3000); 
	} 
	//显示当前图片 
	function dochange(adid) { 
		id = adid; 
		var adbigimg = document.getElementById("adpica").getElementsByTagName("div"); 
		var adsmallimg = document.getElementById("adtipa").getElementsByTagName("li"); 
		for (var adi = 0; adi < adbigimg.length; adi++) { 
			adbigimg[adi].className = "hidden"; 
			adsmallimg[adi].className = ""; 
	} 
		adbigimg[adid - 1].className = "show"; 
		adsmallimg[adid - 1].className = "current"; 
	} 
		var adisround = setTimeout("adchangea2(2)", 3000); 
		var id;//当前激活id 
	//鼠标移开ul块时，恢复轮询 
	function change() { 
		adchangea2(id); 
	} 
</script>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

		<link rel="shortcut icon" href="../images/index/li.png"
			type="../images/index/x-icon" />
		<link rel="stylesheet" href="../style/css/indexcommon_1.css" />
		<link rel="stylesheet" href="../style/css/indexglobal_1.css" />
		<link rel="stylesheet" href="../style/css/index_1.css" />

		<script src="../js/5adpics.js"></script>
		<script src="../js/detail/lib.js"></script>
		<script src="../js/detail/piwik.js"></script>
		<style>
.banner {
	margin-bottom: 45px;
}

.banner_bar {
	width: 1800px;
	height: 500px;
	float: right;
	position: relative;
	overflow: hidden;
}

.imgBox {
	width: 1800px;
	height: 500px;
}

.imgBox li {
	float: left;
}

.imgBox img {
	width: 1800px;
	height: 500px;
	display: block;
}
.logo {
	height: 100px;
	padding-left:30px;
	padding-top: -40px;
	margin-top: -10px;
}
 </style>
		<title>丽人美妆主页</title>
	</head>

	<body>

		<!-- 顶部导航条 -->
		<div class="top_bar" id="top_bar">
			<div class="top_bar_bd">
				<ul class="bar_fl"></ul>
				<ul class="bar_fr" id="top_bar_nav">
					<c:choose>
						<c:when test="${sessionScope.user.userName == null}">
							<li class="topbar_user">
								<a href="toLogin">登 录</a><s>&nbsp;</s><a href="toRegist">免费注册</a>
							</li>
						</c:when>

						<c:otherwise>
							<li class="topbar_user">
								<strong>${sessionScope.user.userName }</strong>，欢迎您！
								<s>&nbsp;</s>[
								<a href="logout">退出</a>]
							</li>
						</c:otherwise>

					</c:choose>
					<li class="more_menu">
						<a href="">关注我们</a>
					</li>
					<li>
						<a href="">帮助中心</a>
					</li>
					<li>
						<a id="favourite_wb" href=""><img
								src="../images/index/heart.png" />&nbsp;收藏丽人</a>
					</li>
				</ul>
			</div>
		</div>

		<!-- 页头 -->
		<div id="header" class="header">
			<div class="hd_main cle">
				<div class="logo" >
					
					<img height="70px;" src="../images/logo.png" />
						
					
				</div>
				<div class="search_box">
					<form action="findGoods" method="post" id="search_fm"
						name="search_fm">
						<input class="sea_input" type="text" name="gbrand" id="textfield" />
						<button type="submit" class="sea_submit" onclick="toPage(1);">
							搜索
						</button>
					</form>
				</div>
				<div class="head_search_hot">
					<!--热搜榜-->
					<span>热搜榜：</span>
					<a class="red" href="#" target="_blank">面膜</a>
					<a href="#" target="_blank">CANMAKE</a>
					<a href="#" target="_blank">爱丽小屋</a>
					<a class="red" href="#" target="_blank">新品唇膏/口红</a>
					<a href="#" target="_blank">护手霜</a>
					<a class="red" href="#" target="_blank">悦诗风吟</a>

				</div>
				<div class="head_right">
					<div class="head_cart" id="header_cart">
						<a class="tit" href="findAllCarts"><b class="iconfont">&#x16d</b>购物车<span><i
								class="iconfont">&#xe647;</i> </span><em class="cartnum">0</em> </a>
						<div class="more_bd">
							<p class="load"></p>
						</div>
					</div>
				</div>
			</div>
			<div class="hd_nav">
				<div class="hd_nav_bd cle">
					<div class="main_nav" id="main_nav">
						<div class="main_nav_link">
							<a href="findGoods"><i class="iconfont">&#xe655;</i>进入商城</a>
						</div>
						<div class="main_cata" id="J_mainCata">
							<ul>
								<li class="first">
									<h3>
										<a href="javascript:;">护肤</a>
									</h3>
									<div class="bd">
										<a target="_blank"
											href="http://www.lizi.com/itemSearch/search?category=554dad6be4b0a4e489d1af30">洁面</a>
										<a target="_blank"
											href="http://www.lizi.com/itemSearch/search?category=554dad6be4b0a4e489d1af31">爽肤水</a>
										<a target="_blank"
											href="http://www.lizi.com/itemSearch/search?category=554dad6be4b0a4e489d1af36">防晒</a>
										<a target="_blank"
											href="http://www.lizi.com/itemSearch/search?category=554dad6be4b0a4e489d1af48">卸妆</a>
										<a target="_blank"
											href="http://www.lizi.com/itemSearch/search?category=554dad6be4b0a4e489d1af3b">眼部护理</a>
										<a target="_blank"
											href="http://www.lizi.com/itemSearch/search?category=554dad6be4b0a4e489d1af3e">面部精华</a>
										<a target="_blank"
											href="http://www.lizi.com/itemSearch/search?category=554dad6be4b0a4e489d1af34">乳液/面霜</a>
									</div>
								</li>
								<li>
									<h3>
										<a href="javascript:;">彩妆</a>
									</h3>
									<div class="bd">
										<a target="_blank"
											href="http://www.lizi.com/itemSearch/search?category=554dad6ae4b0a4e489d1af19">BB霜</a>
										<a target="_blank"
											href="http://www.lizi.com/itemSearch/search?category=554dad6ae4b0a4e489d1af2b">隔离/打底</a>
										<a target="_blank"
											href="http://www.lizi.com/itemSearch/search?category=554dad6be4b0a4e489d1af3a">粉底液/膏</a>
										<a target="_blank"
											href="http://www.lizi.com/itemSearch/search?category=554dad6be4b0a4e489d1af40">眼影</a>
										<a target="_blank"
											href="http://www.lizi.com/itemSearch/search?category=554dad6be4b0a4e489d1af33">眼线</a>
										<a target="_blank"
											href="http://www.lizi.com/itemSearch/search?category=554dad6be4b0a4e489d1af35">睫毛膏</a>
										<a target="_blank"
											href="http://www.lizi.com/itemSearch/search?category=554dad6ae4b0a4e489d1af1c">口红</a>
										<a target="_blank"
											href="http://www.lizi.com/itemSearch/search?category=554dad6ee4b0a4e489d1af8a">香水</a>
									</div>
								</li>
								<li>
									<h3>
										<a href="javascript:;">日化清洁</a>
									</h3>
									<div class="bd">
										<a target="_blank"
											href="http://www.lizi.com/itemSearch/search?category=554dad6ce4b0a4e489d1af69">洗发护发</a>
										<a target="_blank"
											href="http://www.lizi.com/itemSearch/search?category=554dad6ee4b0a4e489d1af9c">身体洗护</a>
										<a target="_blank"
											href="http://www.lizi.com/itemSearch/search?category=554dad6de4b0a4e489d1af81">口腔护理</a>
									</div>
								</li>
								<li>
									<h3>
										<a href="javascript:;">健康保养</a>
									</h3>
									<div class="bd">
										<a target="_blank"
											href="http://www.lizi.com/itemSearch/search?category=554dad6de4b0a4e489d1af80">纤体瘦身</a>
										<a target="_blank"
											href="http://www.lizi.com/itemSearch/search?category=554dad6fe4b0a4e489d1afb7">美容丰胸</a>
										<a target="_blank"
											href="http://www.lizi.com/itemSearch/search?category=554dad6ce4b0a4e489d1af66">成人用品</a>
									</div>
								</li>
								<li>
									<h3>
										<a href="javascript:;">化妆工具</a>
									</h3>
									<div class="bd">
										<a target="_blank"
											href="http://www.lizi.com/itemSearch/search?category=554dad6ae4b0a4e489d1af1e">化妆刷</a>
										<a target="_blank"
											href="http://www.lizi.com/itemSearch/search?category=554dad6ae4b0a4e489d1af20">化妆棉</a>
										<a target="_blank"
											href="http://www.lizi.com/itemSearch/search?category=554dad6ae4b0a4e489d1af1f">粉扑/洁面扑</a>
									</div>
								</li>
							</ul>
						</div>
						<div class="J_subCata" id="J_subCata"></div>
					</div>
					<ul class="sub_nav cle" id="sub_nav">

						<li>
							<a target="_blank" href="#" rel="nofollow">100%正品</a>
						</li>

					</ul>
				</div>
			</div>
		</div>


		<!--Banner切换-->


		<div class="focus">
			<div class="turn">
				<div id="adpica">
					<div class="show">
						<a href="#"> <img src="../images/index/banner_1.jpg"> </a>
					</div>

					<div class="hidden" style="display: none;">
						<a href="#"> <img src="../images/index/banner_2.jpg"> </a>
					</div>

					<div class="hidden" style="display: none;">
						<a href="#"> <img src="../images/index/banner_3.jpg"> </a>
					</div>

					<div class="hidden" style="display: none;">
						<a href="#"> <img src="../images/index/banner_4.jpg"> </a>
					</div>
				</div>

				<div id="adtipa">
					<ul onmouseout="change()">
						<li class="current" onmouseover="adchangea(1)">
							1
						</li>
						<li class="" onmouseover="adchangea(2)">
							2
						</li>
						<li class="" onmouseover="adchangea(3)">
							3
						</li>
						<li class="" onmouseover="adchangea(4)">
							4
						</li>
					</ul>
				</div>
			</div>
		</div>




		<!-- 页面代码 -->
		<div id="wrapper">
			<!--热门活动-->
			<h3 class="box_title">
				<strong>热门活动</strong><span class="gray">只要您不满意就无条件退货</span>
			</h3>

			<div class="hot_active" id="hot_active">
				<ul class="cle">
					<li>
						<a href="http://localhost:8080/LRMZ/user/findgbrand?gbrand=菲诗小铺"
							target="_blank"> <img width="590" height="390"
								src="../images/index/1.jpg"
								data-lazyload="../images/index/1.jpg"> </a>
						<p class="cle">
							<span class="title">悦诗风吟品牌场</span>
							<span class="orange">5.7</span>
							<span class="temail_timer" data-time="601131000"></span>
						</p>
					</li>

					<li>
						<a href="http://localhost:8080/LRMZ/user/findgbrand?gbrand=自然堂"
							target="_blank"> <img width="590" height="390"
								src="../images/index/2.jpg"
								data-lazyload="../images/index/2.jpg"> </a>
						<p class="cle">
							<span class="title">悦诗风吟品牌场</span>
							<span class="orange">5.7</span>
							<span class="temail_timer" data-time="601131000"></span>
						</p>
					</li>

					<li>
						<a href="http://localhost:8080/LRMZ/user/findgbrand?gbrand=香奈儿"
							target="_blank"> <img width="590" height="390"
								src="../images/index/3.jpg"
								data-lazyload="../images/index/3.jpg"> </a>
						<p class="cle">
							<span class="title">悦诗风吟品牌场</span>
							<span class="orange">5.7</span>
							<span class="temail_timer" data-time="601131000"></span>
						</p>
					</li>

					<li>
						<a href="http://localhost:8080/LRMZ/user/findgbrand?gbrand=solone"
							target="_blank"> <img width="590" height="390"
								src="../images/index/4.jpg"
								data-lazyload="../images/index/4.jpg"> </a>
						<p class="cle">
							<span class="title">悦诗风吟品牌场</span>
							<span class="orange">5.7</span>
							<span class="temail_timer" data-time="601131000"></span>
						</p>
					</li>
				</ul>
			</div>


			<!--人气爆款-->

			<h3 class="box_title">
				<strong>人气爆款</strong><span class="gray">100%低价 100%信赖 100%正品</span>
			</h3>

			<div class="hot_items" id="hot_items">
				<s:hidden name="page" id="targetPage"></s:hidden>
				<ul class="cle">
					<s:iterator value="list">
						<li>
							<div class="pic">
								<a
									href="http://localhost:8080/LRMZ/user/cartAction?goodsId=<s:property value="goodsID" />"
									target="_blank"> <img
										src="<%=basePath+"upload/"%><s:property value="image"/>"
										alt="<s:property value="goodsName"/>" width="390" height="390"
										data-lazyload="<%=basePath+"upload/"%><s:property value="image"/>">
									<p class="mask">
										<span><i class="iconfont">&#x16d;</i>
										<br>立即购买</span>
									</p> </a>
							</div>
							<div class="info">
								<h5>
									<a href="#" target="_blank"><s:property value="goodsName" />
									</a>
								</h5>
								<div class="p_btn cle">
									<span class="price"> ￥<strong><s:property
												value="price" />
									</strong> </span>
									<span class="old"> <del>
											￥
											<s:property value="marketPrice" />
										</del> </span>
									<span class="sales"> <i class="iconfont">&#xe639;</i>
									<s:property value="goodsNum" /> <!-- 销量 --> </span>
									<a
										href="http://localhost:8080/LRMZ/user/cartAction?goodsId=<s:property value="goodsID" />"
										class="btn fr" target="_blank">立即购买</a>
								</div>
								<p class="time" data-time="255531000"></p>
							</div>
						</li>
					</s:iterator>
				</ul>
			</div>

			<!-- 分类模块 end -->

			<!--品牌大全-->
			<h3 class="box_title">
				<strong>品牌大全</strong><span class="gray">千万用户信赖的美妆网站</span>
			</h3>

			<div class="brands_box cle" id="brands_box">
				<div class="pic fl">
					<a href="#" target="_blank"><img
							src="../images/index/d0d9f45953e.jpg"
							data-lazyload="../images/index/d0d9f45953e.jpg"> </a>
				</div>

				<div class="list">
					<ul class="cle">
						<li>
							<a href="http://localhost:8080/LRMZ/user/findgbrand?gbrand=香奈儿"
								target="_blank"> <img src="../images/index/blogo/chanel.jpg"
									data-lazyload="../images/index/blogo/chanel.jpg"" > </a>
						</li>
						<li>
							<a href="http://localhost:8080/LRMZ/user/findgbrand?gbrand=雅诗兰黛"
								target="_blank"> <img
									src="../images/index/blogo/esteelauder.jpg"
									data-lazyload="../images/index/blogo/esteelauder.jpg"> </a>
						</li>
						<li>
							<a href="http://localhost:8080/LRMZ/user/findgbrand?gbrand=3ce"
								target="_blank"> <img src="../images/index/blogo/3ce.jpg"
									data-lazyload="../images/index/blogo/3ce.jpg"> </a>
						</li>
						<li>
							<a href="http://localhost:8080/LRMZ/user/findgbrand?gbrand=arden"
								target="_blank"> <img src="../images/index/blogo/arden.jpg"
									data-lazyload="../images/index/blogo/arden.jpg"> </a>
						</li>
						<li>
							<a href="http://localhost:8080/LRMZ/user/findgbrand?gbrand=雅漾"
								target="_blank"> <img src="../images/index/blogo/avene.jpg"
									data-lazyload="../images/index/blogo/avene.jpg"> </a>
						</li>
						<li>
							<a href="http://localhost:8080/LRMZ/user/findgbrand?gbrand=贝玲妃"
								target="_blank"> <img
									src="../images/index/blogo/benefit.jpg"
									data-lazyload="../images/index/blogo/benefit.jpg"> </a>
						</li>
						<li>
							<a
								href="http://localhost:8080/LRMZ/user/findgbrand?gbrand=CANMAKE"
								target="_blank"> <img
									src="../images/index/blogo/canmake.jpg"
									data-lazyload="../images/index/blogo/canmake.jpg"> </a>
						</li>
						<li>
							<a href="http://localhost:8080/LRMZ/user/findgbrand?gbrand=丝塔芙"
								target="_blank"> <img
									src="../images/index/blogo/cetaphil.jpg"
									data-lazyload="../images/index/blogo/cetaphil.jpg"> </a>
						</li>
						<li>
							<a href="http://localhost:8080/LRMZ/user/findgbrand?gbrand=自然堂"
								target="_blank"> <img src="../images/index/blogo/chando.jpg"
									data-lazyload="../images/index/blogo/chando.jpg"> </a>
						</li>

						<li>
							<a href="http://localhost:8080/LRMZ/user/findgbrand?gbrand=婵真"
								target="_blank"> <img
									src="../images/index/blogo/charmzone.jpg"
									data-lazyload="../images/index/blogo/charmzone.jpg"> </a>
						</li>
						<li>
							<a href="http://localhost:8080/LRMZ/user/findgbrand?gbrand=薇姿"
								target="_blank"> <img src="../images/index/blogo/cichy.jpg"
									data-lazyload="../images/index/blogo/cichy.jpg"> </a>
						</li>
						<li>
							<a href="http://localhost:8080/LRMZ/user/findgbrand?gbrand=倩碧"
								target="_blank"> <img
									src="../images/index/blogo/clinique.jpg"
									data-lazyload="../images/index/blogo/clinique.jpg"> </a>
						</li>
						<li>
							<a href="http://localhost:8080/LRMZ/user/findgbrand?gbrand=迪奥"
								target="_blank"> <img src="../images/index/blogo/dior.jpg"
									data-lazyload="../images/index/blogo/dior.jpg"> </a>
						</li>

						<li>
							<a href="http://localhost:8080/LRMZ/user/findgbrand?gbrand=爱丽小屋"
								target="_blank"> <img src="../images/index/blogo/etude.jpg"
									data-lazyload="../images/index/blogo/etude.jpg"> </a>
						</li>
						<li>
							<a href="http://localhost:8080/LRMZ/user/findgbrand?gbrand=依云"
								target="_blank"> <img src="../images/index/blogo/evian.jpg"
									data-lazyload="../images/index/blogo/evian.jpg"> </a>
						</li>
						<li>
							<a href="http://localhost:8080/LRMZ/user/findgbrand?gbrand=兰蔻"
								target="_blank"> <img
									src="../images/index/blogo/lancome.jpg"
									data-lazyload="../images/index/blogo/lancome.jpg"> </a>
						</li>
						<li>
							<a href="http://localhost:8080/LRMZ/user/findgbrand?gbrand=兰芝"
								target="_blank"> <img
									src="../images/index/blogo/laneige.jpg"
									data-lazyload="../images/index/blogo/laneige.jpg"> </a>
						</li>
						<li>
							<a href="http://localhost:8080/LRMZ/user/findgbrand?gbrand=欧莱雅"
								target="_blank"> <img src="../images/index/blogo/loreal.jpg"
									data-lazyload="../images/index/blogo/loreal.jpg"> </a>
						</li>
						<li>
							<a href="http://localhost:8080/LRMZ/user/findgbrand?gbrand=蜜丝佛陀"
								target="_blank"> <img
									src="../images/index/blogo/max-factorx.jpg"
									data-lazyload="../images/index/blogo/max-factorx.jpg"> </a>
						</li>
						<li>
							<a href="http://localhost:8080/LRMZ/user/findgbrand?gbrand=美宝莲"
								target="_blank"> <img
									src="../images/index/blogo/maybelline.jpg"
									data-lazyload="../images/index/blogo/maybelline.jpg"> </a>
						</li>
						<li>
							<a href="http://localhost:8080/LRMZ/user/findgbrand?gbrand=曼秀雷敦"
								target="_blank"> <img
									src="../images/index/blogo/mentholatum.jpg"
									data-lazyload="../images/index/blogo/mentholatum.jpg"> </a>
						</li>
						<li>
							<a href="http://localhost:8080/LRMZ/user/findgbrand?gbrand=资生堂"
								target="_blank"> <img
									src="../images/index/blogo/shiseido.jpg"
									data-lazyload="../images/index/blogo/shiseido.jpg"> </a>
						</li>
						<li>
							<a href="http://localhost:8080/LRMZ/user/findgbrand?gbrand=雪花秀"
								target="_blank"> <img
									src="../images/index/blogo/sulwhasoo.jpg"
									data-lazyload="../images/index/blogo/sulwhasoo.jpg"> </a>
						</li>
						<li>
							<a href="http://localhost:8080/LRMZ/user/findgbrand?gbrand=菲诗小铺"
								target="_blank"> <img
									src="../images/index/blogo/thefaceshop.jpg"
									data-lazyload="../images/index/blogo/thefaceshop.jpg"> </a>
						</li>
					</ul>
				</div>

				<div class="pic fr">
					<a href="#" target="_blank"> <img width="195" height="480"
							src="../images/index/178dc84a3741c.jpg"
							data-lazyload="../images/index/6801d967afaa.jpg"> </a>
				</div>
			</div>
		</div>


		<div class="footer_search">
			<div class="sbox">
				<h5>
					更多感兴趣的商品马上搜索
				</h5>
				<div class="sform">
					<form action="findGoods" method="post" name="footer_search"
						id="footer_search">
						<input class="key" type="text" name="gbrand" value=""
							placeholder="面膜" />
						<button type="submit" class="submit iconfont">
							&#x151;
						</button>
					</form>
				</div>
				<div class="footer_search_hot">
					<!--热搜榜-->
					<span>热搜榜：</span>
					<a class="red" href="#" target="_blank">面膜</a>
					<a href="#" target="_blank">CANMAKE</a>
					<a href="#" target="_blank">爱丽小屋</a>
					<a class="red" href="#" target="_blank">新品唇膏/口红</a>
					<a href="#" target="_blank">护手霜</a>
					<a class="red" href="#" target="_blank">悦诗风吟</a>

				</div>

				<div class="intro_link cle">
					<a href="#" target="_blank"></a>
					<a class="mid" href="#" target="_blank"></a>
					<a href="#" target="_blank"></a>
				</div>
			</div>
		</div>
		<!-- 页尾 -->
		<div id="footer">
			<div class="ft_main">
				<div class="ft_nav">
					<a href="http://www.lizi.com/about-about_us.html" target="_blank"
						class="noborder">关于丽子</a>
					<cite>/</cite>
					<a href="http://www.lizi.com/about-store_invite.html"
						target="_blank">商家入驻</a>
					<cite>/</cite>
					<a href="http://www.lizi.com/about-lizi_agent.html" target="_blank">代理招募</a>
					<cite>/</cite>
					<a href="http://www.lizi.com/job-joinus.html" target="_blank">加入我们</a>
					<cite>/</cite>
					<a
						href="http://www.lizi.com/cms/cmsBuyerOrSeller?uniqueMark=48hours_delivery&mark=buyer"
						target="_blank">配送政策</a>
					<cite>/</cite>
					<a
						href="http://www.lizi.com/cms/cmsBuyerOrSeller?cmsMark=refundProduct_condition&mark=buyer"
						target="_blank">售后保障</a>
					<cite>/</cite>
					<a href="http://www.lizi.com/cms/cmsBuyerOrSeller?mark=buyer"
						target="_blank">帮助中心</a>
					<cite>/</cite>
					<a href="http://www.lizi.com/about-contact_us.html" target="_blank">联系我们</a>
					<cite>/</cite>
					<a
						href="http://www.lizi.com/cms/beautyInformation?uniqueMark=frequentlyAsked_questions"
						target="_blank">平台公告</a>
				</div>
				<div class="ft_txt">
					<p>
						Copyright 2009-2015, 西北农林科技大学 LIZI.COM 增值电信业务经营许可证：浙B2-20110315
						备案号：
						<a href="http://www.miitbeian.gov.cn" target="_blank">浙ICP备11012845号-5</a>
					</p>
					<p class="ft_contact">
						<span>服务时间：09:00-23:00</span>
						<span class="ft_phone">客服热线: <em>4007-112-112</em>
						</span>
					</p>
					<p class="beian_ico">
						<a
							href="http://www.lizi.com/cms/beautyInformation?uniqueMark=lizi_jingdian"
							target="_blank"><img alt="丽子美妆获得电商金典奖"
								src="http://cdn.lizi.com/images/flogo-jindian.png" />
						</a>

						<a
							href="http://www.lizi.com/cms/cmsBuyerOrSeller?cmsMark=PICC_insurance&mark=buyer"
							target="_blank"><img alt="中国人保为丽子化妆品承保"
								src="http://cdn.lizi.com/images/flogo-picc.png" />
						</a>

						<a href="http://www.itrust.org.cn/yz/pjwx.asp?wm=1563049676"
							target="_blank"><img alt="互联网协会A级信用认证"
								src="http://cdn.lizi.com/images/flogo-xinyong.png" />
						</a>
					</p>
				</div>
				<div class="fsm fsm2">
					<img src="http://cdn.lizi.com/images/pc/lizi-weixin.png">
					<p>
						<i class="iconfont">&#xe616;</i>
						<br>
						扫描关注微信公众号
					</p>
				</div>
				<div class="fsm fsm">
					<a href="http://www.lizi.com/active/lizi-app.html" target="_blank"><img
							src="http://cdn.lizi.com/images/pc/fapp.jpg">
						<p>
							APP
							<br>
							手机客户端下载
						</p>
					</a>
				</div>
			</div>
		</div>
	</body>
</html>
