<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dal.Adminr" %>
<%@ page import="common.conn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员登录</title>
<style>
	.bw{
		text-align: center;
		background-color: #fff;
		border-radius: 20px;
		width: 300px;
		height: 350px;
		position: absolute;
		left: 50%;
		top: 50%;
		transform: translate(-50%,-50%);
	}
</style>
</head>

<body>
<%
   request.setCharacterEncoding("utf-8");		//设置页面编码
   String action=request.getParameter("action");		//页面响应
   Adminr adminr = new Adminr();
   String name = request.getParameter("name");
   String pass = request.getParameter("pass");
   if("dl_hd".equals(action))		//登录
   {
	   if (name.equals("") || pass.equals("")) {
		   out.println("<script>alert('用户名或密码不能为空');</script>");
	   } else if (!(adminr.isExist(name, pass)))
		   out.println("<script>alert('用户名或密码错误');</script>");
	   else {
		   out.println("<script>window.location.href='main_hd.jsp';</script>");		//转到index
	   }
   }
%>
	<div class="bw">
		<form id="form1" name="form1" method="post" action="index_hd.jsp?action=dl_hd">
          	<table>
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
</body>
</html>