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
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="css/tj.css">
<script src="js/goto.js"></script>
<script src='js/jquery.js'></script>
<style>
*{padding:0;margin:0;}
</style>
</head>

<body onload="gth('index.jsp')" class="big">
	<div id="a"><div id="ap"></div></div>
	<div id="music">
        <!--    轮播的div,在center的上面所以加了个top  -->
    <div class="e_center-top"></div>
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
            <a class="e_3t_bt">音乐推荐</a>
            <div class="e_t_text"><a href=" " >摇滚</a></div>
            <div class="e_t_text1"><a href=" " >流行</a></div>
            <div class="e_t_text2"><a href=" " >古典</a></div>
            <div class="e_t_text3"><a href=" " >爵士</a></div>
            <div class="e_3t_text"><a href=" ">更多>></a></div>
            <!--       分割线 ------------------------------------------  套用       -->
        </div>
        <!--     导航栏下面                             -->
        <div class="e_t2">
            <img class="e_tu" src="images/aab.jpg" width="120px" height="120px">
            <img class="e_tu" src="images/aab.jpg" width="120px" height="120px">
            <img class="e_tu" src="images/aab.jpg" width="120px" height="120px">
            <img class="e_tu" src="images/aab.jpg" width="120px" height="120px">
            <img class="e_tu" src="images/aab.jpg" width="120px" height="120px">
            <img class="e_tu" src="images/aab.jpg" width="120px" height="120px">

        </div>

        <div class="e_2t">
            <!--       分割线 ------------------------------------------  套用       -->
            <div class="e_3t_h"></div>
            <a class="e_3t_bt">推荐专辑</a>
            <div class="e_3t_text"><a href="special.jsp">更多>></a></div>
            <!--       分割线 ------------------------------------------  套用       -->
        </div>
        <div class="e_2t2">
<!--             <div class="e_tu_cen">
                <img class="e_tu" src="aab.jpg" width="120px" height="120px">
                <a class="e_tu_text">最美歌曲|让你心灵感到震撼的音符</a>
            </div> -->
            <img class="e_tu" src="images/aab.jpg" width="120px" height="120px">
            <img class="e_tu" src="images/aab.jpg" width="120px" height="120px">
            <img class="e_tu" src="images/aab.jpg" width="120px" height="120px">
            <img class="e_tu" src="images/aab.jpg" width="120px" height="120px">
            <img class="e_tu" src="images/aab.jpg" width="120px" height="120px">
            <img class="e_tu" src="images/aab.jpg" width="120px" height="120px">
        </div>
        <!--    t就是头的意思，这是第三个导航栏                                           -->
        <div class="e_3t">
            <!--    h的意思就是我自己画一个图标出来！！！！！    上面的都是调用的这个同款 -->
            <div class="e_3t_h"></div>
            <a class="e_3t_bt">最新音乐</a>
            <div class="e_3t_text"><a href=" ">更多>></a></div>
            <!--       分割线 ------------------------------------------  套用            -->
        </div>
            <div class="e_3t3">         <!--   这个是第三个，是表格的父级                 -->
                <div class="e_3t3_b">   <!--每一个  e_3t3_b  都是一个块级元素，他们是表格内容的父级-->
                    <div class="e_3t3_a"><a>1</a></div>
                    <img class="e_3t3_tu" src="images/aab.jpg">
                    <div class="e_3t3_text">
                        <p><h3><b>歌曲名</b></h3></p>
                        <p>歌手</p>
                    </div>
               </div>
               <div class="e_3t3_b">   <!--每一个  e_3t3_b  都是一个块级元素，他们是表格内容的父级-->
                    <div class="e_3t3_a"><a>2</a></div>
                    <img class="e_3t3_tu" src="images/aab.jpg">
                    <div class="e_3t3_text">
                        <p><h3><b>歌曲名</b></h3></p>
                        <p>歌手</p>
                    </div>
               </div>
               <div class="e_3t3_b">   <!--每一个  e_3t3_b  都是一个块级元素，他们是表格内容的父级-->
                    <div class="e_3t3_a"><a>3</a></div>
                    <img class="e_3t3_tu" src="images/aab.jpg">
                    <div class="e_3t3_text">
                        <p><h3><b>歌曲名</b></h3></p>
                        <p>歌手</p>
                    </div>
               </div>
               <div class="e_3t3_b">   <!--每一个  e_3t3_b  都是一个块级元素，他们是表格内容的父级-->
                    <div class="e_3t3_a"><a>4</a></div>
                    <img class="e_3t3_tu" src="images/aab.jpg">
                    <div class="e_3t3_text">
                        <p><h3><b>歌曲名</b></h3></p>
                        <p>歌手</p>
                    </div>
               </div>
               <div class="e_3t3_b">   <!--每一个  e_3t3_b  都是一个块级元素，他们是表格内容的父级-->
                    <div class="e_3t3_a"><a>5</a></div>
                    <img class="e_3t3_tu" src="images/aab.jpg">
                    <div class="e_3t3_text">
                        <p><h3><b>歌曲名</b></h3></p>
                        <p>歌手</p>
                    </div>
               </div>
               <div class="e_3t3_b">   <!--每一个  e_3t3_b  都是一个块级元素，他们是表格内容的父级-->
                    <div class="e_3t3_a"><a>6</a></div>
                    <img class="e_3t3_tu" src="images/aab.jpg">
                    <div class="e_3t3_text">
                        <p><h3><b>歌曲名</b></h3></p>
                        <p>歌手</p>
                    </div>
               </div>
               <div class="e_3t3_b">   <!--每一个  e_3t3_b  都是一个块级元素，他们是表格内容的父级-->
                    <div class="e_3t3_a"><a>7</a></div>
                    <img class="e_3t3_tu" src="images/aab.jpg">
                    <div class="e_3t3_text">
                        <p><h3><b>歌曲名</b></h3></p>
                        <p>歌手</p>
                    </div>
               </div>
            </div>
       <!--     l是列的意思，e_l代表左边的列的布局框    -->
        <div class="e_l">
            <!--e_lb是一整行表！！！！！！！-->
            <div class="e_lb">
                <img class="e_lt2" src="images/aab.jpg">
                <div class="e_lt3">
                    <p><b>歌手名</b></p>
                    <p>专辑名</p>
                </div>
            </div>
            <!---------------------------------------------------------------->
            <!--e_lb是一整行表！！！！！！！-->
            <div class="e_lb">
                <img class="e_lt2" src="images/aab.jpg">
                <div class="e_lt3">
                    <p><b>歌手名</b></p>
                    <p>专辑名</p>
                </div>
            </div>
            <!---------------------------------------------------------------->
            <!--e_lb是一整行表！！！！！！！-->
            <div class="e_lb">
                <img class="e_lt2" src="images/aab.jpg">
                <div class="e_lt3">
                    <p><b>歌手名</b></p>
                    <p>专辑名</p>
                </div>
            </div>
            <!---------------------------------------------------------------->
            <!--e_lb是一整行表！！！！！！！-->
            <div class="e_lb">
                <img class="e_lt2" src="images/aab.jpg">
                <div class="e_lt3">
                    <p><b>歌手名</b></p>
                    <p>专辑名</p>
                </div>
            </div>
            <!---------------------------------------------------------------->
            <!--e_lb是一整行表！！！！！！！-->
            <div class="e_lb">
                <img class="e_lt2" src="images/aab.jpg">
                <div class="e_lt3">
                    <p><b>歌手名</b></p>
                    <p>专辑名</p>
                </div>
            </div>
            <!---------------------------------------------------------------->
            <!--e_lb是一整行表！！！！！！！-->
            <div class="e_lb">
                <img class="e_lt2" src="images/aab.jpg">
                <div class="e_lt3">
                    <p><b>歌手名</b></p>
                    <p>专辑名</p>
                </div>
            </div>
            <!---------------------------------------------------------------->
            <!--e_lb是一整行表！！！！！！！-->
            <div class="e_lb">
                <img class="e_lt2" src="images/aab.jpg">
                <div class="e_lt3">
                    <p><b>歌手名</b></p>
                    <p>专辑名</p>
                </div>
            </div>
            <!---------------------------------------------------------------->
            <!--e_lb是一整行表！！！！！！！-->
            <div class="e_lb">
                <img class="e_lt2" src="images/aab.jpg">
                <div class="e_lt3">
                    <p><b>歌手名</b></p>
                    <p>专辑名</p>
                </div>
            </div>
            <!---------------------------------------------------------------->
        </div>
    </div>
	</div>
</body>
</html>