<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dal.Music" %>
<%@ page import="dal.Album" %>
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
        	width:480px;
        	margin:auto;
        }
    </style>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");		//设置页面编码
	String action=request.getParameter("action");		//页面响应
	String text1 = "", text2 = "";
	Music rmusic = new Music();
	Album ralbum = new Album();
	text1 = request.getParameter("text1");
	text2 = request.getParameter("text2");
	if("remove_m".equals(action))		
   	{
		if (text1.equals("")) {
			out.println("<script>alert('名称不能为空');</script>");
		} else if (!(rmusic.isMusic(text1))) {
			out.println("<script>alert('此音乐不存在');</script>");
		} else {
			rmusic.deletemusic(text1);
			out.println("<script>alert('删除成功')</script>");
		}
	} else if("remove_a".equals(action)) {
		if (text2.equals("")) {
			out.println("<script>alert('名称不能为空');</script>");
		} else if (!(rmusic.isMusic(text2))) {
			out.println("<script>alert('此专辑不存在');</script>");
		} else {
			ralbum.deletealbum(text2);
			out.println("<script>alert('删除成功')</script>");
		}
	}
%>
	<div class="h_t_k"><a href="AddAlbum_hd.jsp">添加专辑</a></div>
 	<div class="h_t_k"><a href="AddMusic_hd.jsp">添加音乐</a></div>
   	<div class="h_t_k"><a href="removeMA_hd.jsp">删除音乐</a></div>
 	<div class="h_t_k"><a href="AddAdmin_hd.jsp">添加管理员</a></div>
  	<div class="h_t_k"><a href="removeAU_hd.jsp">删除用户</a></div>
    <div class="h_center1">删除音乐</div>
    <div class="h_center">
    <form id="form1" name="form1" method="post" action="removeMA_hd.jsp?action=remove_m">
    	<table class="l_table">
     		<tr>
	   		<td width="25%">请输入音乐名称</td>
			<td> <input type="text" name="text1" id="text1"/></td>
       		</tr>
        	<tr/><tr/><tr/><tr/>
           	<tr>
            <td> <input style="" type="submit" name="button" id="button" value="删除"/> </td>
            <td> <input style="" type="reset" name="button2" id="button2" value="重置"/> </td>
            </tr>
   		</table>
   	</form>
   	<form id="form2" name="form2" method="post" action="removeMA_hd.jsp?action=remove_a">
    	<table class="l_table">
     		<tr>
	   		<td width="25%">请输入专辑名称</td>
			<td> <input type="text" name="text2" id="text2"/> </td>
       		</tr>
        	<tr/><tr/><tr/><tr/>
           	<tr>
            <td> <input style="" type="submit" name="button" id="button" value="删除"/> </td>
            <td> <input style="" type="reset" name="button2" id="button2" value="重置"/> </td>
            </tr>
   		</table>
   	</form>
    </div>
</body>
</html>