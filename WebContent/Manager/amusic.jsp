<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="common.cookie" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>音乐大全</title>
<link rel="stylesheet" href="css/ss.css" media="screen"/>
<link rel="stylesheet" href="css/bd.css" media="screen"/>
<link rel="stylesheet" href="css/yetou.css">
<link rel="stylesheet" href="css/denglu.css">
<script src="js/goto.js"></script>
<script src='js/jquery.js'></script>
</head>

<body class="b" onload="gth('amusic.jsp')">
	<div id="a"><div id="ap"></div></div>
	<div id="music">
		<input style="text"/>
    	<button onclick="ces()">搜索</button>
		<div class="b0">
 			<section class="b1">
				<form action="" method="">
					<input type="search" placeholder="请输入歌曲名/歌手"/>		    	
					<button>搜索</button>
				</form>
			</section>
		</div>
    	<table class="b3">
        	<tr>	
        	<th>歌曲标题</th>
            <th>歌手</th>
            <th>专辑</th>
        	</tr>
        	<tr>
            <td>你还要我怎样</td>
            <td>薛之谦</td>
            <td>你还要我怎样</td>
        	</tr>
        	<tr>
            <td>功夫熊猫</td>
            <td>周杰伦</td>
            <td>新专辑</td>
        	</tr>
        	<tr>
            <td>你好吗</td>
            <td>周杰伦</td>
            <td>你好吗</td>
        	</tr>
        	<tr>
            <td>我不配</td>
            <td>周杰伦</td>
            <td>魔杰座</td>
       		</tr>
    	</table>
    	<div class="b4">
     		<button class="b5">上一页</button>
     		<button class="b6">下一页</button>
    	</div>
    </div>
    <script>
    function ces() {
    	alert("success");
    	alert(getCookie("wb"));
    	alert(getCookie("name"));
    }
    </script>
</body>
</html>