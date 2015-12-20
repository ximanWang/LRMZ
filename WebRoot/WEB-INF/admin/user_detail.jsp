<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"
	+request.getServerName()+":"+request.getServerPort()+path+"/";
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="../style/public.css">
    <link rel="stylesheet" href="../style/admin.css" />
	<script type="text/javascript" src="../js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="../js/admin.js"></script>
	
	
	<script type="text/javascript" src="org/ueditor/ueditor.config.js"></script>
	<title>用户详情页</title>
	<style type="text/css">
		span{
			color: #f00;
		}
		
	</style>
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
				您的当前位置是：用户详情页
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
	<form action="findUser" method="post" enctype="multipart/form-data">
	<table  class="table">
		<tr >
			<td class="th" colspan="10">用户详情</td>
		</tr>
        <tr>
			<td class="top" >用户名：</td>
			<td><input type="text" name="userName" readonly="readonly" value="<s:property value="user.userName" />"/>
		</tr>
		
		<tr>
			<td class="top" >头像：</td>
			<td>
				<img name="user.face" src="<%=basePath+"upload/"%><s:property value="user.face"/>"/>
			</td>
		</tr>
        <tr>
			<td class="top" >性别：</td>
			<%-- <td><input type="text" name="sex" value="<s:property value="user.sex" />"/>
			</td> --%>
			<s:radio name="user.sex"  list="#{1:'男',2:'女'}"  ></s:radio>
		</tr>
        <tr>
			<td class="top" >邮箱：</td>
			<td><input type="text" readonly="readonly" name="email" value="<s:property value="user.email" />"/>
			</td>
		</tr>
        <tr>
			<td class="top" >地址：</td>
			<td><input type="text" readonly="readonly" name="address"  value="<s:property value="user.address" />"/>
			</td>
		</tr>
        <tr>
			<td class="top" >联系方式：</td>
			<td><input type="text" readonly="readonly" name="phone" value="<s:property value="user.phone" />"/>
			</td>
		</tr>
		<tr>
			<td colspan="10"><input type="submit" class="input_button" value="返回"/></td>
		</tr>
	</table>
	</form>
    </div>

</body>
