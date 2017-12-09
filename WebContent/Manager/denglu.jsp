<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="common.MD5" %>
<%@ page import="common.conn" %>
<%@ page import="dal.User" %>
<%@ page import="model.UserInfo" %>
<%@ page import="common.cookie" %>
<html>
<head>
<title>登录</title>
<style>
.dl_j {
	position: absolute;
	top:2.5%;
	left:1%;
	width:98%;
	border:2px solid black;
	border-radius:10em;
	height:95%;
	background-image:url("aab.jpg");
}
.dl_b {
	position:absolute;
	right:10%;
	top:15%;
	width:450px;
	height:300px;
	border:1px solid black;
	background-color:gray;
	border-radius:2em;
}
</style>
</head>

<body onload="gd()">
<%
   request.setCharacterEncoding("utf-8");		//设置页面编码
   String action=request.getParameter("action");		//页面响应
   User user=new User();
   String name = request.getParameter("name");
   String pass = request.getParameter("pass");
   if("dl".equals(action))		//登录
   {
	   if (name.equals("") || pass.equals("")) {
		   out.println("<script>alert('用户名或密码不能为空');</script>");
	   } else if (!(user.isExist(name, MD5.Encrypt(pass))))
		   out.println("<script>alert('用户名或密码错误');</script>");
	   else {
		   cookie.writeCookie(response, "name", name);		//写入cookie
		   out.println("<script>window.location.href='main.jsp';</script>");		//转到index
	   }
   }
%>
<div id="gd">
	<div class="dl_j">
  	  <div class="dl_b">
			<div id="content">
    			<form id="form1" name="form1" method="post" action="denglu.jsp?action=dl">
          			<table style = (width:100)  border="1">
                		<tr>
	                    	<td>用户名</td>
	                    	<td> <input type="text" name="name" id="name" width="500px"/> </td>
                		</tr>
                		<tr>
                    		<td>密码</td>
                    		<td> <input type="password" name="pass" id="pass" width="500px"/> </td>
                		</tr>
                		<tr>
                    		<td> <input style="" type="submit" name="button" id="button" value="登录"/> </td>
                   	 		<td> <input style="" type="reset" name="button2" id="button2" value="重置"/> </td>
                		</tr>
          			</table>
    			</form>
			</div>
		</div>
	</div>
</div>
</body>
<script>
	function gd() {
		var a = window.screen.width;
		document.getElementById("gd").style.width = a + 'px';
	}
</script>
</html>