<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="common.cookie"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<!-- 调用 -->
<link rel="stylesheet" href="css/yetou.css">
<link rel="stylesheet" href="css/shouye.css">
<link rel="stylesheet" href="css/denglu.css">
<link rel="stylesheet" href="css/tj.css">
<link rel="stylesheet" href="css/lunbo.css">
<link rel="stylesheet" href="css/yqf.css">
<script src="js/goto.js"></script>
<style>
*{padding:0;margin:0;}
</style>

</head>

<body onload="gth('index.jsp')" class="big">
	<div id="a"><div id="ap"></div></div>
	        <!--    轮播的div,在center的上面所以加了个top  -->
	        <div class="e_center_top_bj"></div>
    <div id="e_center-top">
    	<div id="photos" class="play">
        <img src="images/lun1.jpg" >
        <img src="images/lun3.jpg" >
        <img src="images/lun4.jpg" >
        <img src="images/lun5.jpg" >
    </div>
    </div>
	<div id="music" >
        <!--    中间所有的容器起名为e_center           -->
    <div class="e_center">
        <!--    上面的那张图片 方形                    -->
        <div class="e_top">
            <img src="images/tt.jpg" class="e_top_tu">
        </div>
        <!--     四个喇叭                              -->
        <img src="images/laba1.jpg" class="e_top_tu1">
        <img src="images/laba1.jpg" class="e_top_tu2">
        <img src="images/laba1.jpg" class="e_top_tu3">
        <img src="images/laba1.jpg" class="e_top_tu4">
        <!--     导航栏的头部                          -->
        <div class="e_t">
            <!--       分割线 ------------------------------------------  套用       -->
            <div class="e_3t_h"></div>
            <a class="e_3t_bt" href="z-DQ.jsp">音乐推荐</a>
            <div class="e_t_text"><a href="m-DQ.jsp " >摇滚</a></div>
            <div class="e_t_text"><a href=" m-DQ.jsp" >流行</a></div>
            <div class="e_t_text"><a href=" m-DQ.jsp" >古典</a></div>
            <div class="e_t_text"><a href=" m-DQ.jsp" >纯音乐</a></div>
            <div class="e_3t_text"><a href=" z-DQ.jsp">更多>></a></div>
            <!--       分割线 ------------------------------------------  套用       -->
        </div>
        <!--     导航栏下面                             -->
        <div class="e_t2">
            	<div class="e_tu">
            	<a onclick="set_music('你的背包')" href="music.jsp "><img src="music/陈奕迅国语精选/你的背包.jpg" width="100%" height="80%"></a>
            	<p><a onclick="set_music('你的背包')" href="music.jsp ">你的背包</a></p>
            </div>
            	<div class="e_tu">
            	<a onclick="set_music('穿越人海')" href="music.jsp "><img src="music/穿越三部曲/穿越人海.jpg" width="100%" height="80%"></a>
            	<p><a onclick="set_music('穿越人海')" href="music.jsp ">穿越人海</a></p>
            </div>
            	<div class="e_tu">
            	<a onclick="set_music('动物世界')" href="music.jsp "><img src="music/渡/动物世界.jpg" width="100%" height="80%"></a>
            	<p><a onclick="set_music('动物世界')" href="music.jsp ">动物世界</a></p>
            </div>
            	<div class="e_tu">
            	<a onclick="set_music('鸽子')" href="music.jsp "><img src="music/鸽子/鸽子.jpg" width="100%" height="80%"></a>
            	<p><a onclick="set_music('鸽子')" href="music.jsp ">鸽子</a></p>
            </div>
            	<div class="e_tu">
            	<a onclick="set_music('幻胖')" href="music.jsp "><img src="music/青年晚报/幻胖.jpg" width="100%" height="80%"></a>
            	<p><a onclick="set_music('幻胖')" href="music.jsp ">幻胖</a></p>
            </div>
            	<div class="e_tu">
            	<a onclick="set_music('老街')" href="music.jsp "><img src="music/天生李荣浩/老街.jpg" width="100%" height="80%"></a>
            	<p><a onclick="set_music('老街')" href="music.jsp ">老街</a></p>
            </div>
        </div>

        <div class="e_2t">
            <!--       分割线 ------------------------------------------  套用       -->
            <div class="e_3t_h"></div>
            <a class="e_3t_bt" href="z-DQ.jsp">推荐专辑</a>
            <div class="e_3t_text"><a href="z-DQ.jsp">更多>></a></div>
            <!--       分割线 ------------------------------------------  套用       -->
        </div>
        <div class="e_2t2">
        	<div class="e_tu">
            	<a onclick="set_c_n('陈奕迅国语精选')" href="special.jsp"><img src="music/陈奕迅国语精选.png" width="100%" height="80%"></a>
            	<p><a onclick="set_c_n('陈奕迅国语精选')" href="special.jsp">陈奕迅国语精选</a></p>
            </div>
           	<div class="e_tu">
            	<a onclick="set_c_n('穿越三部曲')" href="special.jsp"><img src="music/穿越三部曲.png" width="100%" height="80%"></a>
            	<p><a onclick="set_c_n('穿越三部曲')" href="special.jsp">穿越三部曲</a></p>
            </div>
            	<div class="e_tu">
            	<a onclick="set_c_n('渡')" href="special.jsp"><img src="music/渡.png" width="100%" height="80%"></a>
            	<p><a onclick="set_c_n('渡')" href="special.jsp">渡</a></p>
            </div>
            	<div class="e_tu">
            	<a onclick="set_c_n('鸽子')" href="special.jsp"><img src="music/鸽子.png" width="100%" height="80%"></a>
            	<p><a onclick="set_c_n('鸽子')" href="special.jsp"">鸽子</a></p>
            </div>
            	<div class="e_tu">
            	<a onclick="set_c_n('青年晚报')" href="special.jsp"><img src="music/青年晚报.png" width="100%" height="80%"></a>
            	<p><a onclick="set_c_n('青年晚报')" href="special.jsp">青年晚报</a></p>
            </div>
            	<div class="e_tu">
            	<a onclick="set_c_n('天生李荣浩')" href="special.jsp"><img src="music/天生李荣浩.png" width="100%" height="80%"></a>
            	<p><a onclick="set_c_n('天生李荣浩')" href="special.jsp">天生李荣浩</a></p>
            </div>
        </div>
        <!--    t就是头的意思，这是第三个导航栏                                           -->
        <div class="e_3t">
            <!--    h的意思就是我自己画一个图标出来！！！！！    上面的都是调用的这个同款 -->
            <div class="e_3t_h"></div>
            <a class="e_3t_bt">最新音乐</a>
            <div class="e_3t_text"><a href="z-DQ.jsp">更多>></a></div>
            <!--       分割线 ------------------------------------------  套用            -->
        </div>
            <div class="e_3t3">         <!--   这个是第三个，是表格的父级                 -->
                
                <div class="e_3t3_b">   <!--每一个  e_3t3_b  都是一个块级元素，他们是表格内容的父级-->
                    <div class="e_3t3_a"><a>1</a></div>
                    <a onclick="set_music('暧昧')" href="music.jsp"><img class="e_3t3_tu" src="music/渡/暧昧.jpg"></a>
                    <div class="e_3t3_text">
                        <p><a onclick="set_music('暧昧')" href="music.jsp"><h4><b>暧昧</b></h4></a></p>
                        <p><a href="z-DQ.jsp">薛之谦</a></p>
                    </div>
               </div>
			   <!---------------------------------------------->
			   <div class="e_3t3_b">   <!--每一个  e_3t3_b  都是一个块级元素，他们是表格内容的父级-->
                    <div class="e_3t3_a"><a>2</a></div>
                    <a onclick="set_music('鸽子')" href="music.jsp"><img class="e_3t3_tu" src="music/鸽子/鸽子.jpg"></a>
                    <div class="e_3t3_text">
                        <p><a onclick="set_music('鸽子')" href="music.jsp "><h4><b>鸽子</b></h4></a></p>
                        <p><a href="z-DQ.jsp ">杨宗纬</a></p>
                    </div>
               </div>
			   <!---------------------------------------------->
			   <div class="e_3t3_b">   <!--每一个  e_3t3_b  都是一个块级元素，他们是表格内容的父级-->
                    <div class="e_3t3_a"><a>3</a></div>
                   		<a onclick="set_music('摄影艺术')" href="music.jsp"><img class="e_3t3_tu" src="music/青年晚报/摄影艺术.jpg"></a> 
                    <div class="e_3t3_text">
                        <p><a onclick="set_music('摄影艺术')" href="music.jsp"><h4><b>摄影艺术</b></h4></a></p>
                        <p><a href="z-DQ.jsp">许嵩</a></p>
                    </div>
               </div>
			   <!---------------------------------------------->
			   <div class="e_3t3_b">   <!--每一个  e_3t3_b  都是一个块级元素，他们是表格内容的父级-->
                    <div class="e_3t3_a"><a>4</a></div>
                   		<a onclick="set_music('作曲家')" href="music.jsp"><img class="e_3t3_tu" src="music/天生李荣浩/作曲家.jpg"></a> 
                    <div class="e_3t3_text">
                        <p><a onclick="set_music('作曲家')" href="music.jsp"><h4><b>作曲家</b></h4></a></p>
                        <p><a href="z-DQ.jsp">李荣浩</a></p>
                    </div>
               </div>
			   <!---------------------------------------------->
			   <div class="e_3t3_b">   <!--每一个  e_3t3_b  都是一个块级元素，他们是表格内容的父级-->
                    <div class="e_3t3_a"><a>5</a></div>
                  <a onclick="set_music('黑键')" href="music.jsp"><img class="e_3t3_tu" src="music/新地球/黑键.jpg"></a>  
                    <div class="e_3t3_text">
                        <p><a onclick="set_music('黑键')" href="music.jsp"><h4><b>黑键</b></h4></a></p>
                        <p><a href="z-DQ.jsp">林俊杰</a></p>
                    </div>
               </div>
			   <!---------------------------------------------->
			   <div class="e_3t3_b">   <!--每一个  e_3t3_b  都是一个块级元素，他们是表格内容的父级-->
                    <div class="e_3t3_a"><a>6</a></div>
                  <a onclick="set_music('反义词')" href="music.jsp"><img class="e_3t3_tu" src="music/异类/反义词.jpg"></a>   
                    <div class="e_3t3_text">
                        <p><a onclick="set_music('反义词')" href="music.jsp"><h4><b>反义词</b></h4></a></p>
                        <p><a href="z-DQ.jsp">华晨宇</a></p>
                    </div>
               </div>
			   <!---------------------------------------------->
            </div>
            
            <div class="yinfu"></div>
			<div class="e_tou">
				<a href="z-MQ.jsp ">入驻歌手</a>
			</div>
			
       <!--     l是列的意思，e_l代表左边的列的布局框    -->
        <div class="e_l">
            <!--e_lb是一整行表！！！！！！！-->
            <div class="e_lb">
                <img onclick="set_c_n('陈奕迅国语精选')" class="e_lt2" src="music/陈奕迅国语精选/歌手-陈奕迅.jpg">
                <div class="e_lt3">
                    <p><a href="z-DQ.jsp"><b>陈奕迅</b></a></p>
                    <p><a onclick="set_c_n('陈奕迅国语精选')" href="special.jsp">国语精选</a></p>
                </div>
            </div>
            <!---------------------------------------------------------------->
            <!--e_lb是一整行表！！！！！！！-->
            <div class="e_lb">
                <img onclick="set_c_n('穿越三部曲')" class="e_lt2" src="music/穿越三部曲.png">
                <div class="e_lt3">
                    <p><a href="z-DQ.jsp"><b>张杰</b></a></p>
                    <p><a onclick="set_c_n('穿越三部曲')" href="special.jsp">穿越三部曲</a></p>
                </div>
            </div>
            <!---------------------------------------------------------------->
             <!---------------------------------------------------------------->
            <!--e_lb是一整行表！！！！！！！-->
            <div class="e_lb">
                <img onclick="set_c_n('渡')" class="e_lt2" src="music/渡.png">
                <div class="e_lt3">
                    <p><a href="z-DQ.jsp"><b>薛之谦</b></a></p>
                    <p><a onclick="set_c_n('渡')" href="special.jsp">渡</a></p>
                </div>
            </div>
             <!---------------------------------------------------------------->
        </div>
    </div>
	</div>
</body>
<script>
	function set_c_n(click_name) {
		setCookie("click_n", click_name);
	}
	function set_music(m_name) {
		setCookie("music", m_name);
	}
</script>
</html>