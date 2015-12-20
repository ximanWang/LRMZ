<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"
	+request.getServerName()+":"+request.getServerPort()+path+"/";
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>丽人美妆</title>
		<link rel="shortcut icon" href="../images/index/li.png"
			type="../images/index/x-icon" />
		<iframe src="../images/findGoods_img/selection/analyze.html"
			scrolling="no" width="1" height="1" style="display: none;"></iframe>
		<script type="text/javascript" async src="js/mv.js"></script>
		<script type="text/javascript" async src="js/mba.js"></script>
		<script type="text/javascript" async src="js/s.js"></script>
		<script type="text/javascript" async defer
			src="js/lizi_liontrack.min.2.1.js"></script>
		<script type="text/javascript" async src="js/mvl.js"></script>
		<script type="text/javascript" async src="images/selection/pixel.php"></script>
		<script async src="js/analytics.js"></script>
		<script src="js/lib.js"></script>
		<script src="js/global.js"></script>
		<script src="../js/findGoods_js/common.js"></script>
		<meta name="Description" content="">
		<meta name="Keywords" content="">
		<meta name="layout" content="lizi_layout">
		<link rel="stylesheet" href="../style/findGoods_css/selsearch.css">
		<script type="text/javascript"
			src="../images/findGoods_img/selection/t"></script>
		<script type="text/javascript"
			src="../images/findGoods_img/selection/t(1)"></script>
		<link type="text/css" rel="stylesheet"
			href="../style/findGoods_css/selsidebar.css">
		<link type="text/css" rel="stylesheet"
			href="../style/findGoods_css/seldialog.css">
		<link type="text/css" rel="stylesheet" href="../style/reset1.css">
		<link type="text/css" rel="stylesheet" href="../style/main1.css">
		<link type="text/css" rel="stylesheet" href="../style/common.css" />
		<script type="text/javascript" charset="utf-8" async
			data-requirecontext="_" data-requiremodule="cart_ajax"
			src="js/cart_ajax.js"></script>
		<link rel="stylesheet" href="../style/findGoods_css/global.css">
		<link href="../style/findGoods_css/common.css" rel="stylesheet"
			type="text/css">
		<script type="text/javascript" src="../js/jquery-1.4.3.js"></script>
		<script type="text/javascript">
		function MM_showHideLayers() { //v9.0
 			 var i,p,v,obj,args=MM_showHideLayers.arguments;
  				for (i=0; i<(args.length-2); i+=3) 
  			with (document) if (getElementById && ((obj=getElementById(args[i]))!=null)) { v=args[i+2];
   		 if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v=='hide')?'hidden':v; }
   		 obj.visibility=v; }
}
  </script>

		<script type="text/javascript">
  <!-- 获取一个序列 -->
  function addColle(obj){ 
    var parent = $(obj).parent();
      var gid = parent.children().eq(0).val();
      $.post(
        'addCollection',
        {'gid':gid},
        function(data){
             var pass = data;
             if(pass){
               alert("该美妆你已添加！O(∩_∩)O~");
             }else{
               alert("恭喜你，美妆添加成功！O(∩_∩)O~");
             }
        }
      );
  } 
  </script>
		<script type="text/javascript">
		 //跳转到目标页
            function toPage(targetPage){
            	document.getElementById("targetPage").value=targetPage;
            	document.forms[0].submit();
            }
	</script>
		<style type="text/css">
#log {
	margin-top: -15px;
	margin-left: 60px;
}
.logo {
	height: 100px;
	padding-left:30px;
	margin-top: -20px;
}

</style>
	</head>

	<body>
		<form action="findGoods" method="post">
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
									<strong>${sessionScope.user.userName}</strong>，欢迎您！
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
						<input type="text" class="sea_input fl" name="gbrand"
							id="textfield" autocomplete="off" />
						<input type="button" class="sea_submit" onclick="toPage(1);" />

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
							<a class="tit" href="findAllCarts"><b class="iconfont"></b>购物车<span><i
									class="iconfont"></i> </span><em class="cartnum">0</em> </a>
							<div class="more_bd">
								<p class="load"></p>
							</div>
						</div>
					</div>
				</div>
				<div class="hd_nav">
					<div class="hd_nav_bd cle">
						<div class="main_nav" id="main_nav">
							<div class="main_nav_link" id="main">
								<a href="findGoods"
									onMouseOver="MM_showHideLayers('J_mainCata','','show')"
									onMouseOut="MM_showHideLayers('J_mainCata','','hide')"><i
									class="iconfont"></i>进入商城</a>
							</div>
							<div class="main_cata" id="J_mainCata"
								style="display: none; opacity: 0; height: 0px; visibility: hidden;">
								<ul>
									<li class="first">
										<h3>
											<a href="javascript:;">护肤</a>
										</h3>
										<div class="bd">
											<a target="_blank" href="#">洁面</a>
											<a target="_blank" href="#">爽肤水</a>
											<a target="_blank" href="#">防晒</a>
											<a target="_blank" href="#">卸妆</a>
											<a target="_blank" href="#">眼部护理</a>
											<a target="_blank" href="#">面部精华</a>
											<a target="_blank" href="#">乳液/面霜</a>
										</div>
									</li>
									<li>
										<h3>
											<a href="javascript:;">彩妆</a>
										</h3>
										<div class="bd">
											<a target="_blank" href="#">BB霜</a>
											<a target="_blank" href="#">隔离/打底</a>
											<a target="_blank" href="#">粉底液/膏</a>
											<a target="_blank" href="#">眼影</a>
											<a target="_blank" href="#">眼线</a>
											<a target="_blank" href="#">睫毛膏</a>
											<a target="_blank" href="#">口红</a>
											<a target="_blank" href="#">香水</a>
										</div>
									</li>
									<li>
										<h3>
											<a href="javascript:;">日化清洁</a>
										</h3>
										<div class="bd">
											<a target="_blank" href="#">洗发护发</a>
											<a target="_blank" href="#">身体洗护</a>
											<a target="_blank" href="#">口腔护理</a>
										</div>
									</li>
									<li>
										<h3>
											<a href="javascript:;">化妆工具</a>
										</h3>
										<div class="bd">
											<a target="_blank" href="#">化妆刷</a>
											<a target="_blank" href="#">化妆棉</a>
											<a target="_blank" href="#">粉扑/洁面扑</a>
										</div>
									</li>
								</ul>
							</div>
							<div class="J_subCata" id="J_subCata"
								style="opacity: 0; left: 100px;">
							</div>
						</div>
						<ul class="sub_nav cle" id="sub_nav">
							
							<li>
								<a target="_blank" href="#" rel="nofollow">100%正品</a>
							</li>
							
						</ul>
					</div>
				</div>
			</div>

			<!-- 页面代码 -->
			<div id="wrapper">
				<!-- 页面具体内容  -->
				<!-- 查询出了结果 -->
				<div class="search-selected">
					<span class="search-min-nav"><a href="#">全部</a> </span>
				</div>
				<!-- 已选择项 end -->

				<!-- 筛选属性模块 开始 -->
				<div class="search-options" id="search-options">
					<div class="bd">
						<dl>
							<dt>
								分类：
							</dt>
							<dd>
								<div class="items cle">

									<s:iterator value="list">
										<div class="link">
											<a href="findCname?cname=<s:property value="cateName"/>"><s:property
													value="cateName" /> </a>
										</div>
									</s:iterator>

								</div>

								<a class="more-btn" href="javascript:;" style="display: inline;">更多&nbsp;<i
									class="iconfont"></i> </a>

							</dd>
						</dl>


						<dl>
							<dt>
								品牌：
							</dt>
							<dd>
								<div class="items cle">

									<s:iterator value="list">
										<div class="link">
											<a href="findGbrand?gbrand=<s:property value="gbrand"/>"><s:property
													value="gbrand" /> </a>
										</div>
									</s:iterator>

								</div>

								<a class="more-btn" href="javascript:;" style="display: inline;">更多&nbsp;<i
									class="iconfont"></i> </a>

							</dd>
						</dl>



					</div>
				</div>
				<!-- 筛选属性模块 结束 -->

				<!-- 商品列表 开始 -->
				<div class="productlist" id="productlist">

					<s:hidden name="page" id="targetPage"></s:hidden>
					<ul class="cle">
						<s:iterator value="list">
							<li>
								<a href="toDetail?gid=<s:property value="goodsID"/>"
									target="_blank"> <img
										src="<%=basePath+"upload/"%><s:property value="image"/>"
										alt="<s:property value="goodsName"/>" style="display: block;">
									<p class="txt">
										<s:property value="goodsName" />
									</p> </a>
								<p class="cle ">
									<span class="orange fl">美妆价：<s:property value="price" />
									</span><span class="fr">库存<s:property value="goodsNum" /> </span>
								</p>
								<p>
									<a href="cartAction?goodsId=<s:property value="goodsID" />"
										class="addCar">加入购物车</a>
								</p>
							</li>
						</s:iterator>
					</ul>
				</div>

				<div class="pagenav">
					<div align="center" id="page">
						<a href="javascript:toPage(1);">首页</a>
						<s:if test="page1==1">
							<a href="#"></a>
						</s:if>
						<s:else>
							<a href="javascript:toPage(<s:property value="page-1"/>);">上一页</a>
						</s:else>
						<s:iterator begin="1" end="totalPage" var="k">
							<a href="javascript:toPage(<s:property />);"><s:property />
							</a>
						</s:iterator>
						<s:if test="page1==totalPage">
							<a href="#"></a>
						</s:if>
						<s:else>
							<a href="javascript:toPage(<s:property value="page+1"/>);">下一页</a>
						</s:else>
						<a href="javascript:toPage(<s:property value="totalPage" />);">末页</a>
					</div>
				</div>
			</div>

			<script src="js/search.js"></script>
			<!-- DSP -->
			<!-- 聚效 -->
			<script type="text/javascript">
    var _mvq = window._mvq || [];
    window._mvq = _mvq;
    _mvq.push(['$setAccount', 'm-140943-0']);
    _mvq.push(['$setGeneral', 'searchresult', '', /*用户名*/ '', /*用户id*/ '']);
    _mvq.push(['$logConversion']);
    _mvq.push(['$addSearchResult', /*搜素关键词*/ '', /*搜索结果数*/ '2240']);
    _mvq.push(['$logData']);
</script>
			<!-- 晶赞-->

			<!-- DSP END-->
		</form>


		<!-- 页尾 -->
		<div id="footer">
			<div class="ft_main">
				<div class="ft_nav">
					<a href="http://www.lizi.com/about-about_us.html" target="_blank"
						class="noborder">关于丽人</a>
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
						Copyright 2009-2015, 西北农林科技大学 LRMZ.COM 增值电信业务经营许可证：陕B2-20110315
						备案号：
						<a href="http://www.miitbeian.gov.cn/" target="_blank">浙ICP备11012845号-5</a>
					</p>
					<p class="ft_contact">
						<span>服务时间：09:00-23:00</span>
						<span class="ft_phone">客服热线: <em>4007-112-112</em> </span>
					</p>
					<p class="beian_ico">
						<a
							href="http://www.lizi.com/cms/beautyInformation?uniqueMark=lizi_jingdian"
							target="_blank"><img alt="丽子美妆获得电商金典奖"
								src="../images/findGoods_img/selection/flogo-jindian.png">
						</a>

						<a
							href="http://www.lizi.com/cms/cmsBuyerOrSeller?cmsMark=PICC_insurance&mark=buyer"
							target="_blank"><img alt="中国人保为丽子化妆品承保"
								src="../images/findGoods_img/selection/flogo-picc.png"> </a>

						<a href="http://www.itrust.org.cn/yz/pjwx.asp?wm=1563049676"
							target="_blank"><img alt="互联网协会A级信用认证"
								src="../images/findGoods_img/selection/flogo-xinyong.png">
						</a>
					</p>
				</div>
				<div class="fsm fsm2">
					<img src="../images/findGoods_img/selection/lizi-weixin.png">
					<p>
						<i class="iconfont"></i>
						<br>
						扫描关注微信公众号
					</p>
				</div>
				<div class="fsm fsm">
					<a href="http://www.lizi.com/active/lizi-app.html" target="_blank"><img
							src="../images/findGoods_img/selection/fapp.jpg">
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
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r;
        i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date();
        a = s.createElement(o),
                m = s.getElementsByTagName(o)[0];
        a.async = 1;
        a.src = g;
        m.parentNode.insertBefore(a, m)
    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
    ga('create', 'UA-48440045-1', 'lizi.com');
    ga('send', 'pageview');

    (function(){
        try {
            var viz = document.createElement("script");
            viz.type = "text/javascript";
            viz.async = true;
            viz.src = ("https:" == document.location.protocol ?"https://cn-tags.vizury.com" : "http://cn-tags.vizury.com")+ "/analyze/pixel.php?account_id=VIZVRM2723";

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
    _mvq.push(['$setAccount', 'm-140943-0']);
    _mvq.push(['$setGeneral', '', '', /*用户名*/ '', /*用户id*/ '']);//如果不传用户名、用户id，此句可以删掉
    _mvq.push(['$logConversion']);
    (function() {
        var mvl = document.createElement('script');
        mvl.type = 'text/javascript'; mvl.async = true;
        mvl.src = ('https:' == document.location.protocol ? 'https://static-ssl.mediav.com/mvl.js' : 'http://static.mediav.com/mvl.js');
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(mvl, s);
    })();
</script>
		<!-- 新数统计 -->
		<script type="text/javascript">
    (function(){
        var _lt_id=12;	var j=document.createElement('script');
        j.type='text/javascript';
        j.async=true;
        j.defer=true;
        j.src=(('https:' === document.location.protocol)?'https://':'http://')+'dmp.kejet.net/ad/lizi_liontrack.min.2.1.js';
        var s=document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(j,s);
    })();
</script>
		<!-- 晶赞统计 -->
		<script type="text/javascript">
    (function(param)
    {
        var c = {query:[], args:param||{}};
        c.query.push(["_setAccount","396"]);
        (window.__zpSMConfig = window.__zpSMConfig||[]).push(c);
        var zp = document.createElement("script");
        zp.type = "text/javascript";
        zp.async = true;
        zp.src = ("https:" == document.location.protocol ? "https:" : "http:") + "//cdn.zampda.net/s.js";
        var s = document.getElementsByTagName("script")[0]; s.parentNode.insertBefore(zp, s);
    })
    (window.__zp_tag_params);
</script>


		<div id="search_result_search_fm" class="search_result"
			style="display: none;"></div>
		<div id="g_sidebar" class="g_sidebar" style="height: 737px;">
			<ul class="sb_top">
				<li class="sb_cart">
					<a href="http://www.lizi.com/cart/"><i class="iconfont"><img
								src="../images/findGoods_img/cart.png" /> </i><span>购物车</span><em
						id="sidebar_cartnum">0</em> </a>
				</li>
			</ul>
			<ul class="sb_btm">
				<li>
					<a href="http://www.lizi.com/user/home"><i class="iconfont"><img
								src="images/user.png" /> </i> </a>
					<div class="tip">
						<cite class="iconfont"></cite><a
							href="http://www.lizi.com/user/home">我的丽子</a>
					</div>
				</li>
				<li class="">
					<a href="http://www.lizi.com/"><i class="iconfont"><img
								src="../images/findGoods_img/index.png" /> </i> </a>
					<div class="tip">
						<cite class="iconfont"></cite><a href="http://www.lizi.com/">返回首页</a>
					</div>
				</li>
				<li class="back2top">
					<a href="javascript:;"><i class="iconfont"></i> </a>
					<div class="tip">
						<cite class="iconfont"></cite><a href="javascript:;">返回顶部</a>
					</div>
				</li>
			</ul>
		</div>
	</body>
</html>
