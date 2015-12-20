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
<title>我的订单</title>
<link rel="shortcut icon" href="../images/buy/li.png" />

<link type="text/css" rel="stylesheet" href="../style/pay_b.css" />
<link type="text/css" rel="stylesheet" href="../style/common_b.css" />
<link type="text/css" rel="stylesheet" href="../style/global_b.css" />
<style type="text/css">
#check{
padding-top:10px;
padding-bottom:-10px;
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
                        <a href="#">我的积分</a>
                        <a href="#">我的余额</a>
                        <a href="#">我的优惠券</a>
                        <a href="#">修改收货地址</a>
                    </div>
                </div>
            </li>
            <li class="more_menu" id="header_guanzhu">
            	<a href="#">关注我们</a>
                <i class="iconfont"></i>
            </li>
            <li>
            	<a href="#">帮助中心</a>
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
            <div class="logo"><a href="#"></a></div>
            <div class="page_title"><h2>支付</h2></div>
        </div>
        <div class="p_r">
            <div class="page_step">
                <div class="step_3"></div>
            </div>
        </div>
    </div>
</div>

<!-- 页面代码开始 -->
<div id="content">
    <div id="page" class="page">
    	<div class="pay_box" id="pay_box">
        	<dl class="pay_platform">
            	<dt>
                	<b>平台支付</b>
                    支持所有银行卡或信用卡，更迅速、安全
                </dt>
                <dd>
                	<ul class="banks cle">
                    	<li>
                        	<div class="banks-bd current">
                            	<em class="ck"></em>
                                <div class="bd">
                                	<label class="alipay"></label>
                                </div>
                            </div>
                        </li>
                        <li>
                        	<div class="banks-bd">
                            	<em class="ck"></em>
                                <div class="bd">
                                	<label class="alipay_sm"></label>
                                </div>
                            </div>
                        </li>
                        <li>
                        	<div class="banks-bd">
                            	<em class="ck"></em>
                                <div class="bd">
                                	<label class="cft"></label>
                                </div>
                            </div>
                        </li>
                    </ul>
                </dd>
            </dl>
            <dl class="pay_banks">
            	<dt>
                	<b>网银</b>
                    银行卡或信用卡
                </dt>
                <dd>
                	<ul class="banks cle">
                    	<li>
                        	<div class="banks-bd">
                            	<em class="ck"></em>
                                <div class="bd">
                                	<label class="zhaoshang"></label>
                                </div>
                            </div>
                        </li>
                        <li>
                        	<div class="banks-bd">
                            	<em class="ck"></em>
                                <div class="bd">
                                	<label class="gongshang"></label>
                                </div>
                            </div>
                        </li>
                        <li>
                        	<div class="banks-bd">
                            	<em class="ck"></em>
                                <div class="bd">
                                	<label class="jianshe"></label>
                                </div>
                            </div>
                        </li>
                        <li>
                        	<div class="banks-bd">
                            	<em class="ck"></em>
                                <div class="bd">
                                	<label class="nongye"></label>
                                </div>
                            </div>
                        </li>
                        <li>
                        	<div class="banks-bd">
                            	<em class="ck"></em>
                                <div class="bd">
                                	<label class="zhongguo"></label>
                                </div>
                            </div>
                        </li>
                        <li>
                        	<div class="banks-bd">
                            	<em class="ck"></em>
                                <div class="bd">
                                	<label class="zhongxin"></label>
                                </div>
                            </div>
                        </li>
                        <li>
                        	<div class="banks-bd">
                            	<em class="ck"></em>
                                <div class="bd">
                                	<label class="jiaotong"></label>
                                </div>
                            </div>
                        </li>
                        <li>
                        	<div class="banks-bd">
                            	<em class="ck"></em>
                                <div class="bd">
                                	<label class="minsheng"></label>
                                </div>
                            </div>
                        </li>
                        <li>
                        	<div class="banks-bd">
                            	<em class="ck"></em>
                                <div class="bd">
                                	<label class="pingan"></label>
                                </div>
                            </div>
                        </li>
                        <li>
                        	<div class="banks-bd">
                            	<em class="ck"></em>
                                <div class="bd">
                                	<label class="xingye"></label>
                                </div>
                            </div>
                        </li>
                        <li>
                        	<div class="banks-bd">
                            	<em class="ck"></em>
                                <div class="bd">
                                	<label class="guangda"></label>
                                </div>
                            </div>
                        </li>
                        <li>
                        	<div class="banks-bd">
                            	<em class="ck"></em>
                                <div class="bd">
                                	<label class="pufa"></label>
                                </div>
                            </div>
                        </li>
                        <li>
                        	<div class="banks-bd">
                            	<em class="ck"></em>
                                <div class="bd">
                                	<label class="shanghai"></label>
                                </div>
                            </div>
                        </li>
                        <li>
                        	<div class="banks-bd">
                            	<em class="ck"></em>
                                <div class="bd">
                                	<label class="huaxia"></label>
                                </div>
                            </div>
                        </li>
                    </ul>
                </dd>
            </dl>
        </div>
        <div class="pay_fd">
        	<div class="bd">
            	使用
                <span class="banks">
                	<label id="topay_bank" class="alipay"></label>
                </span>
                	支付
                <em><s:property value="total" /></em>
            </div>
            <div class="pay_form">
            	<form action="#" method="post" target="_blank" id="payform">
                	<input type="hidden" name="orderNum" value="23123123" />
                    <input type="hidden" name="payMoney" value="<s:property value="total" />" />
                </form>
                <a onclick="location.href='https://localhost:8443/BankOnline/user/toPay?oid=<s:property value="oid" />&total=<s:property value="total" />'" class="btn" id="check" >确认并付款</a>
            </div>
        </div>
        <!--
        <div class="load">
        
        </div>
        -->
    </div>
</div>
<!-- 页面代码结束 -->
<!-- 页尾 -->
<div id="footer">
    <div class="ft_main">
        <div class="ft_nav">
            <a href="http://www.lizi.com/about-about_us.html" target="_blank" class="noborder">关于丽子</a>
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
                Copyright 2009-2015, 西北农林科技大学 LIZI.COM 增值电信业务经营许可证：浙B2-20110315 备案号：<a href="http://www.miitbeian.gov.cn" target="_blank">浙ICP备11012845号-5</a></p>
            <p class="ft_contact">
                <span>服务时间：09:00-23:00</span> <span class="ft_phone">客服热线: <em>4007-112-112</em></span></p>
            <p class="beian_ico">
                <a href="http://www.lizi.com/cms/beautyInformation?uniqueMark=lizi_jingdian" target="_blank"><img alt="丽子美妆获得电商金典奖" src="http://cdn.lizi.com/images/flogo-jindian.png" /></a>

                <a href="http://www.lizi.com/cms/cmsBuyerOrSeller?cmsMark=PICC_insurance&mark=buyer" target="_blank"><img alt="中国人保为丽子化妆品承保" src="http://cdn.lizi.com/images/flogo-picc.png" /></a>

                <a href="http://www.itrust.org.cn/yz/pjwx.asp?wm=1563049676" target="_blank"><img alt="互联网协会A级信用认证" src="http://cdn.lizi.com/images/flogo-xinyong.png" /></a>
            </p>
        </div>
        <div class="fsm fsm2"><img src="http://cdn.lizi.com/images/pc/lizi-weixin.png"><p><i class="iconfont">&#xe616;</i><br>扫描关注微信公众号</p></div>
        <div class="fsm fsm"><a href="http://www.lizi.com/active/lizi-app.html" target="_blank"><img src="http://cdn.lizi.com/images/pc/fapp.jpg"><p>APP<br>手机客户端下载</p></a></div>
    </div>
</div>
</body>
</html>