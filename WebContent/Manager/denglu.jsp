<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="common.MD5" %>
<%@ page import="common.conn" %>
<%@ page import="dal.User" %>
<%@ page import="model.UserInfo" %>
<%@ page import="common.cookie" %>
<html>
<head>
<title>登录</title>
</head>
<body>
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
		   out.println("<script>alert('登录成功');window.location.href('index.jsp');</script>");		//转到index
	   }
   }
%>
<div id="content">
    <form id="form1" name="form1" method="post" action="denglu.jsp?action=dl">
          <table style = (width:100)  border="1">
                <tr>
                    <td>用户名</td>
                    <td>
                        <input type="text" name="name" id="name" width="500px"/>
                    </td>
                </tr>
                <tr>
                    <td>密码</td>
                    <td>
                        <input type="password" name="pass" id="pass" width="500px"/>
                    </td>
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