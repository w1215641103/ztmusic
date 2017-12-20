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
	height:95%;
}
.dl_b {
	position:absolute;
	left:35%;
	top:30%;
	width:300px;
	height:100px;
	border:1px solid black;
}
#button, #button2 {
		width:50px;
		height:30px;
		box-shadow: 5px 5px 2px #888888;
	}

#name, #pass{
		border:1px solid #a1a1a1;
		border-radius:25px;
		width: 180px; 
		height: 22px;
}
#content, from, table, tr,td{
		border:none;
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
<img src="images/lun6.jpg" style="width:100%;height:100%">
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
                    		<td><input style="" type="submit" name="button" id="button" value="登录"/></td>
                    		<td></td>
                   	 		<td><input style="" type="reset" name="button2" id="button2" value="重置"/></td>
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