<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="common.cookie"%>
<div class="a_0"><a href="index.jsp">ZT.music</a></div>
<div class="a_1"><a href="index.jsp">音乐首页</a></div>
<div class="a_1"><a href="fmusic.jsp">发现音乐</a></div>
<%	String cook1 = cookie.readCookie(request, "name");
		if (cook1.equals("")) {%>
	<div class="a_1"><a target="_top" href="denglu.jsp">我的音乐</a></div>
<%		} else {%>
	<div class="a_1"><a href="mymusic.jsp">我的音乐</a></div>
<%		}%>
<div class="a_1"><a href="amusic.jsp">音乐大全</a></div>
<div class="a_1"><a href="jmusic.jsp">音乐简介</a></div>
<!-- <section class="webdesigntuts-workshop">
	<form action="" method="">
		<input id="inp" type="search" placeholder="请输入歌曲名/歌手"/>
		<button>搜索</button>
	</form>
</section>
<script src='jquery.js'></script> -->
<%	String cook2 = cookie.readCookie(request, "name");
		if (cook2.equals("")) {%>
			<div class="a_2">
  				<button class="buttonz" style="vertical-align:middle"><span>登陆</span></button>
  				<div class="a_3">
  					<a class="a_4"  target="_top" href="denglu.jsp">登陆</a>
  					<a class="a_4"  target="_top" href="zhuce.jsp">注册</a>
  				</div>
			</div> 
<%		} else {%>
 			<div class="a_5">
				<div class="a_6"><a><img class="a_6t" src="images/logo.png"></a></div>
				<div class="a_7"><a><%=cookie.readCookie(request, "name")%></a></div> 
				<div class="a_8">
 					<a class="a_9" href="personal-center.jsp">个人中心</a>
  					<a class="a_9" href="mymusic.jsp">我的音乐</a>
  					<a class="a_9"  target="_top" href="logout.jsp">退出</a>
  				</div>
			</div>
<%		}%>