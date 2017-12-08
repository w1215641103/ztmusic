<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.AlbumInfo" %>
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
        	width:300px;
        	margin:auto;
        }
    </style>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");		//设置页面编码
	String action=request.getParameter("action");		//页面响应
	String name = "", writer = "";
	Album album = new Album();
	AlbumInfo albuminfo = new AlbumInfo();
	name = request.getParameter("name");
	writer = request.getParameter("writer");
	if("adda_hd".equals(action))		
   	{
		if (name.equals("")) {
			out.println("<script>alert('名称不能为空');</script>");
		} else if (album.isAlbum(name)) {
			out.println("<script>alert('此专辑已经存在');</script>");
		} else {
			albuminfo.setname(name);
			albuminfo.setwriter(writer);
			album.insertAlbum(albuminfo);
			out.println("<script>alert('添加成功')</script>");
		}
	}
%>
	<div class="h_t_k"><a href="AddAlbum_hd.jsp">添加专辑</a></div>
 	<div class="h_t_k"><a href="AddMusic_hd.jsp">添加音乐</a></div>
   	<div class="h_t_k"><a href="removeMA_hd.jsp">删除音乐</a></div>
 	<div class="h_t_k"><a href="AddAdmin_hd.jsp">添加管理员</a></div>
  	<div class="h_t_k"><a href="removeAU_hd.jsp">删除用户</a></div>
  	<div class="h_center1">添加专辑</div>
    <div class="h_center">
    <form id="form1" name="form1" method="post" action="AddAlbum_hd.jsp?action=adda_hd">
    	<table class="l_table">
     		<tr>
	   		<td width="25%">名称</td>
			<td> <input type="text" name="name" id="name"/> </td>
       		</tr>
        	<tr>
      		<td>作者</td>
      		<td> <input type="text" name="writer" id="writer"/> </td>
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