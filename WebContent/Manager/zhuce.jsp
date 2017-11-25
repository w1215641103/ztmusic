<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="common.MD5" %>
<%@ page import="common.conn" %>
<%@ page import="dal.User" %>
<%@ page import="model.UserInfo" %>

<html>

<head>
<title>注册</title>
<style type="text/css">
	body {
		background-color: gray;
		font-family: STKaiti;
		color: white;
		font-size: 20px;
	}
	#biao {
		height: 500px;
		width: 400px;
		margin: 100px;
		background-image: url(../images/bj8.JPG);
		position: relative;  
	}
	#content {
		position: absolute;
		height: 250px;
		width: 350px;
		text-align: right;
		left: 50%;             
		top: 50%; 
		margin-left: -175px;   /*设置为宽度(width:450px;)的一半*/             
		margin-top: -125px; 
	} 
</style>
</head>

<body>
<%
   String regex = "^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,10}$";	
   request.setCharacterEncoding("utf-8");
   String action=request.getParameter("action");
   String name=request.getParameter("name");
   String pass=request.getParameter("pass");
   String phone=request.getParameter("phone");
   String email=request.getParameter("email");
   UserInfo info=new UserInfo();
   User user=new User();
   if ("reg".equals(action)) {
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
		   info.setadmin(0);
		   user.insert(info);
		   out.println("<script>alert('注册成功');window.location.href('index.jsp');</script>");
	   }
   }
%>
<div id="content">
    <form id="form1" name="form1" method="post" action="zhuce.jsp?action=reg">
       	<table>
          	<tr> 
          		<td colspan="2" align="center"> <strong>用户注册</strong> 
          		</td> 
          	</tr>
      		<tr> 
      			<td>用户名</td> 
      			<td> <input type="text" name="name" id="name" width="500px"/> </td>
          	</tr>
           	<tr> 
           		<td>密码</td> 
           		<td> <input type="text" name="pass" id="pass" width="500px" /> </td>
      		</tr>
           	<tr>
				<td>电话</td>
              	<td> <input type="text" name="phone" id="phone" width="500px"/> </td>
           	</tr>
           	<tr> 
           		<td>邮箱</td>
                <td> <input type="text" name="email" id="email" width="500px"/> </td>
           	</tr>
      	</table>
       	<table>
       		<tr>
           		<td > <input type="submit" name="button" id="button" value="注册"/> </td>
               	<td> <input type="reset" name="button2" id="button2" value="重置"/> </td>
          	</tr>
          </table>
	</form>
</div>
</body>

</html>