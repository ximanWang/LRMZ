<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="style/regglobal.css">
    <link rel="stylesheet" href="style/reglogin.css">

    <iframe style="display: none;" scrolling="no" src="" width="1" height="1"></iframe><script src="js/regmv.js" async type="text/javascript"></script><script src="js/regmba.js" async type="text/javascript"></script><script src="js/regs.js" async type="text/javascript"></script><script src="js/reglr_liontrack.js" defer async type="text/javascript"></script><script src="js/regmvl.js" async type="text/javascript"></script><script src="" async type="text/javascript"></script><script src="js/reganalytics.js" async></script><script src="js/reglib.js"></script>
    <script src="js/regglobal.js"></script>
    
    
    <meta name="layout" content="login_layout">
    <link rel="stylesheet" href="style/regreg.css">


	<script src="js/regtip.js" data-requiremodule="tip" data-requirecontext="_" async charset="utf-8" type="text/javascript"></script><script src="js/regdialog.js" data-requiremodule="dialog" data-requirecontext="_" async charset="utf-8" type="text/javascript"></script><script src="" type="text/javascript"></script><script src="js/regcss.js" data-requiremodule="css" data-requirecontext="_" async charset="utf-8" type="text/javascript"></script><link href="style/regdialog.css" rel="stylesheet" type="text/css">
</head>
  
  <body>
<!-- 头部 -->
<div id="header">
    <div class="hd_bar">
      <div class="bd">
        <div class="logo"><a href="#/"></a></div>
        <div class="hd_lbar"> <a class="link" href="#/">丽人首页</a> </div>
        <div class="hd_rbar"> <a class="link" href="#" id="zixun-btn"><i class="iconfont">Ȍ</i>在线咨询</a> <span>029-87091110</span> </div>
      </div>
    </div>
</div>
<!-- 头部 -->

<!-- 页面代码 -->

<div id="main" class="cle">
    <div class="box-pic">
        <div class="img" id="left_pic"><img src="images/register/reglogin-box-bg.jpg" width="500" height="450"></div>
    </div>
	
    <script src="js/register.js"></script>
    <link rel="stylesheet" href="style/regcss.css" />
    <div class="g_box">
        <div id="register_box">
            <input value="B4DE672525EEE27905DCB7DB9CE953D9" id="validate" type="hidden">
            <h2>
                <div class="trig">已有账号?
                    <a href="denglu.htm" class="trigger-box">点击登录</a>
                </div>注册
            </h2>
        <form action="user/register" method="post">
            <div class="register_infor">
                <ul>
                    <li class="input_box">
                        <span class="t_text" id="name">用户名</span>
                        <input id="nickName" type="text" class="register_input" name="user.userName">
                        <span class="error_icon"></span>
                    </li>
                    <li class="error_box" id="nickName_Id">
                        <em></em>
                    </li>
                    <li class="input_box">
                        <span class="t_text" id="pw">密码</span>
                        <input id="pwd" type="password" class="register_input" name="user.password">
                        <span class="error_icon"></span>
                    </li>
                    <li class="error_box" id="pwd_Id" >
                        <em></em>
                    </li>
                    <li class="input_box">
                        <span class="t_text" id="repw">确认密码</span>
                        <input id="repwd" type="password" class="register_input" name="repasswd">
                        <span class="error_icon"></span>
                    </li>
                    <li class="error_box" id="repwd_Id">
                        <em></em>
                    </li>
                   	<li>
                    	<input type="text" name="imageCode" />
    					<img title="看不清楚点这里" src="user/createValidateCode"
    							onclick="changeValidateCode(this)"/>
                    </li>
                    <li class="lizi_law">
                        <label>
                            <input checked="checked" name="accept_lizi_law" tabindex="5" type="checkbox">
                            我已阅读并接受<a href="#/about-lizi_agreement.html" target="_blank">《丽人服务协议》</a>
                        </label>
                    </li>
                    <li class="error_box">
                        <em></em>
                    </li>
                    
                    <li class="go2register">
                    	<input type="submit" class="btn submit_btn" value="同意协议并注册"/>
                    </li>
                </ul>
            </div>
         </form>
        </div>
    </div>

</div>
                    




<!--DSP -->
<!-- 晶赞 -->
<script type="text/javascript">
    var __zp_tag_params = {
        pagetype: "register"
    };
</script>
<!-- 聚效-->
<script type="text/javascript">
    var _mvq = window._mvq || [];
    window._mvq = _mvq;
    _mvq.push(['$setAccount', 'm-140943-0']);
    _mvq.push(['$setGeneral', 'register', '', /*用户名*/ '', /*用户id*/ '']);
    _mvq.push(['$logConversion']);
</script><!--DSP END -->



<!-- 页尾 -->
<div id="footer">
            <div class="ft_main">
                <div class="ft_nav">
                    <a href="#/about-about_us.html" target="_blank" class="noborder">关于丽人</a>
                    <a href="#/about-store_invite.html" target="_blank">商家入驻</a>
                    <a href="#/about-lizi_agent.html" target="_blank">代理招募</a>
                    <a href="#/job-joinus.html" target="_blank">加入我们</a>
                    <a href="#/cms/cmsBuyerOrSeller?uniqueMark=48hours_delivery&amp;mark=buyer" target="_blank">配送政策</a>
                    <a href="#/cms/cmsBuyerOrSeller?cmsMark=refundProduct_condition&amp;mark=buyer" target="_blank">售后保障</a>
                    <a href="#/cms/cmsBuyerOrSeller?mark=buyer" target="_blank">帮助中心</a>
                    <a href="#/about-contact_us.html" target="_blank">联系我们</a>
                </div>
                <div class="ft_txt">
                    <p>
                        Copyright 2009-2015, 西农达内第三众组攻城狮 增值电信业务经营许可证：陕B2-2015</p>
                    <p class="ft_contact">
                        <span>服务时间：09:00-23:00</span> <span class="ft_phone">客服热线: <em>029-87091110</em></span>                </p>
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
                    	
  	</form>
  </body>
</html>
