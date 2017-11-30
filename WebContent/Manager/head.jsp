<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ZT.音乐网</title>
<link rel="stylesheet" href="css/yetou.css">
<link rel="stylesheet" href="css/style.css" media="screen"/>
<style>
*{padding:0;margin:0;}
</style>
</head>
<body onload="xwidth()" onresize="xwidth()">
		<div id="ap">
			<div class="a_0"><a href="head.jsp">ZT.music</a></div>
			<div class="a_1"><a onclick="smusic()">音乐首页</a></div>
			<div class="a_1"><a onclick="fmusic()">发现音乐</a></div>
			<div class="a_1"><a onclick="mymusic()">我的音乐</a></div>
			<div class="a_1"><a onclick="amusic()">音乐大全</a></div>
			<div class="a_1"><a onclick="">音乐简介</a>
				<div class="a_3">
  					<a class="a_4" href="">登陆</a>
  					<a class="a_4" href="zhuce.jsp">注册</a>
  				</div>
			</div>
				<section class="webdesigntuts-workshop">
					<form action="" method="">		    
						<input type="search" placeholder="请输入搜索内容">		    	
						<button>搜索</button>
					</form>
				</section>
  					<script src='jquery.js'></script>
  			<div class="a_2">
  				<button class="buttonz" style="vertical-align:middle"><span>登陆</span></button>
  				<div class="a_3">
  					<a class="a_4" href="denglu.jsp">登陆</a>
  					<a class="a_4" href="zhuce.jsp">注册</a>
  				</div>
  			</div>		
		</div>
		<div id="music">
			<button class="cda" onclick="loadXMLDoc()">修改</button>
		</div>
		<script src="js/goto.js"></script>
		
</body>
</html>