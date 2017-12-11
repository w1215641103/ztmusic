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
<script src="js/goto.js"></script>
<script src='js/jquery.js'></script>
<style>
*{padding:0;margin:0;}
</style>

</head>

<body onload="gth('index.jsp')" class="big">
	<div id="a"><div id="ap"></div></div>
	        <!--    轮播的div,在center的上面所以加了个top  -->
    <div id="e_center-top">
    	<img id="lun_img" src="images/lun1.jpg"/>
<!--     	<img id="lun_img" src="images/lun2.jpg"/>
    	<img id="lun_img" src="images/lun3.jpg"/>
    	<img id="lun_img" src="images/lun4.jpg"/>
    	<img id="lun_img" src="images/lun5.jpg"/>
    	<img id="lun_img" src="images/lun6.jpg"/> -->
    	<ul id="lun_list">
    		<li class="list_tou">1</li>
    		<li class="list_li">1</li>
    		<li class="list_li">2</li>
    		<li class="list_li">3</li>
    		<li class="list_li">4</li>
    		<li class="list_li">5</li>
    		<li class="list_li">6</li>
    	</ul>
    	<div id="leftbt"><</div>
    	<div id="rightbt">></div>
    </div>
    <script>
  //获取所有的li
    var jsLis = document.getElementsByclassName("list_li");
    //获取所有img节点
    var jsImg = document.getElementById("lun_img");
    //当前显示图片
    var currentpage = 0;


    //背景div属性为：e_conter_top
    var jsTop = document.getElementById("e_conter_top");

    //左右按钮
    var jsLeftBtn = document.getElementById("leftbt");
    var jsRightBtn = document.getElementById("rightbt")


    //第一个小圆点初始化成白色！
    jsLis[0].style.backgroundColor = "white";

    //创建定时播放图片 -----
    var pTimer = setInterval(func,1000);
    function func(){
    	currentPage++;
    	if(currentPage ==6){
    		
    		currentPage =0;
    	}
    	//修改图片
    	jsImg.src = "images/"+currentPage+".jpg";

    	//清空所有小圆点的颜色
    	for (var i = 0; i < jsLis.length; i++){
    		jsLis[i].style.backgroundColor="#272726";
    	}

    	//修改小圆点的颜色
    	jsLis[currentPage].style.backgroundColor = "white";
    }


    //给e_center_top添加鼠标进入事件，Top只是我定义的一个属性
    jsTop.addEventListener("mousemove",function(){
    	
    	//停止定时器 即销毁 所以下方还需要再启动一次
    	clearInterval(pTimer);
    	
    	jsLeftBtn.style.display = "block";
    	jsRightBtn.style.display = "block";
    },false);


    jsTop.addEventListener("mouseout",function(){
    	//启动定时器  -----
    	pTimer = setInterval(func,1000);
    	
    	jsLeftBtn.style.display = "none";
    	jsRightBtn.style.display = "none";
    },false);



    //左右按钮
    jsLeftBtn.addEventListener("mouseover", function(){
    	jsLeftBtn.style.backgroundColor = "rgba(0,0,0,0.6)";
    },false);
    jsRightBtn.addEventListener("mouseover", function(){
    	jsRightBtn.style.backgroundColir = "rgba(0,0,0,0.6)";
    },false);

    jsLeftBtn.addEventListener("mouseout", function(){
    	jsLeftBtn.style.backgroundColor = "rgba(0,0,0,0.2)";
    },false);
    jsRightBtn.addEventListener("mouseout", function(){
    	jsRightBtn.style.backgroundColor = "rgba(0,0,0,0.2)";
    },false);



    //鼠标移入显示的左边按钮<
    jsLeftBtn.addEventListener("click", function(){
    	currentPage--;
    	if(currentPage == -1){
    		currentPage = 5;
    	}
    	jsImg.src = "images/"+currentPage+".jpg";
    	//清空所有小圆点颜色
    	for(var i = 0; i < jsLis.length; i++){
    		jsLis[i].style.backgroundColor = "#272726";
    		
    	}
    	//修改小圆点的颜色
    	jsLis[currentPage].style.backgroundColor = "white";
    },false);

    //右边按钮>
    jsRightBtn.addEventListener("click", function(){
    	currentPage++;
    	if(currentPage ==6){
    		currentPage = 0;
    	}
    	jsImg.src = "images/"+currentPage+".jpg";
    	for(var i = 0; i <jsLis.length; i++){
    		jsLis[currentPage].style.backgroundColor = "#272726";
    	}
    	jsLis[currentPage].style.backgroundColor = "white";
    },false);


    //每一个小圆点都添加鼠标移入事件
    for (var i = 0; i < jsLis.length; i++){
    	jsLis[i].onmouseover =function(){
    	//当前元素节点的文本节点
    		
    	//在事件函数中。this代表对应的元素节点
    	currentPage = parseInt(this.innerHTML) - 1;
    	jsImg.src = "images/"+currentPage+".jpg";
    	for(var i = 0; i < jsLis.length; i++){
    		jsLis[i].style.backgroundColor = "#272726";
    	}
    	jsLis[currentPage].style.backgroundColor = "white";
    	}
    }
    </script>
	<div id="music">
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