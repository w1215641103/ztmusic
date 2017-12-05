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
<link rel="stylesheet" href="css/denglu.css">
<link rel="stylesheet" href="assets/css/style.css">
<script src="js/goto.js"></script>
<script src='js/jquery.js'></script>
<style>
*{padding:0;margin:0;}
</style>
</head>

<body onload="gth('index.jsp')">
	<div id="a"><div id="ap"></div></div>
	<div id="music">
		<input id="inpt" type="text" placeholder="请输入歌曲名/歌手"/>
		<button id="butt" onclick="wb()">搜索</button>
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
		<div class=""></div>
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
</html>