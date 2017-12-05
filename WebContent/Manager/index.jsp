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
<link rel="stylesheet" href="css/tj.css">
<script src="js/goto.js"></script>
<script src='js/jquery.js'></script>
<style>
*{padding:0;margin:0;}
</style>
</head>

<body onload="gth()">
	<div id="a">
	<div id="ap"></div>
	</div>
	
	<div id="music">
		<input id="inpt" type="text" placeholder="请输入歌曲名/歌手"/>
		<button id="butt" onclick="setCookie()">搜索</button>
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
		<div class="tj">
			<div class="wq">
				<div class="nq"></div>
			</div>
			<ul class="lb_ul">
					<li class="lb_li"><a class="li1">摇滚</a></li>
					<li class="lb_li"><a class="li2">摇滚</a></li>
					<li class="lb_li"><a class="li2">摇滚</a></li>
					<li class="lb_li"><a class="li2">摇滚</a></li>
					<li class="lb_li"><a class="li2">摇滚</a></li>
					<li class="lb_li"><a class="li3">更多</a></li>
			</ul>
		</div>
		
		<div class="">
			<div class=""></div>
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
	<script>
		function setCookie() {
			var exp = new Date();
			exp.setTime(exp.getTime()+60*60*24);
			document.cookie = "wb="+document.getElementById("inpt").value+";expires="+exp.toGMTString;
			window.location.href="amusic.jsp";
		}
	</script>
</body>
</html>