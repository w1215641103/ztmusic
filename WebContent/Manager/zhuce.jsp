<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="common.MD5" %>
<%@ page import="common.conn" %>
<%@ page import="dal.User" %>
<%@ page import="model.UserInfo" %>
<%@ page import="common.cookie" %>
<html>
<head>
<title>注册</title>
<style type="text/css">
	.content {
		border: 2px solid #a1a1a1;
		padding: 30px 30px;
		position: absolute;
		border-radius:25px;
		background: #dddddd;
		height: 200px;
		width: 250px;
		left: 25%;             
		top: 25%; 
	} 
	#button {
		width:50px;
		height:30px;
		box-shadow: 5px 5px 2px #888888;
	}
	#wenben {
		border:1px solid #a1a1a1;
		border-radius:25px;
	}
	.l_table{
        	width:250px;
        	margin:auto;
        }
	.gs {width: 180px; height: 22px;}
</style>
</head>
<body>
<%
   request.setCharacterEncoding("utf-8");		//页面编码
   String action=request.getParameter("action");
   String name=request.getParameter("name");
   String pass=request.getParameter("pass");
   String phone=request.getParameter("phone");
   String email=request.getParameter("email");
   UserInfo info=new UserInfo();
   User user=new User();
   if ("zc".equals(action)) {		//注册
	   if (name.equals("") || pass.equals("")) {
		   out.println("<script>alert('用户名或密码不能为空');</script>");
	   } else if (pass.length()<6 || pass.length()>16) {
		   out.println("<script>alert('密码必须在6-16位之间');</script>");
	   } else if ((email.indexOf("@") == -1 && email.indexOf(".com") == -1) || email.equals("")) {
		   out.println("<script>alert('邮箱格式不正确,必须包含@和.com');</script>");
	   } else if (phone.length() != 11 || phone.equals("")) {
		   out.println("<script>alert('请输入这正确的11位手机号');</script>");
	   }  else if (user.isExist(name)) {
		   out.println("<script>alert('用户已存在');</script>");
	   } else {
		   info.setname(name);
		   info.setpass(MD5.Encrypt(pass));
		   info.setphone(phone);
		   info.setemail(email);
		   user.insert(info);
		   cookie.writeCookie(response, "name", name);		//写入cookie
		   out.println("<script>window.location.href='main.jsp';</script>");
	   }
   }
%>
<div class="content">
    <form id="form1" name="form1" method="post" action="zhuce.jsp?action=zc">
       	<table>
          	<tr align="center"> 
          		<td colspan="2"> <strong>用户注册</strong>  </td> 
          	</tr><tr align = "right">
      			<td>用户名</td> 
      			<td> <input id="wenben" type="text"  name="name"  id="name" class="gs"/> </td>
          	</tr><tr align = "right"> 
           		<td>密码</td> 
           		<td> <input id= "wenben" type="password" name="pass"  id="pass"  class="gs"/> </td>
      		</tr><tr align = "right">
				<td>电话</td>
              	<td> <input id= "wenben" type="text" name="phone"  id="phone"  class= "gs"/> </td>
           	</tr><tr align = "right"> 
           		<td>邮箱</td>
                <td> <input id= "wenben"  type="text" name="email"  id="email"  class= "gs"/> </td>
           	</tr>
      	</table>
       	<table class="l_table">
       		<tr>
           		<td > <input style="" id="button" type="submit" name="button" value="注册"/> </td>
               	<td> <input style="" id="button" type="reset" name="button2"  value="重置"/> </td>
          	</tr>
          </table>
	</form>
</div>
</body>

</html>