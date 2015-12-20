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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>结算</title>
<link rel="shortcut icon" href="../images/buy/li.png" />
<link type="text/css" rel="stylesheet" href="../style/checkout_b.css" />
<link type="text/css" rel="stylesheet" href="../style/common_b.css" />
<link type="text/css" rel="stylesheet" href="../style/global_b.css" />

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
            <div class="logo"><a href="http://www.lizi.com"></a></div>
            <div class="page_title"><h2>确认订单</h2></div>
        </div>
        <div class="p_r">
            <div class="page_step">
                <div class="step_2"></div>
            </div>
        </div>
    </div>
</div>

<!-- 页面代码 -->
<div id="content">
    <div id="page" class="page">
    	<div class="main">
        	<div class="title cle">
            	<h3>选择收货地址</h3>
            	<div class="fr">
            		<a href="#">地址管理</a>
            	</div>
            </div>
            <div class="addr_list">
            	<ul class="cle">
                	<li class="isdefault current">
                    	<div class="bd">
                        	<div class="receiver"><s:property value="user.userName"/></div>
                            <div class="addr"><s:property value="user.address"/></div>
                            <div class="phone"><s:property value="user.phone"/></div>
                        </div>
                        <div class="btm cle">
                        	<span class="fl default">默认地址</span>
                            <a href="toUpdateUser" class="edit">编辑</a>
                        </div>
                    </li>
                    <li class="new">
                    	<div class="bd">
                        	<a href="toUpdateUser" class="iconfont">+</a>
                            <p class="txt">新增地址</p>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="title cle">
            	<h3>确认商品信息</h3>
            </div>
            <div class="cart_list">
            	<div class="cart_th">
                	<ul class="cle">
                    	<li class="td td_item">商品</li>
                        <li class="td td_info">商品信息</li>
                        <li class="td td_price">单价</li>
                        <li class="td td_num">数量</li>
                        <li class="td td_sum">小计</li>
                    </ul>
                </div>
                <div id="shop_list">
                	<div class="shop_line">
                    	<!-- <div class="shop_info">
                        	<span class="name">店铺：<a href="#" target="_blank">xxx</a></span>
                        </div> -->
                        <s:iterator value="listCart">
                        <div class="shop_items">
                       
                        	<div class="item_body">
                            	<ul class="item_content cle">
                                	<li class="td td_item">
                 
                                    	<div class="td_inner">
                                        	<div class="item_pic">
                                            	<a href="#"><img src="<%=basePath+"upload/"%><s:property value="goods.image"/>" /></a>
                                            </div>
                                            <div class="item_info">
                                            	<div class="item_title">
                                                	<a href="#" target="_blank"><s:property value="goods.goodsName"/></a>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                   <li class="td td_info">
                                    	 <div class="item_props">
                                        	<p>颜色：无</p>
                                            <p>规格：无</p>
                                        </div> 
                                    </li>
                                    <li class="td td_price">
                                    	<div class="td_inner">
                                        	<em class="price_now"><s:property value="goods.price"/></em>
                                        </div>
                                    </li>
                                    <li class="td td_num">
                                    	<div class="td_inner">
                                        	<em class="item_num"><s:property value="num"/></em>
                                        </div>
                                    </li>
                                    <li class="td td_sum">&nbsp;
                                    	<div class="td_inner">
                                        	<em  class="price_sum"><s:property value="subtotal"/></em>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        </s:iterator>
                        <div class="shop_other cle">
                        	<div class="fl shop_remark">
                            	<label>备注：</label>
                                <textarea name="remark" class="isfocus"></textarea>
                            </div>
                            <div class="fr shop_coupon">
                            
                            </div>
                        </div>
                        <div class="shop_total">
                        	<p>合计：<em class="shop_price"><s:property value="" /></em></p>
                        </div>
                    </div>
                </div>
            </div>
           
        </div>
        <div class="checkout_fd" id="checkout_fd">
        	<div class="checkout_fd_box cle">
            	<div class="fl">
                	<div class="op">
                    	<a href="findAllCarts"><i class="iconfont"></i>返回购物车</a>
                    </div>
                </div>
                <div class="fr">
                	<div class="total_count">
                    	<em id="total_num"></em>总计(全国免运费)：<em id="total_price"><s:property value="total" /></em>
                        <a href="toPay" class="topay" id="toPay">提交订单</a>
                    </div>
                </div>
            </div>
        </div>
        <!--
        <div class="load"></div>
        -->
    </div>
</div>


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
                Copyright 2009-2015, 辛巴信息技术（杭州）有限公司 LIZI.COM 增值电信业务经营许可证：浙B2-20110315 备案号：<a href="http://www.miitbeian.gov.cn" target="_blank">浙ICP备11012845号-5</a></p>
            <p class="ft_contact">
                <span>服务时间：09:00-23:00</span> <span class="ft_phone">客服热线: <em>4007-112-112</em></span></p>
            <p class="beian_ico">
                <a href="http://www.lizi.com/cms/beautyInformation?uniqueMark=lizi_jingdian" target="_blank"><img alt="丽子美妆获得电商金典奖" src="http://cdn.lizi.com/images/flogo-jindian.png" /></a>

                <a href="http://www.lizi.com/cms/cmsBuyerOrSeller?cmsMark=PICC_insurance&mark=buyer" target="_blank"><img alt="中国人保为丽子化妆品承保" src="http://cdn.lizi.com/images/flogo-picc.png" /></a>

                <a href="http://www.itrust.org.cn/yz/pjwx.asp?wm=1563049676" target="_blank"><img alt="互联网协会A级信用认证" src="http://cdn.lizi.com/images/flogo-xinyong.png" /></a>
            </p>
        </div>
        <div class="fsm fsm2"><img src="http://cdn.lizi.com/images/pc/lizi-weixin.png"><p><i class="iconfont">&#xe616;</i><br>扫描关注微信公众号</p></div>
        <div class="fsm fsm"><a href="http://www.lizi.com/active/lizi-app.html" target="_blank"><img src="http://cdn.lizi.com/images/pc/fapp.jpg"><p>APP<br/>手机客户端下载</p></a></div>
    </div>
</div>
</body>
</html>