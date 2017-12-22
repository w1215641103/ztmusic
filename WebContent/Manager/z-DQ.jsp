<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="common.cookie" %>
<%@ page import="dal.Music" %>
<%@ page import="model.MusicInfo" %>
<%@ page import="model.AlbumInfo" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>发现音乐</title>
<link rel="stylesheet" href="css/yetou.css">
<link rel="stylesheet" href="css/yqf.css">
<link rel="stylesheet" href="css/denglu.css">
<link rel="stylesheet" href="css/z-DQ.css">
	<script src="js/goto.js"></script>
</head>
<body onload="gth('z-DQ.jsp')">
<%	request.setCharacterEncoding("utf-8");		//设置页面编码
	List<MusicInfo> musiclist = new ArrayList<MusicInfo>();
	Music music = new Music();
%>
<div id="a"><div id="ap"></div></div>

<div class="z-fl">
	<button class="z-fl1"><a href="m-DQ.jsp">摇滚</a></button>
	<button class="z-fl2"><a href="m-DQ.jsp">流行</a></button>
	<button class="z-fl3"><a href="m-DQ.jsp">古典</a></button>
	<button class="z-fl4"><a href="m-DQ.jsp">纯音乐</a></button>
</div>
<div class="z-dq">
    <!-- 	<div class="dq-head">
            <a href=" ">摇滚</a>
            <a href=" ">爵士</a>
            <a href=" ">流行</a>
            <a href=" ">古典</a>
        </div> -->
    <div class="dq-gs">
        <p>入驻歌手</p>
        <div class="dq-tx" >
            <a href="#guoyu"><img src="music/陈奕迅国语精选/歌手-陈奕迅.jpg"></a>
            <span>陈奕迅</span>
        </div>

        <div class="dq-tx" >
            <a href="#chuanyue"><img src="music/穿越三部曲/歌手-张杰.jpg"></a>
            <span>张杰</span>
        </div>
        <div class="dq-tx" >
            <a href="#du"><img src="music/渡/歌手-薛之谦.jpg"></a>
            <span>薛之谦</span>
        </div>
        <div class="dq-tx">
            <a href="#gezi"><img src="music/鸽子/歌手-杨宗纬.jpg"></a>
            <span>杨宗纬</span>
        </div>
        <div class="dq-tx" >
            <a href=" #qingnian"><img src="music/青年晚报/歌手-许嵩.jpg"></a>
            <span>许嵩</span>
        </div>
        <div class="dq-tx" >
            <a href="#tiansheng "><img src="music/天生李荣浩/歌手-李荣浩.jpg"></a>
            <span>李荣浩</span>
        </div>
        <div class="dq-tx" >
            <a href="#diqiu "><img src="music/新地球/歌手-林俊杰.jpg"></a>
            <span>林俊杰</span>
        </div>
        <div class="dq-tx" >
            <a href="#yilei "><img src="music/异类/歌手-华晨宇.jpg"></a>
            <span>华晨宇</span>
        </div>
        <div class="dq-tx" >
            <a href="#zhoujielun "><img src="music/周杰伦/歌手-周杰伦.jpg"></a>
            <span>周杰伦</span>
        </div>
        <div class="dq-tx" >
            <a href="#man "><img src="music/Music-Man/歌手-王力宏.jpg"></a>
            <span>王力宏</span>
        </div>
    </div>
    <!-- ---------------------- -->
    <div class="dq-center">
        <!-------------------------------  -->
        <div class="dq-tou" id="guoyu" >
            <a onclick="set_a_n('陈奕迅国语精选')" href="special.jsp" ><img class="dq-tou-tu" src="music/陈奕迅国语精选.png"></a>
            <span>陈奕迅国语精选</span>
            <div class="dq-x"></div>
<%			musiclist = music.getMusicList_a("陈奕迅国语精选");
			for (int i = 0; i < musiclist.size(); i++) {%>
            <div class="dq-zj">
                <a onclick=<%="set_m_n('"+musiclist.get(i).getname()+"')" %> href="music.jsp "><img src=<%="music/"+musiclist.get(i).getalbum()+"/"+musiclist.get(i).getname()+".jpg" %>></a>
                <p><a onclick=<%="set_m_n('"+musiclist.get(i).getname()+"')" %> href="music.jsp"><%=musiclist.get(i).getname() %></a></p>
            </div>
<%			} %>
        </div>
        <!-- ----------------------------- -->
        		<div class="dq-tou" id="chuanyue">
                    <a onclick="set_a_n('穿越三部曲')" href="special.jsp "><img class="dq-tou-tu" src="music/穿越三部曲.png"></a>
                    <span >穿越三部曲</span>
                    <div class=" dq-x"></div>
<%			musiclist = music.getMusicList_a("穿越三部曲");
			for (int i = 0; i < musiclist.size(); i++) {%>
            <div class="dq-zj">
                <a onclick=<%="set_m_n('"+musiclist.get(i).getname()+"')" %> href="music.jsp "><img src=<%="music/"+musiclist.get(i).getalbum()+"/"+musiclist.get(i).getname()+".jpg" %>></a>
                <p><a onclick=<%="set_m_n('"+musiclist.get(i).getname()+"')" %> href="music.jsp"><%=musiclist.get(i).getname() %></a></p>
            </div>
<%			} %>
                </div>
                <!-- ----------------------------- -->
                <div class="dq-tou" id="du">
                    <a onclick="set_a_n('渡')" href=" special.jsp"><img class="dq-tou-tu" src="music/渡.png"></a>
                    <span>渡</span>
                    <div class=" dq-x"></div>
<%			musiclist = music.getMusicList_a("渡");
			for (int i = 0; i < musiclist.size(); i++) {%>
            <div class="dq-zj">
                <a onclick=<%="set_m_n('"+musiclist.get(i).getname()+"')" %> href="music.jsp "><img src=<%="music/"+musiclist.get(i).getalbum()+"/"+musiclist.get(i).getname()+".jpg" %>></a>
                <p><a onclick=<%="set_m_n('"+musiclist.get(i).getname()+"')" %> href="music.jsp"><%=musiclist.get(i).getname() %></a></p>
            </div>
<%			} %>
				</div>
				<!-- ----------------------------- -->
                <div class="dq-tou" id="gezi">
                    <a onclick="set_a_n('鸽子')" href="special.jsp "><img class="dq-tou-tu" src="music/鸽子.png"></a>
                    <span>鸽子</span>
                    <div class=" dq-x"></div>
<%			musiclist = music.getMusicList_a("鸽子");
			for (int i = 0; i < musiclist.size(); i++) {%>
            <div class="dq-zj">
                <a onclick=<%="set_m_n('"+musiclist.get(i).getname()+"')" %> href="music.jsp "><img src=<%="music/"+musiclist.get(i).getalbum()+"/"+musiclist.get(i).getname()+".jpg" %>></a>
                <p><a onclick=<%="set_m_n('"+musiclist.get(i).getname()+"')" %> href="music.jsp"><%=musiclist.get(i).getname() %></a></p>
            </div>
<%			} %>
                </div>
         <!-------------------------------  -->
        <div class="dq-tou" id="qingnian">
            <a onclick="set_a_n('青年晚报')" href="special.jsp "><img class="dq-tou-tu" src="music/青年晚报.png"></a>
            <span>青年晚报</span>
            <div class="dq-x"></div>
<%			musiclist = music.getMusicList_a("青年晚报");
			for (int i = 0; i < musiclist.size(); i++) {%>
            <div class="dq-zj">
                <a onclick=<%="set_m_n('"+musiclist.get(i).getname()+"')" %> href="music.jsp "><img src=<%="music/"+musiclist.get(i).getalbum()+"/"+musiclist.get(i).getname()+".jpg" %>></a>
                <p><a onclick=<%="set_m_n('"+musiclist.get(i).getname()+"')" %> href="music.jsp"><%=musiclist.get(i).getname() %></a></p>
            </div>
<%			} %>
        </div>
        <!-- ----------------------------- -->
        		<div class="dq-tou" id="tiansheng">
                    <a onclick="set_a_n('天生李荣浩')" href="special.jsp "><img class="dq-tou-tu" src="music/天生李荣浩.png"></a>
                    <span>天生李荣浩</span>
                    <div class=" dq-x"></div>
<%			musiclist = music.getMusicList_a("天生李荣浩");
			for (int i = 0; i < musiclist.size(); i++) {%>
            <div class="dq-zj">
                <a onclick=<%="set_m_n('"+musiclist.get(i).getname()+"')" %> href="music.jsp "><img src=<%="music/"+musiclist.get(i).getalbum()+"/"+musiclist.get(i).getname()+".jpg" %>></a>
                <p><a onclick=<%="set_m_n('"+musiclist.get(i).getname()+"')" %> href="music.jsp"><%=musiclist.get(i).getname() %></a></p>
            </div>
<%			} %>
                </div>
                <div class="dq-tou" id="diqiu">
                    <a onclick="set_a_n('新地球')" href=" special.jsp"><img class="dq-tou-tu" src="music/新地球.png"></a>
                    <span>新地球</span>
                    <div class=" dq-x"></div>
<%			musiclist = music.getMusicList_a("新地球");
			for (int i = 0; i < musiclist.size(); i++) {%>
            <div class="dq-zj">
                <a onclick=<%="set_m_n('"+musiclist.get(i).getname()+"')" %> href="music.jsp "><img src=<%="music/"+musiclist.get(i).getalbum()+"/"+musiclist.get(i).getname()+".jpg" %>></a>
                <p><a onclick=<%="set_m_n('"+musiclist.get(i).getname()+"')" %> href="music.jsp"><%=musiclist.get(i).getname() %></a></p>
            </div>
<%			} %>
				</div>
				<!-- ----------------------------- -->
                <div class="dq-tou" id="yilei">
                    <a onclick="set_a_n('异类')" href="special.jsp "><img class="dq-tou-tu" src="music/异类.png"></a>
                    <span>异类</span>
                    <div class=" dq-x"></div>
 <%			musiclist = music.getMusicList_a("异类");
			for (int i = 0; i < musiclist.size(); i++) {%>
            <div class="dq-zj">
                <a onclick=<%="set_m_n('"+musiclist.get(i).getname()+"')" %> href="music.jsp "><img src=<%="music/"+musiclist.get(i).getalbum()+"/"+musiclist.get(i).getname()+".jpg" %>></a>
                <p><a onclick=<%="set_m_n('"+musiclist.get(i).getname()+"')" %> href="music.jsp"><%=musiclist.get(i).getname() %></a></p>
            </div>
<%			} %>
                </div>
         <!-------------------------------  -->
        <div class="dq-tou" id="zhoujielun">
            <a onclick="set_a_n('周杰伦')" href="special.jsp "><img class="dq-tou-tu" src="music/周杰伦.png"></a>
            <span>周杰伦摩天伦</span>
            <div class="dq-x"></div>
            <%			musiclist = music.getMusicList_a("周杰伦");
			for (int i = 0; i < musiclist.size(); i++) {%>
            <div class="dq-zj">
                <a onclick=<%="set_m_n('"+musiclist.get(i).getname()+"')" %> href="music.jsp "><img src=<%="music/"+musiclist.get(i).getalbum()+"/"+musiclist.get(i).getname()+".jpg" %>></a>
                <p><a onclick=<%="set_m_n('"+musiclist.get(i).getname()+"')" %> href="music.jsp"><%=musiclist.get(i).getname() %></a></p>
            </div>
<%			} %>
        </div>
                <!-- ----------------------------- -->
                <div class="dq-tou" id="man">
                    <a onclick="set_a_n('Music-Man')" href=" special.jsp"><img class="dq-tou-tu" src="music/Music-Man.png"></a>
                    <span>Music-Man</span>
                    <div class=" dq-x"></div>
                     <%			musiclist = music.getMusicList_a("Music-Man");
			for (int i = 0; i < musiclist.size(); i++) {%>
            <div class="dq-zj">
                <a onclick=<%="set_m_n('"+musiclist.get(i).getname()+"')" %> href="music.jsp "><img src=<%="music/"+musiclist.get(i).getalbum()+"/"+musiclist.get(i).getname()+".jpg" %>></a>
                <p><a onclick=<%="set_m_n('"+musiclist.get(i).getname()+"')" %> href="music.jsp"><%=musiclist.get(i).getname() %></a></p>
            </div>
<%			} %>
               </div>
        <!-- ----------------------------- -->
    </div>
</div>
</body>
<script>
	function set_a_n(album_n) {
		setCookie("click_n", album_n);
	}
	
	function set_m_n(music_n) {
		setCookie("music", music_n);
	}
</script>
</html>