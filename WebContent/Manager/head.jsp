<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ZT.音乐网</title>
<link rel="stylesheet" href="css/denglu.css">
<link rel="stylesheet" href="css/yetou.css">
<link rel="stylesheet" href="css/style.css" media="screen"/>
<link rel="stylesheet" href="assets/css/style.css" media="screen"/>
<style>
*{padding:0;margin:0;}
</style>
<script src="js/goto.js"></script>
</head>
<body onload="xwidth()">
	<div id="a">
		<div id="ap">
			<div class="a_0"><a href="head.jsp">ZT.music</a></div>
			<div class="a_1"><a onclick="smusic()">音乐首页</a></div>
			<div class="a_1"><a onclick="fmusic()">发现音乐</a></div>
			<div class="a_1"><a onclick="mymusic()">我的音乐</a></div>
			<div class="a_1"><a onclick="amusic()">音乐大全</a></div>
			<div class="a_1"><a onclick="jmusic()">音乐简介</a></div>
				<section class="webdesigntuts-workshop">
					<form action="" method="">		    
						<input type="search" placeholder="请输入歌曲名/歌手">		    	
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
			
<!-- 			<div class="a_5">
				<div class="a_6"><a onclick="mymusic()"><img class="a_6t" src="images/logo.png"></a></div>
				<div class="a_7"><a onclick="mymusic()">user</a></div> 
				<div class="a_8">
 					<a class="a_9" href="denglu.jsp">个人中心</a>
  					<a class="a_9" href="zhuce.jsp">我的音乐</a>
  				</div>
			</div> -->
			
		</div>
	</div>
	
		<div id="music">
			<div class="slider">
                <div class="slider-container">
                    <div class="slider-wrapper">
                        <div class="slide"> <img class="st" src="assets/img/img5.jpg" alt="jQuery Slider with CSS Transitions"> </div>
                        <div class="slide"> <img class="st" src="assets/img/img2.jpg" alt="jQuery Slider with CSS Transitions"> </div>
                        <div class="slide"> <img class="st" src="assets/img/img3.jpg" alt="jQuery Slider with CSS Transitions"> </div>
                        <div class="slide"> <img class="st" src="assets/img/img4.jpg" alt="jQuery Slider with CSS Transitions"> </div>
                    </div>
                </div>
            </div>
         <div class="">
         
         
         </div>
            <script src="assets/js/jquery-1.8.3.min.js"></script>
            <script src="assets/js/slider.js"></script>
            <script type="text/javascript">
                (function() {
                    Slider.init({
                        target: $('.slider'),
                        time: 6000
                    });
                })();
            </script>
		</div>
			
</body>
<script>

</script>
</html>