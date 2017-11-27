<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
*{padding:o;margin:0;}
body{
		background-color:#cccccc;	
}
.player{			
		 display: -webkit-flex;
         width:100%;
         height:40px;
         background-color:#2d2d2d;
         border-top:1px solid #4a4a4a;
         border-bottom:1px solid #4a4a4a;
         position:fixed;
         bottom:0%;
         -webkit-justify-content: center;
         -webkit-align-items: center;
        }
.slider{
		width:600px;
		height:10px;
		border-style:solid;
		border-color:red;
		background-color:#181818;
		border-top:1px solid #0b0b0b;
		border-bottom:1px solid #4a4a4a;
		border-radius:6px;
		position:relative;
		}
.slider > .buffer{
		width:60%;
		height:100%;
		background-color:#535353;
		border-radius:6px;
		position:absolute;
		}
.slider > .processor{
		width:8px;
		height:100%;
		background-color:#c70c0c;
		border-radius:6px;
		position:absolute;
		}
.slider > .controller{
		position:absolute;
		width:6px;
		height:6px;
		border:10px solid #f3f3f6;
		background-color:rgba(255,255,255,0);
		-webkit-border-radius:50%;
		-moz-border-radius:50%;
		border-radius:50%;
		top:-8px;
		left:-8px;
		}
	.a{
		display: -webkit-flex;
		-webkit-justify-content: center;
		border:1px;
		border-style:solid;
		border-color:red;
		width:150px;
		margin:10px 10px;
	} 
</style>
</head>
<body>
<audio id="music"></audio>
<div class="player">
<div class="a">
	<img src="images/04.jpg" width="30px" height="30px" alt="bofang">
	<img src="images/01.jpg" width="30px" height="30px" alt="bofang">
	<img src="images/05.jpg" width="30px" height="30px" alt="bofang">
</div>
	<div class="slider">								<!-- 滑动条 -->
	<div class="buffer"></div>					<!-- 缓冲进度条 -->
	<div class="processor"></div>			<!-- 播放进度条 -->
	<div class="controller"></div>			<!-- 控制点 -->
	</div>
</div>
</body>
</html>