<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"
	+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>丽人美妆</title>
<link rel="shortcut icon" href="../images/buy/li.png" />

<link type="text/css" rel="stylesheet" href="../style/complete.css" />
<link type="text/css" rel="stylesheet" href="../style/common_b.css" />
<link type="text/css" rel="stylesheet" href="../style/global_b.css" />
<style type="text/css">
#textcolor {
	color: #f00;
}
.favo img{
width: 245px;
height: 300px;

}
.favo a{
float: left;
}
.favo h3{
margin-top:20px;
margin-bottom:20px;
font-size: 18px;
}

.favo a p{
font-size: 16px;
margin-top: 10px;
margin-bottom: 10px;
margin-right: 8px;
}
</style>
</head>

<body>
	<!-- 顶部导航条 -->
	<div id="top_bar" class="top_bar">
		<div class="top_bar_bd cle">
			<ul class="bar_fl"></ul>
			<ul class="bar_fr" id="topbar_nav">
				<li class="topbar_user"><a href="#" class="name">${sessionScope.user.userName }，欢迎你！</a>
					[<a href="#">退出</a>]</li>
				<li class="more_menu hover"><a href="#">我的丽人</a> <i
					class="iconfont arrow"></i>
					<div class="more_bd">
						<div class="list">
							<a href="#">我的订单</a> <a href="#">我的积分</a> <a href="#">我的余额</a> <a
								href="#">我的优惠券</a> <a href="#">修改收货地址</a>
						</div>
					</div></li>
				<li class="more_menu" id="header_guanzhu"><a href="#">关注我们</a>
					<i class="iconfont"></i></li>
				<li><a href="#">帮助中心</a></li>
				<li><a id="favorite_wb" href="#"> <i class="iconfont"></i>
						收藏丽人
				</a></li>
			</ul>
		</div>
	</div>

	<!-- 下单通用页头 -->
	<div id="order_header" class="order_header">
		<div class="hd_main cle">
			<div class="p_l">
				<div class="logo">
					<a href="#"></a>
				</div>
				<div class="page_title">
					<h2>完成</h2>
				</div>
			</div>
			<div class="p_r">
				<div class="page_step">
					<div class="step_4"></div>
				</div>
			</div>
		</div>
	</div>

	<!-- 页面代码开始 -->
	<div id="content">
		<div id="page" class="page">
			<div class="main">
				<div class="title cle">
					<h3>支付信息</h3>
				</div>

				<div class="pay_info">
					<div class="right">
						<div class="txt">
							订单编号为：<b id="textcolor">${param.oid} </b><br /> 您已成功付款<b
								id="textcolor"> ${param.total}</b> 元到丽宝，我们将在48小时内完成发货操作。
						</div>
					</div>
				</div>

				<div class="title cle">
					<h3>您还可以</h3>
				</div>
				<div class="continue">
					<a href="http://localhost:8080/LRMZ/user/findGoods"> 继续购物>> </a>
				</div>
				<div class="continue">
					<div class="op">
						<a href="http://localhost:8080/LRMZ/user/toIndex">返回主页</a>
					</div>
				</div>
				<div class="continue">
					<a href=""> 查看交易信息 </a>
				</div>

			</div>
			<div class="favo">
			<h3>猜你喜欢</h3>
			<div class="productlist" id="productlist">	
					<ul class="cle">
							<li>
								<a href="http://localhost:8080/LRMZ/user/toDetail?gid=6" > 
									<img src="../images/06.jpg" alt="<s:property value="goodsName"/>" style="display: block;">
									<p class="txt">
										玉兰油防晒bb霜
									</p> 
								</a>
							</li>
							<li>
								<a href="http://localhost:8080/LRMZ/user/toDetail?gid=7" > 
									<img src="../images/07.jpg" alt="<s:property value="goodsName"/>" style="display: block;">
									<p class="txt">
										香奈儿 chanel 邂逅香水
									</p> 
								</a>
							</li>
							<li>
								<a href="http://localhost:8080/LRMZ/user/toDetail?gid=9" > 
									<img src="../images/09.jpg" alt="<s:property value="goodsName"/>" style="display: block;">
									<p class="txt">
										卡尔文克雷恩（Calvin Klein）套装
									</p> 
								</a>
							</li>
							<li>
								<a href="http://localhost:8080/LRMZ/user/toDetail?gid=10" > 
									<img src="../images/10.jpg" alt="<s:property value="goodsName"/>" style="display: block;">
									<p class="txt">
										雅诗兰黛EsteeLauder水凝润颜
									</p> 
								</a>
							</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- 页面代码结束 -->


	<!-- 页尾开始 -->
	<div id="footer">
		<div class="ft_main" align="center">
			<div class="ft_nav">
				<a href="#/about-about_us.html" target="_blank" class="noborder">关于丽宝</a>
				<a href="#/about-store_invite.html" target="_blank">商家入驻</a> <a
					href="#/about-lizi_agent.html" target="_blank">代理招募</a> <a
					href="#/job-joinus.html" target="_blank">加入我们</a> <a
					href="#/cms/cmsBuyerOrSeller?uniqueMark=48hours_delivery&amp;mark=buyer"
					target="_blank">配送政策</a> <a
					href="#/cms/cmsBuyerOrSeller?cmsMark=refundProduct_condition&amp;mark=buyer"
					target="_blank">售后保障</a> <a
					href="#/cms/cmsBuyerOrSeller?mark=buyer" target="_blank">帮助中心</a> <a
					href="#/about-contact_us.html" target="_blank">联系我们</a>
			</div>
			<div class="ft_txt">
				<p>
					Copyright 2009-2015, 西农达内第三众组攻城狮 增值电信业务经营许可证：陕B2-20110315 备案号：<a
						href="http://www.miitbeian.gov.cn/" target="_blank">陕ICP备11012845号-5</a>
				</p>
				<p class="ft_contact">
					<span>服务时间：09:00-23:00</span> <span class="ft_phone">客服热线: <em>029-87091110</em></span>
				</p>
			</div>
		</div>
	</div>
	<!-- 页尾结束 -->
</body>
</html>
