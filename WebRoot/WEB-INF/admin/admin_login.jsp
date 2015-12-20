<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'admin_login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="style/adminLogin.css" />
	<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="js/adminLogin.js"></script>

  </head>
  
  <body>
    <div id="divBox">
	  <form action="adminlogin/login.action" method="post" id="login">
            <h3>丽人美妆   后台管理系统</h3>
            <h4>www.lrmz.com</h4>
			帐&nbsp;&nbsp;&nbsp;号：<input type="text" id="name" name="adminname"/><br/>
            <input type="submit" value="" id="sub"/>
			密&nbsp;&nbsp;&nbsp;码：<input type="password" id="psd" name="passwd"/><br/>
			验&nbsp;证&nbsp;码：<input type="text" name="imageCode" id="ver"/>&nbsp;<img title="看不清楚点这里" src="adminlogin/createValidateCode.action"
    			onclick="changeValidateCode(this)"/>
		</form>
	</div>
  </body>
</html>
