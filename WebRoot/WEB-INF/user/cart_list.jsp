<%@ page language="java" import="java.util.*"  pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"
	+request.getServerName()+":"+request.getServerPort()+path+"/";
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="Description" content=""/>
<meta name="Keywords" content=""/>

<link rel="shortcut icon" href="../images/index/li.png"	type="../images/index/x-icon" />
<link rel="stylesheet" href="../style/global_cart.css"/>
<link rel="stylesheet" href="../style/common.css"/>
<link rel="stylesheet" href="../style/cart.css"/>
<meta name="layout" content="cart_layout"/>

<script src="../js/jquery-1.7.2.min.js"></script>
<script src="../js/cart.js"></script>
<title>购物车</title>
	<script type="text/javascript">
    function change(id,inputObj){
        var quantity=inputObj.value;
   
        location.href="${pageContext.request.contextPath}/user/update?id="+id+"&num="+quantity;
    }
</script>
<style type="text/css">
	.min{background: url(../images/min.png) no-repeat scroll 0 0 transparent; }
	.add{background: url(../images/add.png) no-repeat scroll 0 0 transparent; }
	#second .goods{text-align:left; padding-left:24px;}
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


<!-- 下单通用页头 -->
<div id="order_header" class="order_header">
    <div class="hd_main cle">
        <div class="p_l">
            <div class="logo"><a href="http://www.lrmz.com"></a></div>
            <div class="page_title"><h2>购物车</h2></div>
        </div>
        <div class="p_r">
            <div class="page_step">
                <div class="step_1"></div>
            </div>
        </div>
    </div>
</div>

<!-- 页面代码-->
<div id="body">
	<div id="allG"><a href="#">全部商品</a></div>
    <div id="cart">
    	<table width="1000px" id="shoppingCart">
        	<tr class="first">
            	<td ><input name="" type="checkbox" onclick="selectCheck(this)" value="全选" style="margin-right:10px;"/>全选</td>
                <td width="300px">商品</td>
               
                <td>单价</td>
                <td>数量</td>
                <td>小计</td>
                <td>操作</td>
            </tr>
            <s:iterator value="listCart" >
            <tr id="second">
            	<td><input name="good" type="checkbox"  value="<s:property value="goods.price"/>" onclick="gouwu(this)"/></td>
                <td class="goods"><img width="50px" height="50px" src="<%=basePath+"upload/"%><s:property value="goods.image"/>" /><s:property value="goods.goodsName"/></td>
                
                <td><s:property value="goods.price"/></td>
                <td id="num"><input class="min" name="" type="button" value=" - " onclick="sub(this);" /> 
<input class="text_box" name="" type="text" value="<s:property value="num" />"  onblur = "change(<s:property value="id"/>,this)" /> <!-- calTotal(); -->
<input class="add" name="" type="button" value=" + " onclick="add(this);" />
				</td>
                <td><s:property value="subtotal"/></td>
                <td><input type="button" class="btn" value="删除" onclick="location.href='deleteOne?goodsId=<s:property value="goods.goodsID"/>';" /></td>
            </tr>
            </s:iterator>
            <tr class="third">
            	<td colspan="3"><a href="clearAction" class="btn">清空商品</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="findGoods" class="btn">继续购物</a></td>
                <td><br></td>
                <td>总计：<span id="sum"><s:property value="total" /></span></td>
                <td><a href="toBuy" class="btn">去结算</a></td>
            </tr>
        </table>
    </div>
	
</div>

<!--页面代码 -->
<div id="content">
</div>

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