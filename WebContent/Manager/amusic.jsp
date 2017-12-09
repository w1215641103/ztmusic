<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="common.cookie" %>
<%@ page import="model.MusicInfo" %>
<%@ page import="dal.Music" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>

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

<body onload="gth('amusic.jsp')">
<%	String ss = cookie.readCookie(request, "wb");
	List<MusicInfo> musiclist = new ArrayList<MusicInfo>();
	Music music = new Music();
	musiclist = music.getMusicList(ss);
%>
	<div id="a"><div id="ap"></div></div>
	<div id="music">
		<div class="b0">
			<input id="inpt1" type="text" placeholder="请输入歌曲名/歌手"/>
			<button id="butt" onclick="wb1()">搜索</button>
		</div>
    	<table class="b3">
        	<tr>
        	<th>歌曲标题</th>
            <th>歌手</th>
            <th>专辑</th>
            <th>类型</th>
        	</tr>
<%			if (ss.equals("")) {} else {
				for (int i = 0; i < musiclist.size(); i++) {
%>
        	<tr>
            <td><%=musiclist.get(i).getname() %></td>
            <td></td>
            <td><%=musiclist.get(i).getalbum() %></td>
            <td></td>
        	</tr>
<%				}
			}
			cookie.writeCookie(response, "wb", "");
%>
    	</table>
    	<div class="clear"></div>
    </div>
    <script>
    function ces() {
    	alert(getCookie("wb"));
    }
    </script>
</body>
</html>