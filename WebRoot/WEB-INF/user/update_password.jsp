<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<head>
        <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <link rel="dns-prefetch" href="//s.lizi.com">
    <meta name="renderer" content="webkit"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <title>密码找回</title>
    <link rel="shortcut icon" href="http://s.lizi.com/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="../style/css/globl.css"/>
    <link rel="stylesheet" href="../style/common1.css"/>
    <link rel="stylesheet" href="../style/css/common.css"/>
    <script src="http://s.lizi.com/www/js/lib/lib.js"></script>
    <script src="http://s.lizi.com/www/js/global.js?201506256"></script>
    <script src="http://s.lizi.com/www/js/common.js?2015062582"></script>
    <meta name="layout" content="buyer_layout"/>
    <link rel="stylesheet" href="../style/my_info.css">
    <style type="text/css">
    .left{
    padding-left:200px;
    float:left;
    width: 200px;
    }
    .right{
    padding-left: 80px;
    float: left;
    width: 400px;
    }
    h4{
    color:#FF676C;
    }
    .passheader{
    padding-bottom: 100px;
    }
    .passwd{
    float:right;
    font-size: 40px;
    color:#FF676C;
    padding-right: 600px;
    }

    input{
    margin-top: 5px;
    margin-bottom: 5px;
    }
    label{ 
    font-size: 20px;
    }
    #sub{
    font-size: 20px;
    margin-left: 100px;
    ma
    }
    </style>
    <script type="text/javascript"  src="../js/jquery-1.4.3.js"></script>
    <script type="text/javascript">
       $(function(){
          $('#repasswd').blur(function(){
             var repass = $(this).val();
             var pass = $('#passwd').val();
             if(repass != pass){
                $('#errMsg').text('两次密码不一致');
             }else{
                $('#errMsg').text('密码一致，请点击确定！');
             }
          });
       });
    </script>
    
</head>
<html>
<body>

<!-- 页头 -->
<div id="header" class="passheader">
        <div class="logo">
            <p>
                <a href="http://www.lizi.com" class="lizi_logo">丽人美妆</a>
            </p>
        </div>
        <div class="passwd">
            	密码找回中心
        </div> 
</div>
<!-- 左侧导航 -->
<div class="left">
    <div class="manage_center_hd">
        <h4>密码修改</h4>
    </div>
    <ul class="manage_center_list" id="left_bar">
        <li class="manage_center_col"> <a class="pare_a" href="http://www.lizi.com/order/list"><i class="iconfont">&#xe61a;</i>邮件找回</a></li>
        
    </ul>
</div>

<div class="right">
    <div class="manage_right_t">
        <h4>第二步：密码修改</h4>
    </div>

   <form action="updatePassword" method="post">

   <label for="to">邮箱帐号：</label>
   <input  type="text" name="email"/><br/>
   
   <label for="to">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</label>
   <input  type="password" name="password" id="passwd"/><br/>
   
   <label for="to">确认密码：</label>
   <input type="password" name="repasswd" id="repasswd"/><span id="errMsg"></span><br/>
   <input id="sub" type="submit" value="确定"/>
   </form>
   </div>
</body>
</html>