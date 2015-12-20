<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <link rel="dns-prefetch" href="#">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>丽人美妆</title>
   
    <meta name="Keywords" content="">
    <link rel="shortcut icon" href="../images/logo.ico" type="image/x-icon">

    <script src="../js/lib.js"></script>

    <link rel="stylesheet" href="../style/global.css">
    <link rel="stylesheet" href="../style/login.css">
</head>
  
  <body>
<!-- 头部 -->

            <div id="header">
                <div class="hd_bar">
                    <div class="bd">
                        <div class="logo"><a href="#/"></a></div>
                        <div class="hd_lbar">
                            <a class="link" href="#/">丽人首页</a>
                        </div>
                        <div class="hd_rbar">
                            <a class="link" href="#" id="zixun-btn"><i class="iconfont">Ȍ</i>在线咨询</a>
                            <span>029-87091110</span>
                        </div>
                    </div>
                </div>
            </div>
    



        <div id="main" class="cle">
    
    
    <div class="box-pic">
        <div class="img" id="left_pic"><img src="../images/login-box-bg.jpg" width="500" height="450"></div>
    </div>
    
    <div class="g_box">
        <div id="login-box">
            <h2>
                     <div class="trig">没有帐号？
                            <a href="toRegist" class="trigger-box">点击注册</a>
                      </div>
                登录
            </h2>
            <div class="form-bd">
                <div class="form_box cle" id="login">
                    <form id="login_form" action="login" method="post">
                        <input name="lt" value="LT-53296-HscYXS6CaO99wlhYhPtg2Nqp4AWkEZ-cas1.lizi.com" type="hidden">
                        <input name="execution" value="e1s1" type="hidden">
                        <input name="_eventId" value="submit" type="hidden">
                        <input name="min" value="null" type="hidden">
                        <input name="mobile" value="null" type="hidden">

                        <ul class="form">
                            <li class="text_input">
                                <span class="iconfont"><img src="../images/denglu.png"></span>
                                <input id="username" name="username" class="text" tabindex="1" placeholder="用户名/邮箱/手机号" type="text">
                            </li>
                            <li class="text_input">
                                <span class="iconfont"><img src="../images/mima.png"></span>
                                <input id="password" name="passwd" class="text" tabindex="2" placeholder="密码" value="" type="password">
                            </li>

                            <li class="error"> 
                            </li>
                            <li class="other">
                                
                                <a href="http://localhost:8080/LRMZ/user/toemail">忘记密码?</a>
                            </li>
                            <li class="last">
                                <input class="btn" value="登 录" type="submit">
                            </li>
                        </ul>
                    </form>
                </div>
            </div>
                <ul class="form other-form">
                    <li><h5>使用第三方帐号登录</h5></li>
                    <li class="other-login">
                        <a class="qq" target="_blank" href="#/qqLogin"></a>
                        
                        <a class="sina" target="_blank" href="#/sinaLogin"></a>

                        <a class="alipay" target="_blank" href="#/alipayLogin"></a>
                        
                    </li>
                </ul>

        </div>
    </div>
</div>

<script src="denglu_files/login.js"></script>

<!-- 登录页面的页脚 -->
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
