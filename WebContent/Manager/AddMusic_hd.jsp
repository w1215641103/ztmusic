<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加音乐</title>
<style>
        .h_t_k{
            float:left;
            width:16%;
            height:50px;
            font-size: 20px;
            padding-top:10px;
            text-align: center;
        }
        .h_center{
            position: absolute;
            top:100px;
            width:100%;
            text-align: center;
            font-size: 30px;
        }
        .l_table{
        	width:300px;
        	margin:0 auto;
        }
    </style>
</head>
<body>             <!-- kl是块的LOGO，t_l是a标签的属性，现未css美化，留着备用 -->
	<div class="h_t_k"><a href="">添加专辑</a></div>
 	<div class="h_t_k"><a class="h_t_l" href=" ">添加音乐</a></div>
   	<div class="h_t_k"><a class="h_t_l" href=" ">删除音乐</a></div>
 	<div class="h_t_k"><a class="h_t_l" href=" ">添加管理员</a></div>
  	<div class="h_t_k"><a class="h_t_l" href=" ">删除管理员</a></div>
  	<div class="h_t_k"><a class="h_t_l" href=" ">删除用户</a></div>
    <div class="h_center">
    <form id="form1" name="form1" method="post" action="AddMusic_hd.jsp?action=add_hd">
    	<table class="l_table">
     		<tr>
	   		<td>音乐名称</td>
			<td> <input type="text" name="name" id="name" width="500px"/> </td>
       		</tr>
     		<tr>
      		<td>作者</td>
      		<td> <input type="text" name="writer" id="writer" width="500px"/> </td>
        	</tr>
        	<tr>
      		<td>类型</td>
      		<td> <input type="text" name="writer" id="writer" width="500px"/> </td>
        	</tr>
        	<tr>
        	<td>专辑</td>
        	<td> <input type=""/></td>
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