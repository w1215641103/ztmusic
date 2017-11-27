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
<<<<<<< HEAD
.player{
		display:-webkit-flex;					/* 固定 */
		-webkit-justify-content:center;			/* 水平居中 */
		-webkit-align-items:center;			/* 垂直居中 */
		display:flex;					/* 固定 */
		justify-content:center;			/* 水平居中 */
		align-items:center;			/* 垂直居中 */
=======
.player{			
		 display: -webkit-flex;
>>>>>>> 8c008af79c236cb53fe15f12ccb191f267c1cfa7
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
		height:7px;
		background-color:#181818;
		border-top:1px solid #0b0b0b;
		border-bottom:1px solid #4a4a4a;
		border-radius:6px;
<<<<<<< HEAD
		margin:0px 1%;
=======
>>>>>>> 8c008af79c236cb53fe15f12ccb191f267c1cfa7
		position:relative;
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
		border:5px solid #f3f3f6;
		background-color:rgba(255,255,255,0);
		-webkit-border-radius:50%;
		-moz-border-radius:50%;
		border-radius:50%;
		top:-6px;
		left:-6px;
		}
.w{		
		margin-right:1%;
		width:100px;
		height:5px;
		background-color:#181818;
		border-top:1px solid #0b0b0b;
		border-bottom:1px solid #4a4a4a;
		border-radius:6px;
		position:relative;
}
.w > .w1{
		width:8px;
		height:100%;
		background-color:#c70c0c;
		border-radius:6px;
		position:absolute;
}
.w > .w2{
		position:absolute;
		width:6px;
		height:6px;
		border:3px solid #f3f3f6;
		background-color:rgba(255,255,255,0);
		-webkit-border-radius:50%;
		-moz-border-radius:50%;
		border-radius:50%;
		top:-4px;
		left:-4px;
<<<<<<< HEAD
}
.q{		
		display:flex;					/* 固定 */
		justify-content:space-around;			/* 水平居中 */
		align-items:center;			/* 垂直居中 */
		margin-right:0.5%;
		border:1px;
		width:5%;
		height:40px;
		display:-webkit-flex;					/* 固定 */
		-webkit-justify-content:space-around;			/* 水平居中 */
		-webkit-align-items:center;			/* 垂直居中 */
}
/* .r{
		display:-webkit-flex;
		border:1px;
		width:10%;
		height:40px;
		background-color:blue;
		-wekit-justify-content:center;
		-wekit-align-items:center;
} */ 
.x{
		border:1px;
		width:5%;
		height:40px;
		background-color:green;
}
=======
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
>>>>>>> 8c008af79c236cb53fe15f12ccb191f267c1cfa7
</style>
</head>
<body>
<div class="player">
<<<<<<< HEAD
	<div class="q">
		<a href=" " ><img src="images/04.png" width="25px" height="25px" alt="bofang"></a>
		<a href=" " ><img src="images/01.png" width="30px" height="30px" alt="bofang"></a>
		<a href=" " ><img src="images/05.png" width="25px" height="25px" alt="bofang"></a>
		<!-- <img src="images/07.png"width="30px" height="30px"> -->
=======
<div class="a">
<a href=" " ><img src="images/04.png" width="30px" height="30px" alt="bofang"></a>
<a href=" " ><img src="images/01.png" width="30px" height="30px" alt="bofang"></a>
<a href=" " ><img src="images/05.png" width="30px" height="30px" alt="bofang"></a>
</div>
	<div class="slider">								<!-- 滑动条 -->
	<div class="buffer"></div>					<!-- 缓冲进度条 -->
	<div class="processor"></div>			<!-- 播放进度条 -->
	<div class="controller"></div>			<!-- 控制点 -->
>>>>>>> 8c008af79c236cb53fe15f12ccb191f267c1cfa7
	</div>
		<div class="w">
			<div class="w1"></div>
			<div class="w2"></div>
		</div>
		<div class="slider">
			<div class="processor"></div>
			<div class="controller"></div>
		</div>
	<div class="x"> </div>
</div>	
</body>
</html>