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
<title>音乐专辑</title>
<link rel="stylesheet" href="css/yetou.css">
<link rel="stylesheet" href="css/shouye.css">
<link rel="stylesheet" href="css/denglu.css">
<link rel="stylesheet" href="css/tj.css">
<script src="js/goto.js"></script>
<script src='js/jquery.js'></script>
 <style>
            .w_m{
                width:800px;
                height:1500px;
                position: absolute;
                left:450px;
                top:100px;
                border:2px solid black;
                background-color:gray;
            }
            .w_l{
                width:200px;
                height:100%;
                position: fixed;
                top:100px;
                left:250px;
                border:0.1px solid gold;
                background-color: #30ff74;
            }
            .w_t{
                width:98%;
                height:350px;
/*                 border:2px solid black;
                background-color:lawngreen; */
                position: absolute;
                top:1%;
                left:0.7%;
            }
            .w_b{
                width:98%;
                height:1000px;
                /*border:2px solid black;*/
                background-color:white;
                position: absolute;
                top:420px;
                left:1%;
            }
            .w_bt{
                width:98%;
                height:50px;
                border-top:2px solid #0E6920;
                background-color:white;
                display:block;
                margin-top:10px;
                margin-left:10px;

            }
            .w_bb{
                width:90%;
                height:35px;
                display:block;
                border:0.1px solid balck;
                background-color: #8f9388;
                margin-top:5px;
                margin-left:5%;
            }
            .w_q{
                margin-left:25px;
                margin-top:25px;
                width:300px;
                height:300px;
                border:1px solid black;
                background-color:black;
                border-radius:50%;
            }
            .w_tt{
                margin-left:25px;
                margin-top:25px;
                max-width:250px;
                min-width:250px;
                height:250px;
                border:0px;
                border-radius:50%;
            }
            .w_text{
                position:absolute;
                top:100px;
                right:10px;
                width:400px;
                height:300px;
                border:0.1px solid black;

            }
            .w_j{

            }
            .w_g{

            }
            .w_zj{
                line-height: 200%;
                font-size: 25px;
                margin:20px  20px;
            }
            .w_z{
                font-size:20px;
            }
            .w_time{
                width:200px;
                height:30px;
                border:1px solid black;
                position: absolute;
                bottom:60px;
                right:10px;
            }
            .w_gs{
                width:200px;
                height:30px;
                border:1px solid black;
                position: absolute;
                bottom:10px;
                right:10px;
            }
            .w_bt1{
                float:left;
                width:12.3%;
                height:50px;
                text-align: center;
                line-height: 200%;
                border-right:1px solid lightgray;
                border-left:1px solid lightgray;
                border-bottom:1px solid lightgray;
            }
            .w_bt2{
                float:left;
                width:28%;
                height:50px;
                text-align: center;
                line-height: 350%;
                border-right:1px solid lightgray;
                border-bottom:1px solid lightgray;
            }
            .w_bt3{
                float:left;
                width:20%;
                height:50px;
                text-align: center;
                line-height: 350%;
                border-right:1px solid lightgray;
                border-bottom:1px solid lightgray;
            }
            .w_bt4{
                float:left;
                width: 39%;
                height:50px;
                text-align: center;
                line-height: 350%;
                border-right:1px solid lightgray;
                border-bottom:1px solid lightgray;
            }
            .btz{
                font-family: "Microsoft JhengHei";
                font-size: 25px;
            }
            .bb1{
                float:left;
                width:9.2%;
                height:35px;
                text-align: center;
                line-height: 200%;
                border:1px solid lightgray;
            }
            .bb2{
                float:left;
                width:18.9%;
                height:35px;
                border-top:1px solid lightgray;
                border-bottom:1px solid lightgray;
                border-right:1px solid lightgray;
                line-height: 200%;
                white-space: nowrap;	/* 禁止换行 */
				overflow: hidden;		/* 超出隐藏 */
            }
            .bb3{
                float:left;
                width:21.7%;
                height:35px;
                border-top:1px solid lightgray;
                border-bottom:1px solid lightgray;
                border-right:1px solid lightgray;
                text-align: center;
                line-height: 200%;
            }
            .bb4{
                float:left;
                width:37.8%;
                height:35px;
                border-top:1px solid lightgray;
                border-bottom:1px solid lightgray;
                border-right:1px solid lightgray;
                text-align: center;
                line-height: 200%;
            }
            .bbx{
                float:left;
                width:5%;
                height:35px;
                border-top:1px solid lightgray;
                border-bottom:1px solid lightgray;
                text-align: center;
                line-height: 200%;
            }
            .bbz{

            }
            .w_lx{
                position:absolute;
                width:100%;
                top:50px;
                height:35px;
                border:1px solid black;
                background-color:gold;
            }
            .d1{
                position: absolute;
                top:2px;
                left:5px;
                line-height: 230%;
            }
            .d2{
                position: absolute;
                top:2px;
                right:15px;
                line-height: 230%;
            }
            .la{
                line-height: 230%;
            }
/*            .bbb{
                float:left;
                margin-left:10px;
                margin-top:8px;
                width:20px;
                height:20px;
                border:1px solid black;
                border-radius:50%;
                background-color:gold;
            }*/
            .bbf{
                float:left;
                margin-top:7px;
                margin-left:5px;
                margin-right:20px;
                text-align: center;
                width:20px;
                height:20px;
                border:1px solid black;
                border-radius:50%;
                background-color:gold;
            }
            .w_la{
                position: absolute;
                top:150px;
                width:100%;
                height:35px;
                border:1px solid black;
                background-color:gold;
            }
        </style>
</head>
<body onload="gth('special.jsp')" class="big">
<%
	request.setCharacterEncoding("utf-8");		//设置页面编码
	List<MusicInfo> musiclist = new ArrayList<MusicInfo>();
	Music n_music = new Music();
	musiclist = n_music.getMusicList("陈奕迅国语精选");
%>
	<div id="a"><div id="ap"></div></div>
        <!--        可动部分整体      -->
    <div class="w_m">
             <!--       主体的上半部分           -->
        <div class="w_t">
            <!--    黑色的圆圈+图片构成的圆形体  -->
            <div class="w_q"><img class="w_tt" src=<%="music/"+musiclist.get(0).getalbum()+".png" %> ></div>
            <!--       文本信息显示读取的区域    -->
            <div class="w_text">
                <!--此处的<div>作为块级元素是为了换行，当然也可以用display，但这样更方便-->
                    <div class="w_j">
                        <!--    j就是专辑，zj也是专辑，z是字的意思     -->
                        <a class="w_zj"><b>专辑：</b></a>
                        <a class="w_z" href=" "><%=musiclist.get(0).getalbum() %></a>
                    </div>
                        <!--    g是歌，剩下两个同上      -->
                    <div class="w_g">
                        <a class="w_zj"><b>歌手：</b></a>
                        <a class="w_z" href=" "><%=musiclist.get(0).getwriter() %></a>
                    </div>
                <!--    以上都是需要调用数据库的信息  -->
            </div>
        </div>
            <!--    w_b就是我的表格的意思    -->
        <div class="w_b">
            <!--    w_bt就是表头的意思       -->
            <div class="w_bt">
                <!--表头的3个分类，第一个是空的，为了显示123456...序号而留出来的-->
                <div class="w_bt1"></div>
                <div class="w_bt2"><a class="btz"><b>歌曲标题</b></a></div>
                <div class="w_bt3"><a class="btz"><b>歌手</b></a></div>
                <div class="w_bt4"><a class="btz"><b>专辑</b></a></div>
            </div>
                <!--    w_bb就是表格里面的每一行  -->
<%			for (int i = 0; i < musiclist.size(); i++) { %>
            	<div class="w_bb">
               		<div class="bb1"><a><%=i+1 %></a></div>
               		<div class="bbx"><a class="bbz" href=" ">♡</a></div>
                	<a class="bbf" onclick=<%="m_play("+i+")" %> >▶</a>
                	<div class="bb2"><a class="bbz" onclick=<%="go_music("+i+")" %> id=<%="music_"+i %>><%=musiclist.get(i).getname() %></a></div>
                	<div class="bb3"><a class="bbz" ><%=musiclist.get(i).getwriter() %></a></div>
                	<div class="bb4"><a class="bbz" id=<%="album_"+i %>><%=musiclist.get(i).getalbum() %></a></div>
            	</div>
<%			} %>           
        </div>
    </div>
        <!--    左边那一坨固定栏    -->
    <div class="w_l">
        <div class="w_lx">
            <div class="lx_d">
                <a class="d1">我喜欢的</a>
                <!--<a calss="d3">♡</a>-->
                <a class="d2">❤</a>
            </div>
        </div>
        <div class="w_la">
            <a class="la">我收藏的歌单</a>
        </div>
    </div>
</body>
<script>
	function m_play(i) {
		var music_name = document.getElementById("music_"+i).innerText;
		var music_album = document.getElementById("album_"+i).innerText;
		var music_url = "music/"+music_album+"/"+music_name+".mp3";
		window.parent.frames["music_play"].window.loadMusic(music_url);
	}
	function go_music(i) {
		var album_name = document.getElementById("album_"+i).innerText;
		var music_name = document.getElementById("music_"+i).innerText;
		setCookie("album", album_name);
		setCookie("music", music_name);
		window.location.href="music.jsp";
	}
</script>
</html>