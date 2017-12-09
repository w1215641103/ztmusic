<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dal.Music" %>
<%@ page import="model.MusicInfo" %>
<%@ page import="dal.Album" %>
<%@ page import="model.AlbumInfo" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加音乐</title>
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
       	.h_b{
            top:135px;
            width:15px;
            left:60%;
            display: inline-block;
            text-align: center;
        }
        .h_bx{
            background-color: #4CAF50;
            font-size: 10px;
            border: none;
            cursor: pointer;
        }
        .h_b_conter{
            display: none;
            position: absolute;
            min-width: 100px;
            background-color: #8B636C;
        }
        .h_b_conter a{
            color: black;
            text-decoration: none;
            display: block;
            padding: 2px;
        }

        .h_b:hover .h_b_conter{
            display: block;
        }
        .h_b_text{
            font-size: 12px;
        } 
    </style>
</head>
<body>
<%
	List<AlbumInfo> albumlist = new ArrayList<AlbumInfo>();
	Album talbum = new Album();
	albumlist = talbum.getAlbumList();
%>
<%
	request.setCharacterEncoding("utf-8");		//设置页面编码
	String action=request.getParameter("action");		//页面响应
	String name = "", album = "", style = "";
	Music mymusic = new Music();
	MusicInfo musicinfo = new MusicInfo();
	name = request.getParameter("name");
	album = request.getParameter("album");
	style = request.getParameter("style");
	if("add_hd".equals(action))		
   	{
		album = request.getParameter("album");
		if (name.equals("")) {
			out.println("<script>alert('名称不能为空');</script>");
		} else if (mymusic.isMusic(name)) {
			out.println("<script>alert('此音乐已经存在');</script>");
		} else {
			musicinfo.setname(name);
			musicinfo.setalbum(album);
			musicinfo.setstyle(style);
			mymusic.insertMusic(musicinfo);
			out.println("<script>alert('添加成功')</script>");
		}
	}
%>
	<div class="h_t_k"><a href="AddAlbum_hd.jsp">添加专辑</a></div>
 	<div class="h_t_k"><a href="AddMusic_hd.jsp">添加音乐</a></div>
   	<div class="h_t_k"><a href="removeMA_hd.jsp">删除音乐</a></div>
 	<div class="h_t_k"><a href="AddAdmin_hd.jsp">添加管理员</a></div>
  	<div class="h_t_k"><a href="removeAU_hd.jsp">删除用户</a></div>
  	<div class="h_center1">添加音乐</div>
    <div class="h_center">
    <form id="form1" name="form1" method="post" action="AddMusic_hd.jsp?action=add_hd">
    	<table class="l_table">
     		<tr>
	   		<td width="25%">名称</td>
			<td> <input type="text" name="name" id="name"/> </td>
       		</tr>
        	<tr>
      		<td>类型</td>
      		<td> <input type="text" name="style" id="style"/> </td>
        	</tr>
        	<tr>
                <td>专辑</td>
                <td> <input type="text" name="album" id="album"/>
                    <div class="h_b">
                    	<div class="h_bx">=</div>
                      	<div class="h_b_conter">
<%							for (int i = 0; i < albumlist.size(); i++) {
%>
                        		<a class="h_b_text" id=<%=Integer.toString(i)%> onclick="addtext(<%=Integer.toString(i)%>)"><%=albumlist.get(i).getname() %></a>
<%							} %>
                     	</div>
                   	</div>
                </td>
            </tr>
        	<tr/><tr/><tr/><tr/>
           	<tr>
            <td> <input style="" type="submit" name="button" id="button" value="添加"/> </td>
            <td> <input style="" type="reset" name="button2" id="button2" value="重置"/> </td>
            </tr>
   		</table>
   	</form>
    </div>
    <script>
    	function addtext(a) {
    		var z = document.getElementById(a);
    		var text = document.getElementById("album");
    		text.value = z.innerText;
    	}
    </script>
</body>
</html>