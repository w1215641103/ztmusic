<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="common.cookie" %>
<%@ page import="dal.Music" %>
<%@ page import="model.MusicInfo" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>音乐界面</title>
<link rel="stylesheet" href="css/music.css" media="screen"/>
<link rel="stylesheet" href="css/yetou.css">
<link rel="stylesheet" href="css/yqf.css">
<link rel="stylesheet" href="css/denglu.css">
<script src="js/goto.js"></script>
</head>

<body onload="gth('music.jsp'), load_l()" class="big">  <!--你需要在每个DIV里面加东西然后用class="v_*"的形式布局css不要随便使用全局，定义css全部按v_*的格式来-->
<%
	request.setCharacterEncoding("utf-8");		//设置页面编码
	String music_name = cookie.readCookie(request, "music");
	Music n_music = new Music();
	MusicInfo musicinfo = new MusicInfo();
	musicinfo = n_music.getMusic(music_name);
	String album_name = musicinfo.getalbum();
	String writer_name = musicinfo.getwriter();
	cookie.writeCookie(response, "album", album_name);
%>
    <div id="a"><div id="ap"></div></div>
                    <!--        v_1是全局         -->
    <div class="v_1">
                    <!--   v_s是中间那根竖线    -->
        <div class="v_s"></div>
                    <!--    v_x是图片布局       -->
        <div class="v_x">
        	<img src=<%="music/"+album_name+".png" %>>
        </div>
                    <!--    v_a是文本区域      -->
        <div class="v_a">
        	<span><b>歌曲名：<%=music_name %></b></span>
        	<span><b>歌手： <%=writer_name %></b></span>
        </div>
                    <!--    v_j是歌词上面那根线   -->
        <div class="v_j"></div>
<!--v_t是歌词区域  ps:歌词区域的高度可以直接删除，删除之后高度会随着文本的高度而减少-->
        <div class="v_t" id="lyric_s"></div>
    </div>
</body>
<script>
	function load_l() {
		var xmlhttp;
		var lyric_get_music = getCookie("music");
		var lyric_get_album = getCookie("album");
		var lyric = "music/"+lyric_get_album+"/"+lyric_get_music+".txt";
		/* alert(lyric); */
		xmlhttp = new XMLHttpRequest();
		xmlhttp.onreadystatechange=function() {
			if (xmlhttp.readyState==4 && xmlhttp.status==200) {
				document.getElementById("lyric_s").innerText=xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", lyric);
		xmlhttp.send();
	}
</script>
</html>