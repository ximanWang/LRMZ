<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="../style/public.css">
    <link rel="stylesheet" href="../style/admin.css" />
	<script type="text/javascript" src="../js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="../js/admin.js"></script>
	<title>用户列表</title>
	<script type="text/javascript">
	
		 //跳转到目标页
            function toPage(targetPage){
            	document.getElementById("targetPage").value=targetPage;
            	document.forms[0].submit();
            }
	</script>
</head>
<body>
    <!-- 头部 -->
	<div id="top_box">
		<div id="top">
			<p id="top_font">丽人美妆商城后台管理首页 （V1.1）</p>
		</div>
		<div class="top_bar">
			<p class="adm">
				<span>管理员：</span>
				<span class="adm_pic">&nbsp;&nbsp;&nbsp;&nbsp;</span>
				<span class="adm_people">[<?php echo $this->session->userdata('username') ?>]</span>
			</p>
			<p class="now_time">
				今天是：
				您的当前位置是：用户管理
				<!--<span>商品列表</span>
		    --></p>
			<p class="out">
				<span class="out_bg">&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;
				<a href="<?php echo site_url('admin/login/login_out') ?>" target="_self">退出</a>
			</p>
		</div>
	</div>
    <!-- 左侧菜单 -->
		<div id="left_box">
			<p class="use">功能管理</p>
			<div class="menu_box">
				<h2>商品管理</h2>
				<div class="text">
				    <ul class="con">
				        <li class="nav_u">
				        	<a href="findGoods" class="pos">商品列表</a>				        	
				        </li> 
				    </ul>
					<ul class="con">
				        <li class="nav_u">
				        	<a href="add_goods.html" class="pos">添加商品</a>				        	
				        </li> 
				    </ul>

				</div>
			</div>	
			<div class="menu_box">
				<h2>用户管理</h2>
				<div class="text">
					<ul class="con">
				        <li class="nav_u">
				        	<a href="findUser" class="pos">用户列表</a>				        	
				        </li> 
				    </ul>
				  	<ul class="con">
				        <li class="nav_u">
				        	<a href="" class="pos">管理用户</a>				        	
				        </li> 
				    </ul>
				</div>
			</div>	
			<div class="menu_box">
				<h2>常用菜单</h2>
				<div class="text">
					<ul class="con">
				        <li class="nav_u">
				        	<a href="http://localhost:8080/LRMZ/user/toIndex" class="pos" target="_blank">前台首页</a>				        	
				        </li> 
				    </ul>
				</div>
			</div>			
		</div>
<div id="right">
        <div id="right-top">
        <form action="findUser"  method="post">
        <s:hidden name="page" id="targetPage"></s:hidden>
        	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        	用户名：<s:textfield name="userName"></s:textfield>
        	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        	地&nbsp;&nbsp;&nbsp;&nbsp;址：<s:textfield name="address"></s:textfield>
        	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        	性&nbsp;&nbsp;&nbsp;&nbsp;别：&nbsp;&nbsp;<s:select name="sex" list="#{'0':'全部','1':'男','2':'女'}"></s:select>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="button" value="搜索" onclick="toPage(1);"/>
		
     <div align="center">   
        <table class="table">
            <tr>
                <td colspan="10" class="th">查看用户</td>
            </tr>
            <tr>
             	<td>用户名</td> 
                <td>邮箱</td>
                <td>地址</td>
                <td>联系电话</td>
                <td>&nbsp;&nbsp;操作</td>
            </tr>
    
            <s:iterator value="list">
            <tr>
                <td><s:property value="userName"/></td>
                <td><s:property value="email"/></td>
                <td><s:property value="address"/></td>
                <td><s:property value="phone"/></td>
                <td>
                	<input type="button" class="input_button"  value="详情" onclick="location.href='findUserById?id=<s:property value="userID" />';"/>
                    <input  type="button" class="input_button" value="删除"   onclick="location.href='deleteUser?id=<s:property value="userID"/>';"/>
                </td>
            </tr>
            </s:iterator>
        </table>
        </div>
    <div>
       <div id="page">
        	<s:if test="page==1"><a href="#"></a> </s:if>
        	<s:else>
        	   [<a href="javascript:toPage(1);">首页</a>]
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
   </form>
  </div>
</div>
    <!-- 底部 -->
	<div id="foot_box">
		<div class="foot">
			<p>@Copyright © 2015-2016 lirenmeizhuang.com All Rights Reserved. 西北农林科技大学0000000号</p>
		</div>
	</div>
</body>