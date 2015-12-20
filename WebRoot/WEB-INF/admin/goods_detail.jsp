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
	<script type="text/javascript" src=""></script>
    <script type="text/javascript" src="../js/admin.js"></script>
    <script type="text/javascript" src="../js/jquery-1.7.2.min.js"></script>
	
	<script type="text/javascript" src="org/ueditor/ueditor.config.js"></script>
	<title>详情/修改页</title>
	<style type="text/css">
		span{
			color: #f00;
		}
	</style>
	<script language="javascript">
		function update(){
			alert("更新成功！");
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
				<span class="adm_people"></span>
			</p>
			<p class="now_time">
				今天是：
				您的当前位置是：详情/修改页
			</p>
			<p class="out">
				<span class="out_bg">&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;
				<a href="" target="_self">退出</a>
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
	
<div id="right">
	<form action="updateGoods" method="post">
	<table  class="table">
		<tr >
			<td class="th" colspan="10">商品详情</td>
		</tr>
		
		<tr><td><input type="hidden" name="goods.goodsID"  value="<s:property value="id" />"/>
		</td></tr>
		
        <tr>
			<td class="top" >品&nbsp;&nbsp;牌</td>
			<td><input type="text" name="goods.gbrand" value="<s:property value="goods.gbrand" />"/>
		</tr>
		<tr>
			<td class="top" >商品名</td>
			<td><input type="text" name="goods.goodsName"  value="<s:property value="goods.goodsName" />"/>
			</td>
		</tr>
        <tr>
			<td class="top" >类&nbsp;&nbsp;&nbsp;别</td>
			<td><input type="text" name="goods.cateName" value="<s:property value="goods.cateName" />"/>
			</td>
		</tr>
        <tr>
			<td class="top" >商品数量</td>
			<td><input type="text" name="goods.goodsNum" value="<s:property value="goods.goodsNum" />"/>
			</td>
		</tr>
        <tr>
			<td class="top" >市场价</td>
			<td><input type="text" name="goods.marketPrice"  value="<s:property value="goods.marketPrice" />"/>
			</td>
		</tr>
        <tr>
			<td class="top" >美妆价</td>
			<td><input type="text" name="goods.price"  value="<s:property value="goods.price" />"/>
			</td>
		</tr>
        <tr>
			<td class="top" >缩略图</td>
			<td>
				<img src="<%=basePath+"upload/"%><s:property value="goods.image"/>"/>
			</td>
		</tr>
        <tr>
			<td class="top" >上架时间</td>
			<td><input type="text" name="goods.pubTime" value="<s:property value="goods.pubTime" />"/>
			</td>
		</tr>
		<tr>
			<td class="top" >是否上架
				<s:radio name="goods.isShow" list="#{'1':'上架','2':'下架'}" ></s:radio>
				<!--<input type="radio" name="type" value="0"/> 是
				<input type="radio" name="type" value="1"/> 否
			--></td>
		</tr>
		<tr>
			<td class="top" >详细介绍</td>
			<td>
				<textarea id="content" style="width:550px;height:500px;" name="goods.description">
					<s:property value="goods.description" />
				</textarea>
			</td>
		</tr>
		
		<tr>
			<td colspan="10"><input type="submit" class="input_button" value="确认" onclick="update();"/></td>
		</tr>
	</table>
	</form>
    </div>

</body>
