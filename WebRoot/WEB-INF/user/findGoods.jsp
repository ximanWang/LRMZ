<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"
	+request.getServerName()+":"+request.getServerPort()+path+"/";
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>商品筛选</title>
<link type="text/css" rel="stylesheet" href="../style/reset1.css">
<link type="text/css" rel="stylesheet" href="../style/main1.css">
<script type="text/javascript" src="../js/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript" src="../js/ie6Fixpng.js"></script>

<style type="text/css">
body,td,th {
	font-family: "Courier New", Courier, monospace;
}
</style>
<script type="text/javascript">
	
		 //跳转到目标页
            function toPage(targetPage){
            	document.getElementById("targetPage").value=targetPage;
            	document.forms[0].submit();
            }
	</script>
</head>

<body>
<form action="findGoods"  method="post">
<div class="headerBar">
	<div class="topBar">
		<div class="comWidth">
			<div class="leftArea">
				<a href="#" class="collection">收藏丽人</a>
			</div>
			<div class="rightArea">
				欢迎来到丽人美妆！<a href="#">[登录]</a><a href="#">[免费注册]</a>
			</div>
		</div>
	</div>
	
	<div class="logoBar">
		<div class="comWidth">
			<div class="logo fl">
				<a href="#"><img src="../images/logo.jpg" alt="丽人美妆"></a>
			</div>
			
			<div class="search_box fl">
				<!-- <input type="text" name="goods.goodsName" class="search_text fl"> -->
			   <input type="text" class="search_text fl" name="gbrand"/>
               <!-- 品牌:<input type="text" class="search_text fl" /> -->
                
				<input type="button" value="品牌搜索" class="search_btn fr" onclick="toPage(1);">
			</div>
			<div class="shopCar fr">
				<span class="shopText fl">购物车</span>
				<span class="shopNum fl">0</span>
			</div>
		</div>
	</div>
	<div class="navBox">
		<div class="comWidth clearfix">
			<div class="shopClass fl">
				<h3>全部商品分类<i class="shopClass_icon"></i></h3>
			</div>
			<ul class="nav fl">
				<li><a href="#" class="active">美妆商城</a></li>
				<li><a href="#">限时特卖</a></li>
				<li><a href="#">闪购团购</a></li>
				<li><a href="#">发现</a></li>
				<li><a href="#">二手特卖</a></li>
				<li><a href="#">名品会</a></li>
			</ul>
		</div>
	</div>
</div>
<!--<div class="hr_15"></div>-->
<div class="comWidth clearfix products">
<div class="hr_15"></div>
	<div class="leftArea">
		<div class="leftNav vertical">
			<h3 class="nav_title">护肤、彩妆</h3>
            <div class="nav_cont">
				<h3>护肤</h3>
				<ul class="navCont_list clearfix">
					<li><a href="findGoods?cname='护肤'">洁面</a></li>
					<li><a href="#">爽肤水</a></li>
					<li><a href="#">防晒</a></li>
					<li><a href="#">卸妆</a></li>
					<li><a href="#">眼部护理</a></li>
					<li><a href="#">面部精华</a></li>
					<li><a href="#">乳液/面霜</a></li>
				</ul>
			</div>
            <div class="nav_cont">
				<h3>彩妆</h3>
				<ul class="navCont_list clearfix">
					<li><a href="#">BB霜</a></li>
					<li><a href="#">隔离/打底</a></li>
					<li><a href="#">粉底液/膏</a></li>
                    <li><a href="#">眼影</a></li>
                    <li><a href="#">眼线</a></li>
                    <li><a href="#">睫毛膏</a></li>
                    <li><a href="#">口红</a></li>
                    <li><a href="#">香水</a></li>
				</ul>
			</div>
            <div class="nav_cont">
				<h3>日化清洁</h3>
				<ul class="navCont_list clearfix">
					<li><a href="#">洗发护发</a></li>
					<li><a href="#">身体洗护</a></li>
					<li><a href="#">口腔护理</a></li>
				</ul>
			</div>
			<div class="nav_cont">
				<h3>化妆工具</h3>
				<ul class="navCont_list clearfix">
					<li><a href="#">化妆刷</a></li>
					<li><a href="#">化妆棉</a></li>
                    <li><a href="#">粉扑/洁面扑</a></li>
				</ul>
			</div>			
		</div>
	</div>
	<div class="rightArea">
		
		 <s:hidden name="page" id="targetPage"></s:hidden>
		
		<div class="hr_15"></div><div class="products_list screening_list_more clearfix">
			<s:iterator value="list">
			<div class="item">
				<div class="item_cont">
					<div class="img_item">
						<a href="toGoodsDetail?id=<s:property value="goodsID"/>"><img src="<%=basePath+"upload/"%><s:property value="image"/>" alt=""></a>
					</div>
					<p><a href="#"><s:property value="goodsName" /></a></p>
					美妆价：<p class="money"><s:property value="price" /></p>
					<p><a href="http://localhost:8080/LRMZ/user/cartAction?goodsId=<s:property value="goodsID" />" class="addCar">加入购物车</a></p>
				</div>
			</div>
			</s:iterator>
			
		</div>
		
		
		<div class="hr_25"></div>
		    <div id="page" align="center">
            [<a href="javascript:toPage(1);">首页</a>]
        	<s:if test="page==1"><a href="#"></a> </s:if>
        	<s:else>
	           [<a href="javascript:toPage(<s:property value="page-1"/>);">上一页</a>]
        	</s:else>
        	<s:iterator begin="1" end="totalPage" var="k">
		       [<a href="javascript:toPage(<s:property />);" ><s:property /></a>]
            </s:iterator>
            <s:if test="page==totalPage">
                    <a href="#"></a>
        	</s:if>
        	<s:else>
	              [<a href="javascript:toPage(<s:property value="page+1"/>);">下一页</a>]
        	 </s:else>
                 [<a href="javascript:toPage(<s:property value="totalPage" />);">末页</a>]
             </div>                
		 
		
		</div>
	</div>
	</form>
<div class="hr_25"></div>
<div class="footer">
	<p><a href="#">丽人简介</a><i>|</i><a href="#">丽人公告</a><i>|</i> <a href="#">招纳贤士</a><i>|</i><a href="#">

联系我们</a><i>|</i>客服热线：400-675-1234</p>
	<p>Copyright &copy; 2006 - 2014 丽人版权所有&nbsp;&nbsp;&nbsp;京ICP备09037834号&nbsp;&nbsp;&nbsp;京ICP证B1034-

8373号&nbsp;&nbsp;&nbsp;某市公安局XX分局备案编号：123456789123</p>
	<p class="web"><a href="#"><img src="../images/webLogo.jpg" alt="logo"></a><a href="#"><img 

src="../images/webLogo.jpg" alt="logo"></a><a href="#"><img src="../images/webLogo.jpg" alt="logo"></a><a href="#"><img 

src="../images/webLogo.jpg" alt="logo"></a></p>
</div>
</body>
</html>
