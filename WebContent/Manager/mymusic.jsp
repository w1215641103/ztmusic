<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="common.cookie" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>我的音乐</title>
	<link rel="stylesheet" href="css/bd.css" media="screen"/>
	<link rel="stylesheet" href="css/yetou.css">
	<link rel="stylesheet" href="css/yqf.css">
	<link rel="stylesheet" href="css/denglu.css">
	<link rel="stylesheet" href="css/mymusic.css">
	<script src="js/goto.js"></script>
    <style>
		*{margin:0;padding:0;}
    </style>
</head>

<body onload="gth('mymusic.jsp')">
<div id="a"><div id="ap"></div></div>
<div class="mymusic">
	<div class="b_8">
		<img src="images/gd.jpg" class="b_8tu">
	</div>
    <div class="b_2">
		<div class="dropdown">
    		<span>收藏的专辑</span>
    		<hr>
    		<div class="dropdown-content">
       	 		<a href=" ">民谣100首</a>
    		</div>
    		<div class="dropdown-content">
       	 		<a href=" ">牛仔很忙</a>
    		</div>
	   </div>
	</div>
	<div class="b_3">
		<img src="music/异类.png" alt="头像">
		<div class="b_4x"><span>class</span></div>
	</div>
	<div class="b_7">
		<div class="b_5">收藏的歌曲</div> 
		<div class="b_search">
			<form>
				<input type="text" placeholder="请输入歌名/作者...">
				<button type="submit">搜索</button>
			</form>
		</div>
	</div>
<div class="b_6">
    <table>
        <tr>
            <th>歌曲标题</th>
            <th>时长</th>
            <th>歌手</th>
            <th>专辑</th>
        </tr>
        <tr>
            <td>你还要我怎样</td>
            <td>04:10</td>
            <td>薛之谦</td>
            <td>你还要我怎样</td>
        </tr>
        <tr>
            <td>功夫熊猫</td>
            <td>04:00</td>
            <td>周杰伦</td>
            <td>新专辑</td>
        </tr>
        <tr>
            <td>你好吗</td>
            <td>04:05</td>
            <td>周杰伦</td>
            <td>你好吗</td>
        </tr>
        <tr>
            <td>我不配</td>
            <td>04:25</td>
            <td>周杰伦</td>
            <td>魔杰座</td>
        </tr>
    </table>

</div>
</div>
</body>
</html>