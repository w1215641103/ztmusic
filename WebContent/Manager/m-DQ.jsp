<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="common.cookie" %>
<%@ page import="dal.Music" %>
<%@ page import="model.MusicInfo" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>音乐大全</title>
<link rel="stylesheet" href="css/yetou.css">
<link rel="stylesheet" href="css/yqf.css">
<link rel="stylesheet" href="css/denglu.css">
<link rel="stylesheet" href="css/m-DQ.css">
<script src="js/goto.js"></script>
<script src='js/jquery.js'></script>
<style>
.b_6{
        	position:absolute;
        	top:130px;
            border: 1px solid black;
            background-color:#232323;
            width:100%;
            box-shadow:0px 0px 10px 5px rgba(0,0,0,0.24), 0px 0px 1px 1px rgba(0,0,0,0.19);
        }
        .b_6 table{
            border-collapse: collapse;
        }
         .b_6 table, .b_6 td, .b_6 th
        {
            border:0.1px solid gainsboro;
        }
         .b_6 th{
            background: linear-gradient(white,gainsboro);
        }
         .b_6 table
        {
            width:100%;
        }
         .b_6 th
        {
            height:30px;
            text-align:left;
        }
</style>
</head>
<body onload="gth('m-DQ.jsp')">
<%	request.setCharacterEncoding("utf-8");		//设置页面编码
	String music_class = "";
	String music_find = "";
	music_class = cookie.readCookie(request, "m_class");
	music_find = cookie.readCookie(request, "wb");
	Music music_z = new Music();
	List<MusicInfo> musiclist = new ArrayList<MusicInfo>();
	if (music_find.equals("")) {
		if (!music_class.equals(""))
			musiclist = music_z.getMusicList_c(music_class);
	} else {
		musiclist = music_z.getMusicList(music_find);
	}
	cookie.writeCookie(response, "wb", "");
	cookie.writeCookie(response, "m_class", "");
%>
<div id="a"><div id="ap"></div></div>
<div class="z-dq">

<!-- 	<div class="dq-head">
		<a href=" ">摇滚</a>
		<a href=" ">爵士</a>
		<a href=" ">流行</a>
		<a href=" ">古典</a>
	</div> -->
	<div class="dq-gs">
		<p>歌曲分类</p>
		<div class="dq-tx">
			<a onclick="set_s('摇滚')" href="m-DQ.jsp"><img src="images/yin1.jpg"></a>
			<span>摇滚</span>
		</div>
		
		<div class="dq-tx">
			<a onclick="set_s('纯音乐')" href="m-DQ.jsp"><img src="images/yin1.jpg"></a>
			<span>纯音乐</span>
		</div>
		<div class="dq-tx">
			<a onclick="set_s('流行')" href="m-DQ.jsp"><img src="images/yin1.jpg"></a>
			<span>流行</span>
		</div>
		<div class="dq-tx">
			<a onclick="set_s('古典')" href="m-DQ.jsp"><img src="images/yin1.jpg"></a>
			<span>古典</span>
		</div>
	</div>
	<!-- ---------------------- -->
	<div class="dq-center">
		<!-------------------------------  -->
			<div class="dq_search">
				<form>
					<input id="text_i" type="text" placeholder="请输入歌名/作者...">
					<button onclick="set_find()" type="submit">搜索</button>
				</form>
			</div>
		
		<div class="b_6">
     		<table>
       		 <tr>
            	<th>歌曲标题</th>
            	<th>分类</th>
            	<th>歌手</th>
            	<th>专辑</th>
       		 </tr>
<%			for (int i = 0; i < musiclist.size(); i++) { %>
        	<tr>
            	<td><a id=<%="music_"+i %> onclick=<%="go_music("+i+")" %> href="music.jsp"><%=musiclist.get(i).getname() %></a></td>
            	<td><a><%=musiclist.get(i).getstyle() %></a></td>
            	<td><a href="z-DQ.jsp"><%=musiclist.get(i).getwriter() %></a></td>
            	<td><a id=<%="album_"+i %> onclick=<%="go_album("+i+")" %> href="special.jsp"><%=musiclist.get(i).getalbum() %></a></td>
        	</tr>
<%			} %>
    		</table>

		</div>
	</div>
</div>
</body>
<script>
	function go_music(z) {
		var music_name = document.getElementById("music_"+z).innerText;
		setCookie("music", music_name);
	}
	function go_album(z) {
		var album_name = document.getElementById("album_"+z).innerText;
		setCookie("click_n", album_name);
	}
	function set_s(s) {
		setCookie("m_class", s);
	}
	function set_find() {
		var f = document.getElementById("text_i").value;
		setCookie("wb", f);
		window.location.href="m-DQ.jsp";
	}
</script>
</html>