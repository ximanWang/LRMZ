<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"
	+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="utf-8">
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>丽人美妆</title>
  <link rel="stylesheet" href="../style/findGoods_css/global.css">
  <link href="../style/findGoods_css/common.css" rel="stylesheet" type="text/css">
  <script type="text/javascript">
		function MM_showHideLayers() { //v9.0
 			 var i,p,v,obj,args=MM_showHideLayers.arguments;
  				for (i=0; i<(args.length-2); i+=3) 
  			with (document) if (getElementById && ((obj=getElementById(args[i]))!=null)) { v=args[i+2];
   		 if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v=='hide')?'hidden':v; }
   		 obj.visibility=v; }
}
  </script>

  <script language="javascript"> 
    function delcfm() { 
        if (!confirm("确认要删除？")) { 
            window.event.returnValue = false; 
        } 
    } 
</script>
<script type="text/javascript">	
	//跳转到目标页
	function toPage(targetPage){
		document.getElementById("targetPage").value=targetPage;
		document.forms[0].submit();
	}
</script>
<link rel="stylesheet" href="../style/findGoods_css/selsearch.css">
<link type="text/css" rel="stylesheet" href="../style/findGoods_css/selsidebar.css">
<link type="text/css" rel="stylesheet" href="../style/findGoods_css/seldialog.css">
<link type="text/css" rel="stylesheet" href="../style/reset1.css">
<link type="text/css" rel="stylesheet" href="../style/main1.css">
<style type="text/css">
#shoucang{
font-size:40px;
margin-left:20px;
}
</style>
</head>

<body>

<!-- 顶部导航条 -->

<div id="top_bar" class="top_bar">
	<div class="top_bar_bd cle">
    	<ul class="bar_fl"></ul>
        <ul class="bar_fr" id="topbar_nav">
        	<li class="topbar_user">
            	${sessionScope.user.userName }，欢迎你！ [<a href="logout">退出</a>]
            </li>
            <li class="more_menu hover">
            	<a href="#">我的丽人</a>
                <i class="iconfont arrow"></i>
                <div class="more_bd">
                	<div class="list">
                    	<a href="#">我的订单</a>
                        <a href="http://localhost:8080/LRMZ/user/toUpdateUser">修改收货地址</a>
                        <a href="http://localhost:8080/LRMZ/user/findAllCollection">我的收藏</a>
                    </div>
                </div>
            </li>
            <li>
            	<a id="favorite_wb" href="#">
                	<i class="iconfont"></i>
                	收藏丽人
                </a>
            </li>        
        </ul>
    </div>
</div>



<form action="findAllCollection"  method="post">
<!-- 页面代码 -->
<div id="wrapper">
    <!-- 页面具体内容  -->
    <!-- 查询出了结果 -->
    <div class="search-selected">
        <span class="search-min-nav" id="shoucang"><a href="#">全部收藏</a>   
        </span>
    </div>
   
    <!-- 商品列表 开始 -->
    <div class="productlist" id="productlist">

   <s:hidden name="page" id="targetPage"></s:hidden> 
        <ul class="cle">
        <s:iterator value="glist">   
            <li>
                <a href="toDetail?gid=<s:property value="goodsID"/>"
									target="_blank">
                    <img src="<%=basePath+"upload/"%><s:property value="image"/>" alt="<s:property value="goodsName"/>" style="display: block;">
                    <p class="txt"><s:property value="goodsName"/></p>
                </a>
                <p class="cle ">
                    <span class="orange fl">美妆价：<s:property value="price"/>
                </p>
                <p><a  onClick="delcfm()" href="http://localhost:8080/LRMZ/user/deleteCollection?gid=<s:property value="goodsID" />" >删除收藏</a></p>
            </li>
          </s:iterator>
        </ul>
    </div>
    
    <div class="pagenav"  >
        <div align="center" id="page">
        	<s:if test="page1==1"><a href="#"></a> </s:if>
        	<s:else>
        	   <a href="javascript:toPage(1);">首页</a>
	           <a href="javascript:toPage(<s:property value="page-1"/>);">上一页</a>
        	</s:else>
        	<s:iterator begin="1" end="totalPage" var="k">
		       <a href="javascript:toPage(<s:property />);" ><s:property /></a>
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
            <a href="http://www.lizi.com/about-about_us.html" target="_blank" class="noborder">关于丽人</a>
            <cite>/</cite>
            <a href="http://www.lizi.com/about-store_invite.html" target="_blank">商家入驻</a>
            <cite>/</cite>
            <a href="http://www.lizi.com/about-lizi_agent.html" target="_blank">代理招募</a>
            <cite>/</cite>
            <a href="http://www.lizi.com/job-joinus.html" target="_blank">加入我们</a>
            <cite>/</cite>
            <a href="http://www.lizi.com/cms/cmsBuyerOrSeller?uniqueMark=48hours_delivery&mark=buyer" target="_blank">配送政策</a>
            <cite>/</cite>
            <a href="http://www.lizi.com/cms/cmsBuyerOrSeller?cmsMark=refundProduct_condition&mark=buyer" target="_blank">售后保障</a>
            <cite>/</cite>
            <a href="http://www.lizi.com/cms/cmsBuyerOrSeller?mark=buyer" target="_blank">帮助中心</a>
            <cite>/</cite>
            <a href="http://www.lizi.com/about-contact_us.html" target="_blank">联系我们</a>
            <cite>/</cite>
            <a href="http://www.lizi.com/cms/beautyInformation?uniqueMark=frequentlyAsked_questions" target="_blank">平台公告</a>
        </div>
        <div class="ft_txt">
            <p>
                Copyright 2009-2015, 西北农林科技大学 LRMZ.COM 增值电信业务经营许可证：陕B2-20110315 备案号：<a href="http://www.miitbeian.gov.cn/" target="_blank">浙ICP备11012845号-5</a></p>
            <p class="ft_contact">
                <span>服务时间：09:00-23:00</span> <span class="ft_phone">客服热线: <em>4007-112-112</em></span></p>
            <p class="beian_ico">
                <a href="http://www.lizi.com/cms/beautyInformation?uniqueMark=lizi_jingdian" target="_blank"><img alt="丽子美妆获得电商金典奖" src="../images/findGoods_img/selection/flogo-jindian.png"></a>

                <a href="http://www.lizi.com/cms/cmsBuyerOrSeller?cmsMark=PICC_insurance&mark=buyer" target="_blank"><img alt="中国人保为丽子化妆品承保" src="../images/findGoods_img/selection/flogo-picc.png"></a>

                <a href="http://www.itrust.org.cn/yz/pjwx.asp?wm=1563049676" target="_blank"><img alt="互联网协会A级信用认证" src="../images/findGoods_img/selection/flogo-xinyong.png"></a>
            </p>
        </div>
        <div class="fsm fsm2"><img src="../images/findGoods_img/selection/lizi-weixin.png"><p><i class="iconfont"></i><br>扫描关注微信公众号</p></div>
        <div class="fsm fsm"><a href="http://www.lizi.com/active/lizi-app.html" target="_blank"><img src="../images/findGoods_img/selection/fapp.jpg"><p>APP<br>手机客户端下载</p></a></div>
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


<div id="search_result_search_fm" class="search_result" style="display: none;"></div><div id="g_sidebar" class="g_sidebar" style="height: 737px;"><ul class="sb_top"><li class="sb_cart"><a href="http://www.lizi.com/cart/"><i class="iconfont"><img src="../images/findGoods_img/cart.png" /></i><span>购物车</span><em id="sidebar_cartnum">0</em></a></li></ul><ul class="sb_btm"><li><a href="http://www.lizi.com/user/home"><i class="iconfont"><img src="images/user.png" /></i></a><div class="tip"><cite class="iconfont"></cite><a href="http://www.lizi.com/user/home">我的丽子</a></div></li><li class=""><a href="http://www.lizi.com/"><i class="iconfont"><img src="../images/findGoods_img/index.png" /></i></a><div class="tip"><cite class="iconfont"></cite><a href="http://www.lizi.com/">返回首页</a></div></li><li class="back2top"><a href="javascript:;"><i class="iconfont"></i></a><div class="tip"><cite class="iconfont"></cite><a href="javascript:;">返回顶部</a></div></li></ul></div></body>
</html>
