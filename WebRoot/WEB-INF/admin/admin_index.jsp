<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<title>丽人美妆商城后台管理首页</title>
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="../style/public.css">
    <link rel="stylesheet" href="../style/admin.css" />
	<script type="text/javascript" src="../js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="../js/admin.js"></script>
	<title>后台首页</title>
	
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
				<span class="adm_people">${sessionScope.user.userName}</span>
			</p>
			<p class="now_time">
				今天是：
				您的当前位置是：
				<span>首页</span>
			</p>
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
				        	<a href="toAddGoods" class="pos">添加商品</a>				        	
				        </li> 
				    </ul>

				</div>
			</div>	
			<div class="menu_box">
				<h2>用户管理</h2>
				<div class="text">
					<ul class="con">
				        <li class="nav_u">
				        	<a href="" class="pos">用户列表</a>				        	
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
		
	<!-- 底部 -->
	<div id="foot_box">
		<div class="foot">
			<p>@Copyright © 2015-2016 lirenmeizhuang.com All Rights Reserved. 西北农林科技大学0000000号</p>
		</div>
	</div>

</body>