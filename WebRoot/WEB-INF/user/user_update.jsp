<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
		<link rel="dns-prefetch" href="//s.lizi.com">
		<meta name="renderer" content="webkit" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<title>丽人美妆</title>
		<link rel="shortcut icon" href="http://s.lizi.com/favicon.ico"
			type="image/x-icon" />
		<link rel="stylesheet" href="../style/css/globl.css" />
		<link rel="stylesheet" href="../style/common1.css" />
		<link rel="stylesheet" href="../style/css/common.css" />
		<script src="http://s.lizi.com/www/js/lib/lib.js"></script>
		<script src="http://s.lizi.com/www/js/global.js?201506256"></script>
		<script src="http://s.lizi.com/www/js/common.js?2015062582"></script>
		<meta name="layout" content="buyer_layout" />
		<link rel="stylesheet" href="../style/my_info.css">
		<style type="text/css">
		#shangchuan{
			margin-left: 150px;
			margin-top: -50px;
		}
		</style>
	</head>
	<body>
		<!-- 顶部导航条 -->
		<div class="top">
			${sessionScope.user.userName }，欢迎你！ &nbsp;&nbsp;&nbsp;&nbsp;
			<a href="#">[退出]</a>&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="toUpdateUser">我的丽人&nbsp;<img src="../images/xia.png" />
			</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a onClick="AddFavorite('http://www.lrmz.com','丽人美妆')" href="#"
				title="加入收藏"><img src="../images/heart.png" />&nbsp;收藏丽人</a>
		</div>

		<!-- 页头 -->
		<div id="header" class="header">
			<div class="hd_main cle">
				<div class="logo">
					<p>
						<a href="http://www.lizi.com" class="lizi_logo">丽人美妆</a>
					</p>
				</div>
				<div class="search_box">
					<form action="http://www.lizi.com/itemSearch/search" method="get"
						id="search_fm" name="search_fm">
						<input class="sea_input" type="text" name="content" id="textfield"
							value="请输入商品或品牌" />
						<button type="submit" class="sea_submit">
							搜索
						</button>
					</form>
				</div>
				<div class="head_search_hot">
					<!--热搜榜-->
					<span>热搜榜：</span>
					<a class="red"
						href="http://www.lizi.com/itemSearch/search?content=%E9%9D%A2%E8%86%9C"
						target="_blank">面膜</a>
					<a href="http://www.lizi.com/itemSearch/search?content=CANMAKE"
						target="_blank">CANMAKE</a>
					<a
						href="http://www.lizi.com/itemSearch/search?content=%E7%88%B1%E4%B8%BD%E5%B0%8F%E5%B1%8B"
						target="_blank">爱丽小屋</a>
					<a class="red"
						href="http://www.lizi.com/itemSearch/search?content=%E6%96%B0%E5%93%81%E5%94%87%E8%86%8F/%E5%8F%A3%E7%BA%A2"
						target="_blank">新品唇膏/口红</a>
					<a
						href="http://www.lizi.com/itemSearch/search?content=%E6%8A%A4%E6%89%8B%E9%9C%9C"
						target="_blank">护手霜</a>
					<a class="red"
						href="http://www.lizi.com/itemSearch/search?content=%E6%82%A6%E8%AF%97%E9%A3%8E%E5%90%9F"
						target="_blank">悦诗风吟</a>

				</div>
				<div class="head_right">
					<div class="head_cart" id="header_cart">
						<a class="tit" href="http://www.lizi.com/cart/"><b
							class="iconfont">&#x16d;</b>购物车<span><i class="iconfont">&#xe647;</i>
						</span><em class="cartnum">0</em> </a>
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
						<div class="J_subCata" id="J_subCata">
						</div>
					</div>
					<ul class="sub_nav cle" id="sub_nav">
						


						<li>
							<a target="_blank" href="http://www.lizi.com/active/zpbz.html"
								rel="nofollow">100%正品</a>
						</li>
						
					</ul>
				</div>
			</div>
		</div>

		<div id="wrapper">
			<div class="manage_wrap cle">

				<!-- 左侧导航 -->
				<div class="fl manage_left">
					<div class="manage_center_hd">
						<h4>
							我的丽人
						</h4>
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
						<h4>
							个人资料
						</h4>
					</div>
					<div class="my_form" id="info_form">
						<form action="updateUser" method="post"
							enctype="multipart/form-data">
							<ul>
								<li>
									<input type="hidden" name="user.userID"
										value="<s:property value="id"/>" />
								</li>
								<li>
									<label>
										用&nbsp;&nbsp;户&nbsp;&nbsp;名
									</label>
									<input name="user.userName" type="text"
										value="<s:property value="user.userName" />"
										readonly="readonly" />
								</li>
								<li class="userface">
									<label>
										头&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;像
									</label>
									<div class="iface">
										<div class="face" id="face">
											<img src="${pageContext.request.contextPath}/faceUpload/<s:property value='user.userID
        		'/>.jpg" />
											<input type="file" name="faceUpload" id="shangchuan" />
											<br />
											<!--       <img src="<s:property value=" ' upload/' + uploadFileName " />" />   -->

										</div>
								</li>
								<li class="radio_li">
									<label>
										性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别
									</label>
									<s:radio name="user.sex"
										list="#{'1':'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;男    ','2':'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;女'}"
										cssStyle="width:60px;"></s:radio>
								</li>
								<li>
									<label>
										邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱
									</label>
									<input name="user.email" type="text"
										value="<s:property value="user.email"/>" />
								</li>
								<li>
									<label>
										地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址
									</label>
									<input name="user.address" type="text"
										value="<s:property value="user.address"/>" />
								</li>
								<li>
									<label>
										联系方式
									</label>
									<input name="user.phone" type="text"
										value="<s:property value="user.phone"/>" />
								</li>
							</ul>
							<div class="form_submit">
								<input type="submit" value="保存" onclick=alert( '保存成功！');;
/>

							</div>
						</form>
					</div>
				</div>
				<script src="http://s.lizi.com/www/js/buyer/my_info.js?201506092"></script>
				<script type="text/javascript">
	$('#birthday_y,#birthday_m').on('change', function() {
		findDay('#birthday_m');
	})

	function findDay(obj) {
		var _val = $(obj).val();
		$
				.post(
						"/user/findDay",
						{
							id : _val,
							year : $("#birthday_y").val()
						},
						function(data) {
							var birthday_d = $("#birthday_d"), html = '__tag_227$24_--æ¥--__tag_227$49_';
							for ( var i = 1; i <= data.day; i++) {
								html += '__tag_229$25_' + i + '__tag_229$52_';
							}
							birthday_d.html(html);
						})
	}
</script>

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
						Copyright 2009-2015, 辛巴信息技术（杭州）有限公司 LIZI.COM
						增值电信业务经营许可证：浙B2-20110315 备案号：
						<a href="http://www.miitbeian.gov.cn" target="_blank">浙ICP备11012845号-5</a>
					</p>
					<p class="ft_contact">
						<span>服务时间：09:00-23:00</span>
						<span class="ft_phone">客服热线: <em>4007-112-112</em> </span>
					</p>
					<p class="beian_ico">
						<a
							href="http://www.lizi.com/cms/beautyInformation?uniqueMark=lizi_jingdian"
							target="_blank"><img alt="丽子美妆获得电商金典奖"
								src="http://cdn.lizi.com/images/flogo-jindian.png" /> </a>

						<a
							href="http://www.lizi.com/cms/cmsBuyerOrSeller?cmsMark=PICC_insurance&mark=buyer"
							target="_blank"><img alt="中国人保为丽子化妆品承保"
								src="http://cdn.lizi.com/images/flogo-picc.png" /> </a>

						<a href="http://www.itrust.org.cn/yz/pjwx.asp?wm=1563049676"
							target="_blank"><img alt="互联网协会A级信用认证"
								src="http://cdn.lizi.com/images/flogo-xinyong.png" /> </a>
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
						</p> </a>
				</div>
			</div>
		</div>

		<!-- GA 统计代码 -->
		<script>
	(function(i, s, o, g, r, a, m) {
		i['GoogleAnalyticsObject'] = r;
		i[r] = i[r] || function() {
			(i[r].q = i[r].q || []).push(arguments)
		}, i[r].l = 1 * new Date();
		a = s.createElement(o), m = s.getElementsByTagName(o)[0];
		a.async = 1;
		a.src = g;
		m.parentNode.insertBefore(a, m)
	})(window, document, 'script', '//www.google-analytics.com/analytics.js',
			'ga');
	ga('create', 'UA-48440045-1', 'lizi.com');
	ga('send', 'pageview');

	(function() {
		try {
			var viz = document.createElement("script");
			viz.type = "text/javascript";
			viz.async = true;
			viz.src = ("https:" == document.location.protocol ? "https://cn-tags.vizury.com"
					: "http://cn-tags.vizury.com")
					+ "/analyze/pixel.php?account_id=VIZVRM2723";

			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(viz, s);
			viz.onload = function() {
				try {
					pixel.parse();
				} catch (i) {
				}
			};
			viz.onreadystatechange = function() {
				if (viz.readyState == "complete" || viz.readyState == "loaded") {
					try {
						pixel.parse();
					} catch (i) {
					}
				}
			};
		} catch (i) {
		}
	})();
</script>
		<!-- 聚效统计 -->
		<script type="text/javascript">
	var _mvq = window._mvq || [];
	window._mvq = _mvq;
	_mvq.push( [ '$setAccount', 'm-140943-0' ]);
	_mvq.push( [ '$setGeneral', '', '', /*用户名*/'438789028@qq.com', /*用户id*/
			'554dd84de4b07395662510ba' ]);//如果不传用户名、用户id，此句可以删掉
	_mvq.push( [ '$logConversion' ]);
	(function() {
		var mvl = document.createElement('script');
		mvl.type = 'text/javascript';
		mvl.async = true;
		mvl.src = ('https:' == document.location.protocol ? 'https://static-ssl.mediav.com/mvl.js'
				: 'http://static.mediav.com/mvl.js');
		var s = document.getElementsByTagName('script')[0];
		s.parentNode.insertBefore(mvl, s);
	})();
</script>
		<!-- 新数统计 -->
		<script type="text/javascript">
	(function() {
		var _lt_id = 12;
		var j = document.createElement('script');
		j.type = 'text/javascript';
		j.async = true;
		j.defer = true;
		j.src = (('https:' === document.location.protocol) ? 'https://'
				: 'http://') + 'dmp.kejet.net/ad/lizi_liontrack.min.2.1.js';
		var s = document.getElementsByTagName('script')[0];
		s.parentNode.insertBefore(j, s);
	})();
</script>
		<!-- 晶赞统计 -->
		<script type="text/javascript">
	(function(param) {
		var c = {
			query : [],
			args : param || {}
		};
		c.query.push( [ "_setAccount", "396" ]);
		(window.__zpSMConfig = window.__zpSMConfig || []).push(c);
		var zp = document.createElement("script");
		zp.type = "text/javascript";
		zp.async = true;
		zp.src = ("https:" == document.location.protocol ? "https:" : "http:")
				+ "//cdn.zampda.net/s.js";
		var s = document.getElementsByTagName("script")[0];
		s.parentNode.insertBefore(zp, s);
	})(window.__zp_tag_params);
</script>
	</body>
</html>

