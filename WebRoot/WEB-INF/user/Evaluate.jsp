<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>丽人美妆</title>
<link rel="shortcut icon" href="js/evaluate/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" href="../js/evaluate/global.css">
<link rel="stylesheet" href="../js/evaluate/common_002.css">
<link rel="stylesheet" href="../js/evaluate/common.css">
<link rel="stylesheet" href="../js/evaluate/post_comment.css">
<link type="text/css" rel="stylesheet" href="../js/evaluate/sidebar.css">
<link type="text/css" rel="stylesheet" href="../js/evaluate/dialog.css">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="../js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="../js/comment.js"></script>
<script type="text/javascript">
        function add(){
        	alert("添加成功！");
        }
    </script>

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


		<div id="wrapper">
			<div class="manage_wrap cle">

				<!-- 页面代码 -->

				<div class="fl manage_left">
					<div class="manage_center_hd">
						<h4>我的丽人</h4>
					</div>
					<ul class="manage_center_list" id="left_bar">
						<li class="manage_center_col">
							<a class="pare_a" onclick="location.href='findAllCollection';" /><i
								class="iconfont">&#xe8;</i>我的收藏</a>
						</li>
						<li class="manage_center_col">
							<a class="pare_a"
								onclick="location.href='toUpdateUser?id=<s:property value="id" />';" /><i
								class="iconfont">&#xe8;</i>个人信息</a>
						</li>
						<li class="manage_center_col">
							<a class="pare_a" href="#"><i class="iconfont">&#xe8;</i>我的订单</a>
						</li>
					</ul>
				</div>

				<div class="fl manage_right">
					<div class="manage_right_t">
						<h4 class="cle">商品评价</h4>
					</div>
					<div class="post_comment_page" id="post_comment_page">

						<div class="item_line">
							<div class="item_bd">

								<s:iterator value="listCart">
									<!--  <div class="shop_items"> 

											<div class="item_body">-->
									<ul class="item_content cle">
										<li class="td td_item">

											<div class="td_inner">
												<div class="item_pic">
													<a href="#"><img
														src="<%=basePath + "upload/"%><s:property value="goods.image"/>" />
													</a>

												</div>
												<div class="item_info">
													<div class="td_inner">
														<a href="#" target="_blank"><s:property
																value="goods.goodsName" /> </a>
													</div>
												</div>
											</div>
										</li>

										<li class="td td_price">
											<div class="td_inner">
												<em class="price_now">价格：<s:property
														value="goods.price" />
												</em>
											</div>
										</li>
										<li class="td td_num">
											<div class="td_inner">
												<em class="item_num">交易类型：已完成 </em>
											</div>
										</li>

									</ul>
									<!--</div>
									</div>-->
								</s:iterator>

							</div>
							<div class="commt_form" id="commt_form">
								<div class="top_arrow">
									<i class="top_arrow-line">◆</i><i class="top_arrow-bg">◆</i>
								</div>
								<form action="addEvaluation" method="post">
									<ul>
										<li class="cle">
											<div class="quiz_content">
												<div class="goods-comm">
													<div class="goods-comm-stars">
														<div class="t">
															<span class="star_l">我的打分：</span>
														</div>
														<div id="rate-comm-1" class="rate-comm"></div>
													</div>
												</div>

											</div>
										</li>
										<li class="cle">
											<div class="t">我的肤质：</div>
											<div class="bd">
												<select name="evaluate.skin">
													<option selected="selected" value="NULL">请选择</option>
													<option value="1">干性肌肤</option>
													<option value="2">敏感肌肤</option>
													<option value="3">油性肌肤</option>
													<option value="4">混合肌肤</option>
													<option value="5">中性肌肤</option>
												</select>
											</div>
										</li>

										<li class="ft cle">
											<div class="t">评价内容：</div>
											<div class="bd">
												<textarea name="evaluate.Evalution"></textarea>
												<div class="commt_ft cle">

													<div class="fr">
														<input type="hidden" name="evaluate.UserID"
															value="<s:property value="user.userID"/>" /> 
															<input type="hidden" name="evaluate.GoodsID"
															value="<s:property value="goodsID"/>" />
															<input
															type="submit" class="btn" value="提交"/>
													</div>
												</div>
											</div>
										</li>
									</ul>

								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- 页尾 -->
		<div id="footer">
			<div class="ft_main">
				<div class="ft_nav">
					<a href="#/" target="_blank" class="noborder">关于丽人</a> <cite>/</cite>
					<a href="#/" target="_blank">商家入驻</a> <cite>/</cite> <a href="#/"
						target="_blank">代理招募</a> <cite>/</cite> <a href="#/"
						target="_blank">加入我们</a> <cite>/</cite> <a href="#/"
						target="_blank">配送政策</a> <cite>/</cite> <a href="#/"
						target="_blank">售后保障</a> <cite>/</cite> <a href="#/"
						target="_blank">帮助中心</a> <cite>/</cite> <a href="#/"
						target="_blank">联系我们</a> <cite>/</cite> <a href="#/"
						target="_blank">平台公告</a> <cite>/</cite> <a href="#/"
						target="_blank">友情链接</a>
				</div>
				<div class="ft_txt">
					<p>
						Copyright 2009-2015, 西北农林科技大学 增值电信业务经营许可证：陕B2-20110315 备案号： <a
							href="#" target="_blank">陕ICP备11012845号-5</a>
					</p>
					<p class="ft_contact">
						<span>服务时间：09:00-23:00</span> <span class="ft_phone">客服热线:
							<em>4007-112-112</em>
						</span>
					</p>

				</div>

			</div>
		</div>



		<div id="g_sidebar" class="g_sidebar" style="height: 739px;">
			<ul class="sb_top">
				<li class="sb_cart"><a href="#/cart/"><i class="iconfont">ŭ</i><span>购物车</span><em
						id="sidebar_cartnum">0</em> </a></li>
			</ul>
			<ul class="sb_btm">
				<li class="back2top"><a href="javascript:;"><i
						class="iconfont"></i> </a>
					<div class="tip">
						<cite class="iconfont"></cite><a href="javascript:;">返回顶部</a>
					</div></li>
			</ul>
		</div>
</body>
</html>