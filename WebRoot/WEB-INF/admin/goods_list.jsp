<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../style/public.css">
<link rel="stylesheet" href="../style/admin.css" />
<script type="text/javascript" src="../js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="../js/admin.js"></script>
<title>商品列表</title>
<script type="text/javascript">
	//跳转到目标页
	function toPage(targetPage) {
		document.getElementById("targetPage").value = targetPage;
		document.forms[0].submit();
	}
	function deletegoods(id,name) {
		 var r = window.confirm("确定删除 "+name+"？");
         if(r){
         	location.href = "deleteGoods?id="+id;
         }
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
				<span>管理员：</span> <span class="adm_pic">&nbsp;&nbsp;&nbsp;&nbsp;</span>
				<span class="adm_people">[<?php echo $this->session->userdata('username') ?>]
				</span>
			</p>
			<p class="now_time">
				今天是： 您的当前位置是：商品列表
				<!--<span>商品列表</span>
		    -->
			</p>
			<p class="out">
				<span class="out_bg">&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;<a
					href="<?php echo site_url('admin/login/login_out') ?>"
					target="_self">退出</a>
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
					<li class="nav_u"><a href="findGoods" class="pos">商品列表</a></li>
				</ul>
				<ul class="con">
					<li class="nav_u"><a href="toAddGoods" class="pos">添加商品</a></li>
				</ul>

			</div>
		</div>
		<div class="menu_box">
			<h2>用户管理</h2>
			<div class="text">
				<ul class="con">
					<li class="nav_u"><a href="findUser" class="pos">用户列表</a></li>
				</ul>
				<ul class="con">
					<li class="nav_u"><a href="" class="pos">管理用户</a></li>
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
			<form action="findGoods" method="post">
				<s:hidden name="page" id="targetPage"></s:hidden>
				商品名：
				<s:textfield name="goodsName"></s:textfield>
				类别
				<s:textfield name="cname"></s:textfield>
				品牌
				<s:textfield name="gbrand"></s:textfield>
				状态：
				<s:select name="isShow" list="#{'0':'全部','1':'上架','2':'下架'}"></s:select>
				<input type="button" value="搜索" onclick="toPage(1);" />

				<div align="center">
					<table class="table">
						<tr>
							<td colspan="10" class="th">查看商品</td>
						</tr>

						<tr>
							<td>商品名称</td>
							<td>品牌</td>
							<td>类别</td>
							<td>库存</td>
							<td>上架时间</td>
							<td>&nbsp;&nbsp;操作</td>
						</tr>

						<s:iterator value="list">
							<tr>
								<td><s:property value="goodsName" /></td>
								<td><s:property value="gbrand" /></td>
								<td><s:property value="cateName" /></td>
								<td><s:property value="goodsNum" /></td>
								<td><s:property value="pubTime" /></td>
								<td><input type="button" class="input_button" value="查看"
									onclick="location.href='toUpdateGoods?id=<s:property value="goodsID" />';" />
									<input type="button" class="input_button" value="删除"
									onClick="deletegoods(<s:property value="goodsID"/>,'<s:property value="goodsName"/>');"/>
								</td>
							</tr>
						</s:iterator>
					</table>
				</div>
				<div>
					<div id="page">
						[<a href="javascript:toPage(1);">首页</a>]
						<s:if test="page==1">
							<a href="#"></a>
						</s:if>
						<s:else>
	           [<a href="javascript:toPage(<s:property value="page-1"/>);">上一页</a>]
        	</s:else>
						<s:iterator begin="1" end="totalPage" var="k">
		       [<a href="javascript:toPage(<s:property />);"><s:property /></a>]
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
			<p align="center">@Copyright © 2015-2016 lirenmeizhuang.com All Rights Reserved.
				西北农林科技大学0000000号</p>
		</div>
	</div>
</body>