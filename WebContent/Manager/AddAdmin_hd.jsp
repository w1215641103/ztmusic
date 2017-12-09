<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dal.Adminr" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <style>
        .h_t_k{
            float:left;
            width:20%;
            height:50px;
            font-size: 20px;
            padding-top:10px;
            text-align: center;
        }
        .h_center{
            position: absolute;
            top:200px;
            width:100%;
        }
        .h_center1{
        	position: absolute;
            top:100px;
            width:100%;
            text-align: center;
            text-align: center;
            font-size: 30px;
        }
        .l_table{
        	width:300px;
        	margin:auto;
        }
    </style>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");		//设置页面编码
	String action=request.getParameter("action");		//页面响应
	String name = "", pass1 = "", pass2 = "";
	Adminr adminr = new Adminr();
	name = request.getParameter("name");
	pass1 = request.getParameter("pass1");
	pass2 = request.getParameter("pass2");
	if("add_a".equals(action))		
   	{
		if (name.equals("") || pass1.equals("") || pass2.equals("")) {
			out.println("<script>alert('用户名或密码不能为空');</script>");
		} else if (!(pass1.equals(pass2))){
			out.println("<script>alert('两次输入的密码不一致');</script>");
		} else if (adminr.isExist(name)) {
			out.println("<script>alert('注册用户已存在');</script>");
		} else {
			adminr.insert(name, pass1);
			out.println("<script>alert('添加成功')</script>");
		}
	}
%>
	<div class="h_t_k"><a href="AddAlbum_hd.jsp">添加专辑</a></div>
 	<div class="h_t_k"><a href="AddMusic_hd.jsp">添加音乐</a></div>
   	<div class="h_t_k"><a href="removeMA_hd.jsp">删除音乐</a></div>
 	<div class="h_t_k"><a href="AddAdmin_hd.jsp">添加管理员</a></div>
  	<div class="h_t_k"><a href="removeAU_hd.jsp">删除用户</a></div>
    <div class="h_center1">添加管理员</div>
    <div class="h_center">
    <form id="form1" name="form1" method="post" action="AddAdmin_hd.jsp?action=add_a">
    	<table class="l_table">
     		<tr>
	   		<td width="25%">用户名</td>
			<td> <input type="text" name="name" id="name"/> </td>
       		</tr>
        	<tr>
      		<td>密码</td>
      		<td> <input type="password" name="pass1" id="pass1"/> </td>
        	</tr>
        	<tr>
      		<td>再输一次</td>
      		<td> <input type="password" name="pass2" id="pass2"/> </td>
        	</tr>
        	<tr/><tr/><tr/><tr/>
           	<tr>
            <td> <input style="" type="submit" name="button" id="button" value="添加"/> </td>
            <td> <input style="" type="reset" name="button2" id="button2" value="重置"/> </td>
            </tr>
   		</table>
   	</form>
    </div>
</body>
</html>